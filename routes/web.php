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

Route::get('project13s/{org_id}/addp13', 'Project13sController@addOrgProject13');
Route::resource('project13s', 'Project13sController');

/*
 * Returns JSON data for all Organization members
 */
Route::get('/org-members', function() {
    $org_id = Input::get('org_id');

    $members = App\User::where('organization_id', '=', $org_id)
            ->orderBy('last_name', 'asc')
            ->orderBy('first_name', 'asc')
            ->get();

    return Response::json($members);
});

/*
 * Returns JSON data for Organization members that don't belong to a Project 13
 */
Route::get('/org-members-no-p13', function() {
    $org_id = Input::get('org_id');
    $members = App\Member::where('organization_id', '=', $org_id)
			->where('project13_id', '=', NULL)
            ->orderBy('last_name', 'asc')
            ->orderBy('first_name', 'asc')
            ->get();

    return Response::json($members);
});


Auth::routes();

Route::get('/home', 'HomeController@index')->name('home');
