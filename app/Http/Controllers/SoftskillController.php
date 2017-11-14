<?php

namespace App\Http\Controllers;
use Illuminate\Http\Request;
use App\softskill;



class SoftskillController extends Controller
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
        $softskill=softskill::all();
        return view('softskill_tkemahasiswaan',compact('softskill'));
    }
    public function form_softskill()
    {
        $softskill=softskill::all();
        return view('form_softskill_tkemahasiswaan',compact('softskill'));
    }

    public function tambah(Request $request)
    {
        $tambah=new softskill();
        $tambah->softskill = $request->input('softskill');
        $tambah->deskripsi = $request->input('deskripsi');
        $tambah->save();
        return redirect('softskill_tkemahasiswaan');
    }

    /**
     * @param $id
     * @return \Illuminate\Contracts\View\Factory|\Illuminate\View\View
     */
    public function edit($id)
    {
        $ss=softskill::find($id);
        return view('edit_softskill_tk',compact('ss'));
    }

    public function update(Request $request ,$id)
    {

        $ss = softskill::find($id);
        $ss->softskill = $request->input('softskill');
        $ss->Deskripsi = $request->input('deskripsi');
        $ss->update();
        return redirect('softskill_tkemahasiswaan');
    }

    public function delete($id)
    {
        $ss = softskill::find($id);
        $ss>delete();
        return redirect('softskill_tkemahasiswaan');
    }

    public function index_mahasiswa()
    {
        $softskill=softskill::all();
        return view('softskill_mahasiswa',compact('softskill'));
    }

    public function index_pdiii()
    {
        $softskill=softskill::all();
        return view('softskill_pdiii',compact('softskill'));
    }
}
