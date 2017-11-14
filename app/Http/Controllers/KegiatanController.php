<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\kegiatan;



class KegiatanController extends Controller
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
        $bidangkegiatan=kegiatan::all();
        return view('kegiatan_tkemahasiswaan',compact('bidangkegiatan'));
    }
    public function form_kegiatan()
    {
        $bidangkegiatan=kegiatan::all();
        return view('form_kegiatan_tkemahasiswaan',compact('bidangkegiatan'));
    }

    public function tambah(Request $request)
    {
        $tambah=new kegiatan();
        $tambah->bidang = $request->input('bk');
        $tambah->namakegiatan = $request->input('namakegiatan');
        $tambah->save();
        return redirect('kegiatan_tkemahasiswaan');
    }

    public function edit($id)//masih error
    {
        $editnama = kegiatan::find($id);
        return view('edit_kegiatan_tk', compact('editnama'));
    }

    public function update(Request $request ,$id) //gak bisa lanjut karena ambil data nya masih error
    {
        $update = kegiatan::find($id); //  sama dengan nama di model
        $update->namakegiatan = $request->input('namakegiatan');
        $update->update();
        return redirect('kegiatan_tkemahasiswaan');
    }

    public function delete($id) //gak tau ngisi apa
    {

    }

    public function index_pdiii()
    {
        $bidangkegiatan=kegiatan::all();
        return view('kegiatan_pdiii',compact('bidangkegiatan'));
    }

    public function index_mahasiswa()
    {
        $bidangkegiatan=kegiatan::all();
        return view('kegiatan_mahasiswa',compact('bidangkegiatan'));
    }
}

