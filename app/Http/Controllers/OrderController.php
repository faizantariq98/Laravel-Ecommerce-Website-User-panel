<?php

namespace App\Http\Controllers;

use App\Models\Order;
use Illuminate\Http\Request;
use App\Models\Product;
use App\Models\Stock;
use Auth;
use Cart;
use Illuminate\Support\Facades\Auth as FacadesAuth;
use App\Mail\OrderMail;

class OrderController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        //
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        //
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        $user = session()->get("user");
        $total = 0;
        $order = new Order();
        $order->user_id = Auth::user()->id;
        $order->name = $user['name'];
        $order->mobile_no = $user['mobile'];
        $order->address = $user['address'];
        $order->Area = $user['area'];
        $order->address_type = $user['areatype'];
        $order->save();

        foreach (Cart::getContent() as $item) {

            $product = explode('_', $item->id);
            $findproduct = Product::find($product['1']);
            $cart = new \App\Models\Cart();
            $cart->order_id = $order->id;
            $cart->product_id = $product['1'];
            $cart->category = $product['0'];
            $quantity = $cart->quantity = $item->quantity;
            $price = $cart->price = $item->price;
            $discount = $cart->discount = $findproduct->discounts;
            $subtotal = ($price) * $quantity;
            $total += $cart->subtotal = $subtotal;
            $cart->save();
            $stock = new Stock;
            $stock->product_id = $product['1'];
            $stock->quantity = $item->quantity;
            $stock->type = "2";
            $stock->ref_id = $order->id;
            $stock->save();
        }
        $order = Order::find($order->id);
        $order->total = $total;

        $token=$request->input('g-recaptcha-response');
        
        $order->save();

        Cart::clear();
        $request->session()->forget('user');
        $request->session()->flash("message", "Your Order Has Placed Successfully");
        $ordermail= new OrderMail($order);
        \Mail::to(Auth::user()->email)->send($ordermail);
        return redirect('/');
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        //
    }
}
