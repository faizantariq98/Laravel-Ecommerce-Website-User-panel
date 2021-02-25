<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Product;

class HomeController extends Controller
{
    /**
     * Create a new controller instance.
     *
     * @return void
     */
    
    /**
     * Show the application dashboard.
     *
     * @return \Illuminate\Contracts\Support\Renderable
     */
    public function index()
    {
        $dryfruits=Product::where(['category_id'=>6])->take(3)->get();
        $oils=Product::where(['category_id'=>9])->take(3)->get();
        $pastas=Product::where(['category_id'=>10])->take(3)->get();

        return view('main.home', compact('dryfruits','oils','pastas'));
    }
}
