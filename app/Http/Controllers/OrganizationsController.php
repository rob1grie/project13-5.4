<?php
namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\State;
use App\Organization;
use Illuminate\Support\Facades\Response;

use App\Http\Requests\StoreOrganization;
use App\Member;

class OrganizationsController extends Controller {

    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index() {
        $orgs = Organization::orderBy('name')->get();
        return view('organizations/index', compact('orgs'));
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create() {
        $states = State::pluck('abbreviation', 'abbreviation');

        return view('organizations/create', compact('states'));
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(StoreOrganization $request) {
        $org = new Organization();

        $org->name = $request->input('name');
        $org->address1 = $request->input('address1');
        $org->address2 = $request->input('address2');
        $org->city = $request->input('city');
        $org->state = $request->input('state');
        $org->zipcode = $request->input('zipcode');
        $org->main_phone = $request->input('main_phone');
        $org->alt_phone = $request->input('alt_phone');
        $org->save();

        return \Redirect::route('organizations.show', compact('org'))->with('message', 'Organization Added');
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id) {
        // Show Organization details, along with list of users / Project 13s
        $org = Organization::find($id);
        $members = $org->members;
//        $project13s = $org->project13s;
        return view('organizations/show', compact('org', 'members'));
//        return view('organization/show', compact('org', 'users', 'project13s'));
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id) {
        $states = State::pluck('abbreviation', 'abbreviation');

        $org = Organization::find($id);
        return view('organizations/edit', compact('org', 'states'));
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(StoreOrganization $request, $id) {
        $org = Organization::find($id);

        $org->name = $request->input('name');
        $org->address1 = $request->input('address1');
        $org->address2 = $request->input('address2');
        $org->city = $request->input('city');
        $org->state = $request->input('state');
        $org->zipcode = $request->input('zipcode');
        $org->main_phone = $request->input('main_phone');
        $org->alt_phone = $request->input('alt_phone');

        $org->save();

        return \Redirect::route('organizations.show', compact('org'))->with('message', 'Organization Updated');
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id) {
        //
    }

    public function getOrgMembers($org_id) {

        $members = Member::where('organization_id', '=', $org_id)
                ->orderBy('last_name', 'asc')
                ->orderBy('first_name', 'asc')
                ->get();

        return Response::json($members);
    }

}
