<?php

namespace App\Http\Controllers;
use App\Mail\ContactMail;
use Illuminate\Http\Request;
use Mail;
class ContactusController extends Controller
{
    //
    public function create(){
        return view('main.contact');
    }
    public function store(Request $request){
         $details=[
             'name'=>$request->name,
             'subject'=>$request->subject,
             'email'=>$request->email,
             'message'=>$request->message,
         ];
         Mail::to('admin@almakkah.com')->send(new ContactMail($details));
         $request->session()->flash("message","Your mail has been successfully sent to us. Thankyou");
         return redirect('/contact');
    }
}
