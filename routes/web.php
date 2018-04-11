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

Route::get('/', function () {
    return view('auth.login');
});
Route::get('posts/show','PostController@show');

Auth::routes();

Route::get('/home', 'PostController@show')->name('home');
Route::delete('posts/delete/{post}', 'PostController@destroy')->name('delete');
Route::get('/posts/add', 'PostController@create')->name('add');
Route::post('/posts/add', 'PostController@store')->name('add');