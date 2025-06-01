<?php

namespace App\Http\Controllers;

use App\Http\Controllers\Controller;
use App\Models\User;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Hash;
use Illuminate\Support\Str;

class AuthController extends Controller
{
    public function register()
    {
        return view("register");
    }

    public function do_register(Request $request)
    {
        $name = $request->input("name");
        $email = $request->input("email");
        $password = $request->input("password");

        User::create([
            "name" => $name,
            "email" => $email,
            "password" => Hash::make($password),
            "remember_token" => Str::random(60),
        ]);

        $request->session()->put("login", "true");
        $request->session()->put("name", $name);

        return redirect("home");
    }

    public function login()
    {   
        $msg = "";
        return view("login" , compact("msg"));
    }

    public function do_login(Request $request)
{
    $email = $request->input("email");
    $password = $request->input("password");


    $user = User::where("email", $email)->first();

    if ($user && Hash::check($password, $user->password)) {
       
        $request->session()->put("login", "true");
        $request->session()->put("name", $user->name);
        return redirect("home");
    } else {
       
        return view("login", ['msg' => "* Invalid User ID or Password"]);
    }
}

    public function logout(Request $request)
    {
        $request->session()->forget("login");
        $request->session()->forget("name");

        return redirect("home");
    }
}
