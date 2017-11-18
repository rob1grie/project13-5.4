<?php
namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use App\Project13;
use App\Organization;
use App\Member;

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
        $organizations = Organization::pluck('name', 'id')->sort(function($a, $b) {
            if ($a === $b) {
                return 0;
            }
            return ($a > $b) ? 1 : -1;
        });
        $organizations->prepend('[Select the Organization]', 0);

        return view('project13s/create', compact('organizations'));
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request) {
        //
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

    public function addOrgProject13($id) {

        $organization = Organization::find($id);
        $members = Project13sController::buildMembersSelect(
                        Member::select(DB::raw('concat(last_name, \', \', first_name) as name, id'))
                                ->where('organization_id', '=', $id)
                                ->where('project13_id', '=', NULL)
                                ->orderBy('name', 'asc')
                                ->get()
        );

        return view('organizations/create-p13', compact('organization', 'members'));
    }

    protected function buildMembersSelect($members) {
        // Build an array of name, id elements
        $array = array();
        $array[] = ['id' => 0, 'name' => '[Select]'];
        foreach ($members as $member) {
            $array[] = ['id' => $member->id, 'name' => $member->name];
        }
        return $array;
    }

}
