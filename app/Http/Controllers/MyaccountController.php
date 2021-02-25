<?php

namespace App\Http\Controllers;
use Auth;
use Illuminate\Http\Request;
use App\Models\Order;
use App\Models\User;
use App\Models\Product;
use App\Models\Wishlist;
use App\Models\Rating;
use Hash;
use Carbon\Carbon;

class MyaccountController extends Controller
{
    //
    public function order(){
        $orders=Order::where(['user_id'=>Auth::user()->id])->whereHas('cart')->orderBy("id","DESC")->paginate('10');
        return view('main.user.orders',compact('orders'));
    }

    public function addwishlist($id){
        $exist=Wishlist::where(['user_id'=>Auth::user()->id,'product_id'=>$id])->first();
        if(empty($exist)){
        $wishlist= new Wishlist;
        $wishlist->user_id=Auth::user()->id;
        $wishlist->product_id=$id;
        $wishlist->save();}
        else{
            $exist->delete();
        }
        return response()->json(['message'=>'Product added']);
    }
    public function getwishlist(){
        $wishlist=Wishlist::where(['user_id'=>Auth::user()->id])->orderBy("id","DESC")->paginate('10');
        return view('main.user.wishlist',compact('wishlist'));
    }
    public function saverating(){
        $exist=Rating::where(['user_id'=>Auth::user()->id,'product_id'=>request('product_id')])->first();
        if(empty($exist)){
        $rating = new Rating;
        $rating->user_id=Auth::user()->id;
        $rating->product_id=request('product_id');
        $rating->rating=request('rating');
        $rating->save();}
        else{
            $exist->rating=request('rating');
        $exist->save();
        }
        return response()->json(['message'=>'Product added']);
    }
    
    public function Everfication(Request $request,$id,$token){
        $user=User::find($id);
        if($user)
        {
            $user->email_verified_at=Carbon::now();
            $user->save();
        }
        $request->session()->flash("message","Your mail has been successfully verified please login to continue");
        return redirect('/login');
        
    }


    public function getProducts(Request $request){
	$search = $request->search;

	if ($search == '') {
		$products = Product::orderby('name', 'asc')->selectRaw('id, name as title, name')->limit(5)->get();
	} else {
		$products = Product::orderby('name', 'asc')
			->selectRaw('id, name as title, name')
			->where('name', 'like', '%' . $search . '%')
			->limit(5)->get();
	}

	$response = array();
	foreach ($products as $product) {
		$response[] = array(
			"id" => $product->id,
			"text" => $product->title
		);
	}

	echo json_encode($response);
	exit;
}

    public function updateprofile(Request $request){
        
        if (request()->getMethod() == 'POST'){
        $rules = [
            'name' => 'max:255|regex:/^[\pL\s\-]+$/u',
            'phone' => 'numeric|nullable'
        ];

        
    
        if (request()->get('password')) {
                $rules += ['password' => ['required','confirmed','min:8']];
            }
        }
        $request->validate($rules);

            $user=User::find(Auth::user()->id);
            $user->name=$request->name;
            $user->phone=$request->phone;
            if (request()->get('password')) 
            $user->password=Hash::make($request->password);
            $user->save();
            $request->session()->flash("message","Your credentials has been updated succesfully");
            return redirect('/profile');

    }

}
