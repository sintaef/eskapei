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
    return view('welcome');
});

Auth::routes();

Route::get('/home', 'HomeController@index')->name('home');

Route::get('/logout', 'Auth\LoginController@logout');

Route::get('/datakegiatan', 'DataKegiatanController@index')->name('datakegiatan');

Route::get('/penilaian', 'PenilaianController@index')->name('penilaian');

Route::get('/tambahpenilaian', 'TambahPenilaianController@index')->name('tambahpenilaian');

