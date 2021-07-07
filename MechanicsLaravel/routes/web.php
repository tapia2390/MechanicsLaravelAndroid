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

//Route connection Database
Route::get('/testdb', 'HomeController@testDBConnection');

// Route for Mechanics resource type controller
Route::resource('/mechanics', 'MechanicController');


Route::get('/menu', function () {
    return view('menu.index');
});



Route::get('/mercadoPago', function () {
    return view('mercadoPago.index');
});

Route::get('/profile', function () {
    return view('profile.index');
});