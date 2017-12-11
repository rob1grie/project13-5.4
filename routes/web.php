<?php

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/

Route::get('/', function() {
    return view('welcome');
});

Route::resource('organizations', 'OrganizationsController');

Route::get('members', function () {
    return view('members.index');
});

/*
 * addp13 route takes two required parameters:
 *	from_create: boolean, 
 *		True if route is called from the Project 13 'create' view
 *		False if route is called from an Organization's 'show' view
 *	org_id: integer,
 *		Set to the value of:
 *			The Organization select control if called from the 'create' view
 *		Set to the value of the Organization's ID if called from its 'show' view
 */
Route::get('project13s/addp13/{from_create}/{org_id}', 'Project13sController@addProject13');
Route::resource('project13s', 'Project13sController');

/*
 * Returns JSON data for all Organization members
 */
Route::get('/org-members/{org_id}', 'OrganizationsController@getOrgMembers');

/*
 * Returns JSON data for Organization members that don't belong to a Project 13
 */
Route::get('org-members-no-p13/org_id/{org_id}', function($org_id) {
//    $org_id = Input::get('org_id');
    $members = App\Member::where('organization_id', '=', $org_id)
			->where('project13_id', '=', NULL)
            ->orderBy('last_name', 'asc')
            ->orderBy('first_name', 'asc')
            ->get();

	
    return Response::json($members);
});


Auth::routes();

Route::get('/home', 'HomeController@index')->name('home');
