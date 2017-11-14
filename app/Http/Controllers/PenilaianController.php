<?php

namespace App\Http\Controllers;
use App\penilaian;
use Illuminate\Http\Request;
use App\kegiatan;



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
        $penilaian=penilaian::all();
        return view('penilaian_tkemahasiswaan',compact('penilaian'));
    }

    public function lihatpenilaian_tk()
    {
        $penilaian=penilaian::all();
        return view('lihatpenilaian_tk',compact('penilaian'));
    }

    public function index_pd()
    {
        $penilaian=penilaian::all();
        return view('penilaian_pd',compact('penilaian'));
    }

    public function lihatpenilaian_pd()
    {
        $penilaian=penilaian::all();
        return view('lihatpenilaian_pd',compact('penilaian'));
    }

    public function index_mahasiswa()
    {
        $penilaian=penilaian::all();
        return view('penilaian_mahasiswa',compact('penilaian'));
    }

}
