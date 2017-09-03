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

Route::get('project13s', function () {
    return view('project13s.index');
});

Auth::routes();

Route::get('/home', 'HomeController@index')->name('home');
