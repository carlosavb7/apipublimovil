<?php

namespace App\Http\Controllers;

use Carbon\Carbon;
use DB;
use Illuminate\Auth\Events\PasswordReset;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Hash;
use Illuminate\Support\Facades\Password;
use Illuminate\Support\Facades\Validator;
use Illuminate\Support\Str;
use App\Models\User;
use Illuminate\Support\Facades\Mail;
use Illuminate\Support\Facades\Auth;

class AuthController extends Auth
{
    public function login(Request $request)
    {
       
        $credentials = $request->validate([
            'email' => 'required|email',
            'password' => 'required',
        ]);

        $user = User::where('email', $request->email)->first();

        if (!$user || !Hash::check($request->password, $user->password)) {
            return response()->json(['message' => 'Invalid login credentials'], 401);
        }

        $token = $user->createToken('authToken')->plainTextToken;

        return response()->json(['token' => $token], 200);
    }

    public function register(Request $request)
    {
        $validator = Validator::make($request->all(), [
            'name' => 'required',
            'phone' => 'required|numeric',
            'username' => 'required|unique:users',
            'email' => 'required|email|unique:users',
            'password' => 'required',
            'birthdate' => 'required',
        ]);

        if ($validator->fails()) {
            return response()->json(['errors' => $validator->errors()], 422);
        }

        $user = User::create([
            'name' => $request->name,
            'phone' => $request->phone,
            'username' => $request->username, 
            'birthdate' => $request->birthdate,
            'email' => $request->email,
            'password' => Hash::make($request->password),
        ]);

        $token = $user->createToken('auth_token')->plainTextToken;

        return response()->json(['access_token' => $token], 201);
    }

    public function sendPasswordResetLink(Request $request)
    {

        
            
        $request->validate(['email' => 'required|email']);
        
        $response = Password::sendResetLink($request->only('email'));
        
       
        switch ($response) {
            case Password::RESET_LINK_SENT:
                return response()->json(['Messagge' => trans($response)], 201);
            case Password::INVALID_USER:
                
                return response()->json(['email' => trans($response)], 404);
        }
    }

    public function resetPassword(Request $request)
    {

        $validator = Validator::make($request->all(), [
            'email' => 'required',
            'password' => 'required|confirmed|min:8',
            'token' => 'required',
        ]);

        if ($validator->fails()) {
            return response()->json(['errors' => $validator->errors()], 422);
        }


        $status = Password::reset(
            $request->only('email', 'password', 'password_confirmation', 'token'),
            function (User $user, string $password) {
                $user->forceFill([
                    'password' => Hash::make($password)
                ])->setRememberToken(Str::random(60));
     
                $user->save();
     
                event(new PasswordReset($user));
            }
        );
        

     
        return $status === Password::PASSWORD_RESET
                ? response()->json(['message' => trans($status)])
                : response()->json(['message' => trans($status)], 401);
    }
}
