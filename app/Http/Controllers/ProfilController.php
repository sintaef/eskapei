<?php

namespace App\Http\Controllers;

use App\User;
use Illuminate\Http\Request;
use App\mahasiswa;

class ProfilController extends Controller
{
    public function __construct()
    {
        $this->middleware('auth');
    }

    public function index_tkemahasiswaan()
    {
        $profil=User::all();
        return view('profil_tkemahasiswaan',compact('profil'));
    }

    public function index_pdiii()
    {
        $profil=User::all();
        return view('profil_pdiii',compact('profil'));
    }

    public function index_mahasiswa()
    {
        $profil=mahasiswa::all();
        return view('profil_mahasiswa',compact('profil'));
    }
}
