<?php

namespace App\Http\Controllers;
use App\Models\Product;
use Illuminate\Http\Request;
use Cart;

class ShopController extends Controller
{
    //
    public function add(){
         
        $findproduct=Product::find(request("pdt_id"));
       
        Cart::add([
            
            'id'=>strtolower(request("category"))."_".request("pdt_id"),
            'name'=>request("name"),
            'quantity'=>request("quantity"),
            'price'=> isset($findproduct->discounts) ? $findproduct->price-$findproduct->discounts : $findproduct->price ,
            'discount'=>$findproduct->discounts,
        ]);
        return redirect('/checkout');
            
    }
    public function Cart(){
       
        return view('main.checkout');
        
    }
    public function delete($id){
        Cart::remove($id);
        return back();
        
    }
    public function reduce($id){
        $qty=request("qty");
        Cart::update($id,array(
            'quantity'=>$qty-1,
        ));
        return response()->json(['sum' =>Cart::get($id)->getPriceSum() ]);
    }
    public function increase($id){
        $qty=request("qty");
        Cart::update($id,array(
            'quantity'=>$qty+1,
        ));
        return response()->json(['sum' =>Cart::get($id)->getPriceSum() ]);
    }

    public function userdata(Request $request){
        $request->session()->put('user', [
            'name'=>request("name"),
            'mobile'=>request("mobile_no"),
            'address'=>request("address"),
            'area' =>request("Area"),
            'areatype'=>request("address_type")           
        ]);
        return redirect('/payment');
    }


    public function payment(){
        
        return view('main.payment');
    
    }
    
}
