<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

class HomeController extends Controller
{
    /**
     * Create a new controller instance.
     *
     * @return void
     */
    public function __construct()
    {
        $this->middleware('auth');
    }

    /**
     * Show the application dashboard.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        return view('home');
    }

    public function index_tkemahasiswaan()
    {
        return view('index_tkemahasiswaan');
    }

    public function index_mahasiswa()
    {
        return view('index_mahasiswa');
    }

    public function index_pdiii()
    {
        return view('index_pdiii');
    }
}
