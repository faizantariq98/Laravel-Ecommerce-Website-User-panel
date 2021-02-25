@extends('layout.script')
@section('content')
<?php
use App\Helpers\UtilsHelper;
?>

<div class="services-breadcrumb">
    <div class="">
        <div class="container">
            <ul class="w3_short">
                <li>
                    <a href="/">Home</a>
                    <i>|</i>
                </li>
                <li>Single Page</li>
            </ul>
        </div>
    </div>
</div>
<!-- //page -->
<!-- Single Page -->
<div class="banner-bootom-w3-agileits">
    <div class="container">
        <!-- tittle heading -->
        <h3 class="tittle-w3l">Single Page
            <span class="heading-style">
                <i></i>
                <i></i>
                <i></i>
            </span>
        </h3>
        <!-- //tittle heading -->
        <div class="col-md-5  ">
            <div class="">
                <div class="">
                    <ul class="slides">
                        <li data-thumb="images/se1.jpg">
                            <div class="thumb-image">
                                <img src="{{UtilsHelper::resolveImage($bakes->image)}}" data-imagezoom="true" class="img-responsive" alt=""> </div>
                        </li>
                        
                    </ul>
                    <div class=""></div>
                </div>
            </div>
        </div>
        <div class="col-md-7 ">
        <h3>{{$bakes->name}}</h3>
            <div class="">
                @auth
                    
                <section class='rating-widget'>
                    
                    <!-- Rating Stars Box -->
                    <div class='rating-stars'>
                      <ul id='stars'>
                        <li class='star star-1' title='Poor' data-value='1'>
                          <i class='fa fa-star fa-fw'></i>
                        </li>
                        <li class='star star-2' title='Fair' data-value='2'>
                          <i class='fa fa-star fa-fw'></i>
                        </li>
                        <li class='star star-3' title='Good' data-value='3'>
                          <i class='fa fa-star fa-fw'></i>
                        </li>
                        <li class='star star-4' title='Excellent' data-value='4'>
                          <i class='fa fa-star fa-fw'></i>
                        </li>
                        <li class='star star-5' title='WOW!!!' data-value='5'>
                          <i class='fa fa-star fa-fw'></i>
                        </li>
                      </ul>
                    </div>
                    
                    <div class='success-box'>
                      <div class='clearfix'></div>
                      
                      <div class='text-message'></div>
                      <div class='clearfix'></div>
                    </div>
                    
                    
                    
                  </section>
                  @endauth
                  
            </div>
            <p>
              @if($bakes->discounts)
              <div class="info-product-price">
                  <span class="item_price">PKR. {{$bakes->price-$bakes->discounts}} </span>
                  <del>{{$bakes->price}}</del>
              </div>
              @else
              <div class="info-product-price">
                  <span class="item_price">PKR. {{$bakes->price}} </span>
              
              </div>
              @endif
                <label>Free delivery</label>
            </p>
            <div class="single-infoagile">
                <ul>
                    <li>
                        Cash on Delivery Eligible.
                    </li>
                    <li>
                        Delivery to within 1 - 2 business days.
                    </li>
                    <li>
                        Sold by Al Makkah Store.
                    </li>
                    
                </ul>
            </div>
            <div class="product-single-w3l">
                <ul>
                    <li>
                        Available in best rates.
                    </li>
                    <li>
                        Guaranteed product will be delivered at your doorstep from the latest stock.
                    </li>
                    <li>
                        Their range of products may be used in the home, office or even in shops.
                    </li>
                    <li>
                        Transforms your home products in a cool way.
                    </li>
                </ul>
                <p>
                    <i class="fa fa-refresh" aria-hidden="true"></i>All products are
                    <label>replaceable.</label>
                </p>
            </div>
            <div>   
            <form action="/Cart/add" method="post">
                    {{ csrf_field() }}
                            <label>quantity:</label><input type="number" name="quantity" value="1" />
                            <br>
                            <input type="hidden" name="category" value="{{ $category}}" />
                            <input type="hidden" name="name" value="{{$bakes->name}}" />
                            <input type="hidden" name="price" value="{{$bakes->price}}" />
                             <input type="hidden" name="pdt_id" value="{{$bakes->id}}" />
                            <input type="hidden" name="currency_code" value="USD" />
                            <input type="hidden" name="return" value=" " />
                            <input type="hidden" name="cancel_return" value=" " /> 
                            <br>
                           <button type="submit" name="submit" style="background-color: rgb(70, 70, 224); color: white;"  value="Add_to_cart" class="button" @if ($bakes->productStock<=0) disabled  @endif>Add to Cart
                         </button>
                    
                    </form>
            </div>

        </div>
        <div class="clearfix"> </div>
    </div>
</div>
<script src="{{asset('js/imagezoom.js')}}"></script>


@include('layout.simpfoot')
@endsection()
@section('script')
<script>
	$(document).ready(function(){
  
  /* 1. Visualizing things on Hover - See next part for action on click */
  $('#stars li').on('mouseover', function(){
    var onStar = parseInt($(this).data('value'), 10); // The star currently mouse on
   
    // Now highlight all the stars that's not after the current hovered star
    $(this).parent().children('li.star').each(function(e){
      if (e < onStar) {
        $(this).addClass('hover');
      }
      else {
        $(this).removeClass('hover');
      }
    });
    
  }).on('mouseout', function(){
    $(this).parent().children('li.star').each(function(e){
      $(this).removeClass('hover');
    });
  });
  
  
  /* 2. Action to perform on click */
  $('#stars li').on('click', function(){
    var onStar = parseInt($(this).data('value'), 10); // The star currently selected
    var stars = $(this).parent().children('li.star');
    
    for (i = 0; i < stars.length; i++) {
      $(stars[i]).removeClass('selected');
    }
    
    for (i = 0; i < onStar; i++) {
      $(stars[i]).addClass('selected');
    }
    
    // JUST RESPONSE (Not needed)
    var ratingValue = parseInt($('#stars li.selected').last().data('value'), 10);
    var msg = "";
    if (ratingValue > 1) {
        msg = "Thanks! You rated this " + ratingValue + " stars.";
    }
    else {
        msg = "We will improve ourselves. You rated this " + ratingValue + " stars.";
    }
    responseMessage(msg,ratingValue);
    
  });

  @auth
  	let rating={{UtilsHelper::getRating(request()->segment(2))}};
  var onStar = parseInt(rating, 10); 
 
  // The star currently selected
    var stars = $(this).parent().children('li.star');
    
    // for (i = 0; i < stars.length; i++) {
    //   $(stars[i]).removeClass('selected');
    // }
    
    for (i = 1; i <= onStar; i++) {
      $(".star-"+i).addClass('selected');
    }
    
    // JUST RESPONSE (Not needed)
   
    // responseMessage(msg,ratingValue);
    

  @endauth
  
  
});


function responseMessage(msg,ratingValue) {
	$.post("{{url('/rating/')}}",{_token:"{{csrf_token()}}",product_id:{{request()->segment('2')}},rating:ratingValue},function(data, status){
			
    });
  $('.success-box').fadeIn(200);  
  $('.success-box div.text-message').html("<span>" + msg + "</span>");
}


	</script>
@endsection

