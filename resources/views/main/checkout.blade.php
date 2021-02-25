@extends('layout.script')
@section('content')
<?php
use App\Helpers\UtilsHelper;
?>

<!-- //navigation -->
<!-- banner-2 -->
<div class="page-head_agile_info_w3l">

</div>
<!-- //banner-2 -->
<!-- page -->
<div class="services-breadcrumb">
    <div class="agile_inner_breadcrumb">
        <div class="container">
            <ul class="w3_short">
                <li>
                    <a href="">Home</a>
                    <i>|</i>
                </li>
                <li>Checkout</li>
            </ul>
        </div>
    </div>
</div>
<!-- //page -->
<!-- checkout page -->
<div class="privacy">
    <div class="container">
        <!-- tittle heading -->
        <h3 class="tittle-w3l">Checkout
            <span class="heading-style">
                <i></i>
                <i></i>
                <i></i>
            </span>
        </h3>
        <!-- //tittle heading -->
        <div class="checkout-right">
            <h4>Your shopping cart contains:
                <span>
                    <span class="total_quantity">{{Cart::getTotalQuantity()}}</span>
                    Products
                </span>
            </h4>
            <div>
                <table class="timetable_sub">
                    <thead>
                        <tr>
                            <th>SL No.</th>
                            <th>Product Name</th>
                            <th>Quantity</th>

                            <th>Price</th>
                            <th>Remove</th>
                        </tr>
                    </thead>
                        <?php $x=1 ?>
                        @foreach (Cart::getContent() as $item)
                    <tbody>
                        <tr id="cart_item_{{$item->id}}">
                            <td>{{$x++}}</td>
                        <td>{{$item->name}}</td>
                            <td>
                                <div>
                                    <div class="quantity-select">
                                        <a href="javascript:void(0)" onclick="minusQty('{{$item->id}}')"><div class="entry value-minus" >&nbsp;</div></a>
                                        <div class="entry value">
                                        <span name="qty" class="quantity_{{$item->id}}">{{$item->quantity}}</span>
                                        <input type="hidden" class="input_{{$item->id}} product_qty" value="{{$item->quantity}}">
                                        </div>
                                        <a href="javascript:void(0)" onclick="plusQty('{{$item->id}}')"><div class="entry value-plus active">&nbsp;</div></a>
                                    </div>
                                </div>
                            </td>
                        
                        <td><span class="product_total_{{$item->id}}">{{Cart::get($item->id)->getPriceSum()}}</span>
                        <input type="hidden" class="input_product_total_{{$item->id}} product_total" value="{{Cart::get($item->id)->getPriceSum()}}"></td>
                            <td>
                                <div class="rem">
                                    <a href="javascript:void(0)" onclick="return removeCartItem('{{$item->id}}')"><div class="close1"> </div></a>
                                </div>
                            </td>
                        </tr>
                        
                    </tbody>
                        @endforeach
                </table>
            </div>
            <br>
            <h4>Total:   
                <span style="color: black">
                    <span class="order_total">{{Cart::getSubTotal()}}</span>
                    PKR.</span>
            </h4>

        </div>

        <div class="checkout-left">
            <div class="address_form_agile">
                <h4 style="color: black"><b>Add Contact Details</h4>
                    <?php $user=session()->get("user")?>
                <form action="/userdata" method="post">
                    
                        <div class="information-wrapper">
                               {{ csrf_field() }}
                                    <input class="billing-address-name" type="text" name="name" placeholder="Full Name" required=""
                                     >
                                
                                <div class="w3_agileits_card_number_grids">
                                    <div class="w3_agileits_card_number_grid_left">
                                        <div class="">
                                            <input type="text" placeholder="Mobile Number" name="mobile_no" required=""
                                            value="{{!empty($user['mobile']) ? $user['mobile'] : ''}}">
                                        </div>
                                    </div>
                                    
                                        <div class="controls">
                                            <input type="text" placeholder="Address" name="address" required=""
                                            value="{{!empty($user['address']) ? $user['address'] : ''}}">
                                        </div>
                                    
                                    <div class="clear"> </div>
                                </div>
                                <div class="controls">
                                    <input type="text" placeholder="Area" name="Area" required="" value="{{!empty($user['area']) ? $user['area'] : ''}}">
                                </div>
                                <div class="">
                                    <select class="option-w3ls" name="address_type" value="{{!empty($user['address_type']) ? $user['address_type'] : ''}}">
                                        <option>Select Address type</option>
                                        <option value="office" @if(!empty($user['area_type']) && $user['area_type'] == 'office') selected @endif>Office</option>
                                        <option value="home" @if(!empty($user['area_type']) && $user['area_type'] == 'home') selected @endif>Home</option>
                                        <option value="commercial" @if(!empty($user['area_type']) && $user['area_type'] == 'commercial') selected @endif>Commercial</option>

                                    </select>
                                </div>
                            
                            <button class="submit check_out">Save And Continue</button>
                        </div>
                    
                </form>  
            </div>
            <div class="clearfix"> </div>
        </div>
    </div>
</div>
<!-- //checkout page -->
<!-- newsletter -->
<div class="footer-top">
    <div class="container-fluid">
        <div class="col-xs-8 agile-leftmk">
            <h2>Get your Groceries delivered from our store</h2>
            <p>Free Delivery on your first order!</p>
            <form action="#" method="post">
                <input type="email" placeholder="E-mail" name="email" required="">
                <input type="submit" value="Subscribe">
            </form>
            <div class="newsform-w3l">
                <span class="fa fa-envelope-o" aria-hidden="true"></span>
            </div>
        </div>
        <div class="col-xs-4 w3l-rightmk">
            <img src="images/tab3.png" alt=" ">
        </div>
        <div class="clearfix"></div>
    </div>
</div>
<!-- //newsletter -->
<!-- footer -->

@include('layout.simpfoot')

<script>
    function minusQty(id){
        let qty = $('.input_'+id).val();
        qty -=1;
        if(qty < 1 ){
            qty = 1;}
        $('.quantity_'+id).html(qty);
        $('.input_'+id).val(qty); 
        $.post("{{url('/cart/reduce/')}}/"+id,{_token:"{{csrf_token()}}"},function(data, status){
            $('.product_total_'+id).html(data.sum);
            $('.input_product_total_'+id).val(data.sum);
            
            orderTotal();
            orderQuantity();
        } );

        
       
    }
    function plusQty(id){
        let qty = $('.input_'+id).val();
        qty++;
        $('.quantity_'+id).html(qty);
        $('.input_'+id).val(qty); 
        $.post("{{url('/cart/increase/')}}/"+id,{_token:"{{csrf_token()}}"},function(data, status){
            $('.product_total_'+id).html(data.sum);
            $('.input_product_total_'+id).val(data.sum);

            orderTotal();
            orderQuantity();

        } );
            
              
    }
    function removeCartItem(id){
        if(confirm("are you sure??")){
        $.post("{{url('/cart/delete/')}}/"+id,{_token:"{{csrf_token()}}"},function(data, status){
            $('#cart_item_'+id).remove();
            orderTotal();
            orderQuantity();
        
    });
    }
    else{
        return false;
    }
    }
    function orderTotal(){
        var total = 0;
            $(".product_total").each(function(){
            total += +$(this).val();
    });
    $(".order_total").html(total);
    }
    function orderQuantity(){
        var sum = 0;
    $(".product_qty").each(function(){
        sum += +$(this).val();
    });
    $(".total_quantity").html(sum);
    }
</script>

@endsection()