<?php

namespace App\Http\Controllers;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\User;
use Illuminate\Support\Facades\Hash;
use Illuminate\Support\Str;
use Illuminate\Auth\Events\PasswordReset;
use Illuminate\Support\Facades\Password;

class UsersController extends Controller
{
    //

    public function index()
    {
        //retieve User
        $dataUser = User::all();
        return view('user.index', ['dataUser' => $dataUser]);
    }

    public function add(Request $request)
    {
        //add user
        # code...
        User::Create([
            'name' => ucwords(strtolower($request->name)),
            'email' => strtolower($request->email),
            'position' => ucwords($request->position),
            'depatement' => ucwords($request->department),
            'remember_token' => Str::random(20),
            'password' => Hash::make($request->password)
        ]);

        return redirect('user')->with('Success');
    }

    public function addPage()
    {
        return view('user.add');
    }

    public function edit()
    {
        //edit user
        # code...
    }

    public function delete($id)
    {
        //delete user
        User::find($id)->delete();
        return redirect('/user')->with('sukses', 'Data berhasil dihapus');
    }
}
