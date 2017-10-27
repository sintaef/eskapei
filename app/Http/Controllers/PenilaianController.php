<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\BidangKegiatanModel;



class PenilaianController extends Controller
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
         $bidangkegiatan = BidangKegiatanModel::all();
        return view('penilaian',compact('bidangkegiatan'));
    }

}
