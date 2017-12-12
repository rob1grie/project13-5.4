<?php
namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use App\Project13;
use App\Organization;
use App\Member;
use App\Role;

class Project13sController extends Controller {

	/**
	 * Display a listing of the resource.
	 *
	 * @return \Illuminate\Http\Response
	 */
	public function index() {
		$project13s = Project13::with(['organization' => function ($query) {
						$query->orderBy('name');
					}])->get();
		return view('project13s/index', compact('project13s'));
	}

	/**
	 * Show the form for creating a new resource.
	 *
	 * @return \Illuminate\Http\Response
	 */
	public function create() {
		$organizations = Project13sController::getOrganizationSelect();
		
		return view('project13s/create', compact('organizations'));
	}

	/**
	 * Store a newly created resource in storage.
	 *
	 * @param  \Illuminate\Http\Request  $request
	 * @return \Illuminate\Http\Response
	 */
	public function store(Request $request) {
		$members = $this->getProject13Members($request);

		// Get the selected Organization
		$orgId = $request->input('organization');

		// Start transaction
		DB::transaction(function() use ($members, $orgId) {

			$project13Id = $this->saveProject13($orgId);

			$this->updateProject13Members($members, $project13Id);
		});

		// If requesting form contains the hidden field org_p13, it was creating a Project 13 from an Organization's view
		if ($request->input('org_p13')) {
			return redirect()->action('OrganizationsController@show', ['id' => $orgId])->with('message', 'Project 13 Added');
		}
		// Otherwise, the requesting form was creating a Project 13 from the Project 13 index
		else {
			return \Redirect::route('project13s.index')->with('message', 'Project 13 Added');
		}
	}

	/**
	 * Display the specified resource.
	 *
	 * @param  \App\Project13  $project13
	 * @return \Illuminate\Http\Response
	 */
	public function show(Project13 $project13) {
		//
	}

	/**
	 * Show the form for editing the specified resource.
	 *
	 * @param  \App\Project13  $project13
	 * @return \Illuminate\Http\Response
	 */
	public function edit(Project13 $project13) {
		//
	}

	/**
	 * Update the specified resource in storage.
	 *
	 * @param  \Illuminate\Http\Request  $request
	 * @param  \App\Project13  $project13
	 * @return \Illuminate\Http\Response
	 */
	public function update(Request $request, Project13 $project13) {
		//
	}

	/**
	 * Remove the specified resource from storage.
	 *
	 * @param  \App\Project13  $project13
	 * @return \Illuminate\Http\Response
	 */
	public function destroy(Project13 $project13) {
		//
	}

	public function addProject13($from_create, $org_id) {
		$organization = Organization::find($org_id);
		$members = Project13sController::buildMembersSelect(
						Member::select(DB::raw('concat(last_name, \', \', first_name) as name, id'))
								->where('organization_id', '=', $org_id)
								->where('project13_id', '=', NULL)
								->orderBy('name', 'asc')
								->get()
		);

		// $organizations is only used in the form called from the Project 13 'create' view
		$organizations = null;
		if ($from_create) {
			$organizations = Project13sController::getOrganizationSelect();				
		}
//        return view('organizations/blank', compact('from_create', 'organization', 'members', 'organizations'));
		return view('organizations/create-p13', compact('from_create', 'organization', 'members', 'organizations'));
	}

	protected function buildMembersSelect($members) {
		// Build an array of name, id elements
		$array = array();
		foreach ($members as $member) {
			$array[] = ['id' => $member->id, 'name' => $member->name];
		}
		return $array;
	}

	protected function getProject13Members($request) {
		// Build collection of Members with their Role and blue_hat_id
		$allInputs = $request->all();

		$keys = array_keys($allInputs);

		$collectedMembers = [];
		$roleId = '';
		$blueHatId = 0;
		$count = 0;

		// Build array of Members
		foreach ($keys as $key) {
			// Skip this iteration if $key's value is 0 (no member selected)
			if (intval($allInputs[$key]) === 0) {
				continue;
			}

			// Only use $key if it contains 'hat'
			if (strpos($key, 'white_hat') !== FALSE) {
				$roleId = Role::getRoleId('White Hat');
				$blueHatId = 0;
			}
			else if (strpos($key, 'blue_hat') !== FALSE) {
				$roleId = Role::getRoleId('Blue Hat');
				$blueHatId = substr($key, -1, 1);
			}
			else if (strpos($key, 'yellow_hat') !== FALSE) {
				$roleId = Role::getRoleId('Yellow Hat');
				// Blue Hat ID is yellow_hat_1-1
				$blueHatId = substr($key, -3, 1);
			}
			else {
				$roleId = 0;
			}

			if (\strpos($key, 'hat') !== \FALSE) {
				$member = Member::find($allInputs[$key]);
				$member->blue_hat_id = $blueHatId;
				$member->role_id = $roleId;
				$collectedMembers[$count++] = $member;
			}
		}

		return $collectedMembers;
	}

	protected function saveProject13($orgId) {
		// Save the Project13
		$project13Id = 0;

		$project13 = new Project13();
		$project13->organization_id = $orgId;

		if ($project13->save()) {
			$project13Id = $project13->getProject13Id();
		}

		return $project13Id;
	}

	protected function updateProject13Members($members, $project13Id) {
		// Update members for this Project13
		foreach ($members as $member) {
			$member->project13_id = $project13Id;
			$member->update();
		}
	}

	protected static function getOrganizationSelect() {
		$organizations = Organization::pluck('name', 'id')->sort(function($a, $b) {
			if ($a === $b) {
				return 0;
			}
			return ($a > $b) ? 1 : -1;
		});
		$organizations->prepend('[Select the Organization]', 0);
		
		return $organizations;
	}

}
