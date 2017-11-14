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

//tenaga kemahasiswaan
Route::get('/index_tkemahasiswaan', 'HomeController@index_tkemahasiswaan');
///- kegiatan
Route::get('/kegiatan_tkemahasiswaan', 'KegiatanController@index');
Route::get('/form_kegiatan_tkemahasiswaan', 'KegiatanController@form_kegiatan');
Route::post('/tambah-kegiatan', 'KegiatanController@tambah');
Route::get('/edit-kegiatan/{id}', 'KegiatanController@edit');

///-softskill
Route::get('/softskill_tkemahasiswaan', 'SoftskillController@index');
Route::get('/form_softskill_tkemahasiswaan', 'SoftskillController@form_softskill');
Route::post('/tambah-softskill', 'SoftskillController@tambah');
Route::get('/edit-softskill/{id}', 'SoftskillController@edit');
Route::post('/update-softskill/{id}', 'SoftskillController@update');
Route::get('/delete-softskill/{id_softskill}', 'SoftskillController@delete');
///-profil
Route::get('/profil_tkemahasiswaan', 'ProfilController@index_tkemahasiswaan');
//Route::get('/form_profil_tkemahasiswaan', 'ProfilController@form_profil');
///-penilaian
Route::get('/penilaian_tkemahasiswaan', 'PenilaianController@index');
Route::get('/lihatpenilaian_tk', 'PenilaianController@lihatpenilaian_tk');
//Route::get('/cetak_tkemahasiswaan', 'PenilaianController@index');


//pd3
Route::get('/index_pdiii', 'HomeController@index_pdiii');
Route::get('/kegiatan_pdiii', 'KegiatanController@index_pdiii');
Route::get('/softskill_pdiii', 'SoftskillController@index_pdiii');
///-profil
Route::get('/profil_pdiii', 'ProfilController@index_pdiii');
///-penilaian
Route::get('/penilaian_pdiii', 'PenilaianController@index_pd');
Route::get('/lihatpenilaian_pd', 'PenilaianController@lihatpenilaian_pd');


//mahasiswa
Route::get('/index_mahasiswa', 'HomeController@index_mahasiswa');
Route::get('/kegiatan_mahasiswa', 'KegiatanController@index_mahasiswa');
Route::get('/softskill_mahasiswa', 'SoftskillController@index_mahasiswa');
///-profil
Route::get('/profil_mahasiswa', 'ProfilController@index_mahasiswa');
///-penilaian
Route::get('/penilaian_mahasiswa', 'PenilaianController@index_mahasiswa');
