<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\User;
Use Auth;
Use Validator;
use Illuminate\Support\Facades\Hash;

class UserController extends Controller
{
    public function register(Request $request)
    {
       $validator = Validator::make($request->all(),[
        'name'=>'required|string|min:2|max:100',
        'email'=>'required|string|email|max:100|unique:users',
        'password' => ['required','string', 'min:6', 'confirmed',
            'regex:/[A-Z]/','regex:/[a-z]/','regex:/[0-9]/','regex:/[_!@#$%^&*()<>?]/',
    ], 
    
       ]);

       if($validator->fails())
       {
        return response()->json($validator->errors(),400);
       }

       $user = User::create([
        'name'=>$request->name,
        'email'=>$request->email,
        'password'=>Hash::make($request->password)
       ]);
       return response()->json([
        'message'=>'user Registered Successfully',
        'user'=>$user
       ]);
    }

    public function login(Request $request)
    {
        $validator = Validator::make($request->all(),[

            'email'=>'required|string|email',
            'password'=>'required|min:6'
           ]);
    
           if($validator->fails())
           {
            return response()->json($validator->errors(),400);
           }

           if(!$token = auth()->attempt($validator->validated()))
           {
            response()->json(['error'=>'unauthorized']);
           }

           return $this->respondWithToken($token);
    }

    protected function respondWithToken($token)
    {
        return response()->json([
            'access_token'=>$token,
            'token_type'=>'bearer',
            'expires_in'=>auth()->factory()->getTTL()*60
        ]);
    }

    public function profile()
    {
        return response()->json(auth()->user());
    }

    public function refresh()
    {
        return $this-> respondWithToken(auth()->refresh());
    }

    public function logout()
    {
        auth()->logout();

        return response()->json(['messege'=>'successfully Logged Out']);
    }
}
