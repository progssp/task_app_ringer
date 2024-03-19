<?php

namespace App\Http\Controllers;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Validator;
use Illuminate\Support\Facades\Hash;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Session;
use Illuminate\Support\Facades\Redirect;

class LoginController extends Controller
{
    public function login_view(){
        return view('user.login');
    }

    public function login(Request $request){
        $validator = Validator::make($request->all(),[
            'email' => 'required|email',
            'password' => 'required'
        ]);
        if($validator->fails()){
            return back()->withErrors($validator)->withInput();
        }
        if(Auth::attempt(['email' => $request->email,'password' => $request->password])){
            return Redirect::to('/dashboard');
        }
        else{
            return back()->withErrors(['auth failed']);
        }

        $password = Hash::make('sample');
        if($request->email == "hello@mail.com"){
            if(Hash::check($request->password, $password)){
                return back()->with('success','logged in successfully');
            }
            else{                
                return back()->withErrors(['wrong password']);
            }
        }
        else{
            return back()->withErrors(['wrong email']);
        }
    }

    
    public function logout(Request $request){
        Auth::logout();
        Session::invalidate();
        return Redirect::route('login');
    }
}
