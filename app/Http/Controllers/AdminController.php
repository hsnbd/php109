<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

class AdminController extends Controller
{
    public function admin(){
       return view('Admin.index');
   }
   public function profile(){
       return view('admin.profile');
   }
   public function invoice(){
       return view('admin.invoice');
   }
}
