<?php

use Illuminate\Support\Facades\Route;

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

Route::get('/', function () {
    return view('welcome');
});

Route::get('/user', 'App\Http\Controllers\UsersController@index');
Route::get('addUser', 'App\Http\Controllers\UsersController@addPage');
Route::post('prosesAddUser', 'App\Http\Controllers\UsersController@add');
Route::get('/user/{id}/delete', 'App\Http\Controllers\UsersController@delete');


//route for NC
Route::get('/nc', 'App\Http\Controllers\DummyncController@index');
Route::post('/filternc', 'App\Http\Controllers\DummyncController@chooseNC'); //for nc selected
