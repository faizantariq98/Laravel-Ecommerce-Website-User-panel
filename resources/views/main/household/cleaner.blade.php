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
                    <a href="index.html">Home</a>
                    <i>|</i>
                </li>
                <li>Household Products</li>
            </ul>
        </div>
    </div>
</div>
<!-- //page -->
<!-- top Products -->
<div class="ads-grid">
    <div class="container">
        <!-- tittle heading -->
        <h3 class="tittle-w3l">Household Products
            <span class="heading-style">
                <i></i>
                <i></i>
                <i></i>
            </span>
        </h3>
        <!-- //tittle heading -->
        <!-- product left -->
        <div class="side-bar col-md-3">
            <div class="search-hotel">
                <h3 class="agileits-sear-head">Search Here..</h3>
                <form action="{{url('/product/list')}}" method="post">
                    @csrf
                    <input type="search" placeholder="Product name..." name="search" required="">
                    <input type="submit" value=" ">
                </form>
            </div>
        
            <div class="deal-leftmk left-side">
                <h3 class="agileits-sear-head">Special Deals</h3>
                <div class="special-sec1">
                    <div class="col-xs-4 img-deals">
                       <a href="{{url('/snack/38')}}"> <img src="images/lays.jpg" alt="" style="width: 60px;"></a>
                    </div>
                    <div class="col-xs-8 img-deal1">
                        <h3>Lay's Potato Chips</h3>
                        <a href="{{url('/snack/38')}}">PKR.100.00</a>
                    </div>
                    <div class="clearfix"></div>
                </div>
                <div class="special-sec1">
                    <div class="col-xs-4 img-deals">
                        <a href="{{url('/snack/39')}}"><img src="images/sc.jpg" alt="" style="width: 60px;"></a>
                    </div>
                    <div class="col-xs-8 img-deal1">
                        <h3>Super crisp</h3>
                        <a href="{{url('/snack/39')}}">PKR.90.00</a>
                    </div>
                    <div class="clearfix"></div>
                </div>
                <div class="special-sec1">
                    <div class="col-xs-4 img-deals">
                        <img src="images/ns.jpg" alt="" style="width: 60px;">
                    </div>
                    <div class="col-xs-8 img-deal1">
                        <h3>National Salt</h3>
                        <a href="{{url('/masalas/40')}}">PKR.30.00</a>
                    </div>
                    <div class="clearfix"></div>
                </div>
                <div class="special-sec1">
                    <div class="col-xs-4 img-deals">
                        <img src="images/dried.jpg" alt="" style="width: 60px;">
                    </div>
                    <div class="col-xs-8 img-deal1">
                        <h3>Mix Dry Fruit</h3>
                        <a href="{{url('/dry/41')}}">PKR.525.00</a>
                    </div>
                    <div class="clearfix"></div>
                </div>
                <div class="special-sec1">
                    <div class="col-xs-4 img-deals">
                        <img src="images/d3.jpg" alt="">
                    </div>
                    <div class="col-xs-8 img-deal1">
                        <h3>Cadbury Dairy Milk</h3>
                        <a href="{{url('/sweets/42')}}">PKR.149.00</a>
                    </div>
                    <div class="clearfix"></div>
                </div>
                <div class="special-sec1">
                    <div class="col-xs-4 img-deals">
                        <img src="images/dettol.jpg" alt="" style="width: 70px;">
                    </div>
                    <div class="col-xs-8 img-deal1">
                        <h3>Dettol</h3>
                        <a href="{{url('/cleaning/43')}}">PKR.120.00</a>
                    </div>
                    <div class="clearfix"></div>
                </div>
                
            </div>
            <!-- //deals -->
        </div>
        <!-- //product left -->
        <!-- product right -->
        <div class="agileinfo-ads-display col-md-9 w3l-rightpro">
            <div class="wrapper">
                <!-- first section -->
                <div class="product-sec1">
                    
                        @foreach ($cleaners as $cleaner)
                        <div class="col-xs-4 product-men" style="margin-top: 25px;">
                           
                            <div class="men-pro-item simpleCart_shelfItem">
                                <div class="men-thumb-item">
                                    <img src="{{UtilsHelper::resolveImage($cleaner->image)}}" alt="" style="height: 150px;">
                                    <div class="men-cart-pro">
                                        <div class="inner-men-cart-pro">
                                            <a href="/cleaner/{{$cleaner->id}}" class="link-product-add-cart">Quick View</a>
                                        </div>
                                    </div>
                                    @if ($cleaner->productStock<=0)  
                                    <span class="product-new-top">Sold</span>
                                    @else
                                    <span class="product-new-top">New</span>
                                    @endif
                                </div>
                                <div class="item-info-product ">
                                    <h4>
                                        <a href="">{{$cleaner->name}} </a>
                                    </h4>
                                    @if($cleaner->discounts)
                                    <div class="info-product-price">
                                        <span class="item_price">PKR. {{$cleaner->price-$cleaner->discounts}} </span>
                                        <del>{{$cleaner->price}}</del>
                                    </div>
                                    @else
                                    <div class="info-product-price">
                                        <span class="item_price">PKR. {{$cleaner->price}} </span>
                                    
                                    </div>
                                    @endif
                                    <form action="/Cart/add"method="post">
                                        {{ csrf_field() }}
                                        <input type="hidden" name="category" value="cleaner"/>
                                                <input type="hidden" name="pdt_id" value="{{$cleaner->id}}" />
                                                <input type="hidden" name="name" value="{{$cleaner->name}}" />
                                                <input type="hidden" name="price" value="{{$cleaner->price}}" />
                                                <input type="hidden" name="quantity" value="1" />
    
                                                <button type="submit" class="buttonsubmit" style="margin-top: -10px; width:180px" 
                                                @if ($cleaner->productStock<=0) disabled  @endif
                                                >
                                                    Add to cart
                                                </button>
                                                @auth
                                            <a href="javascript:void(0)" class="link-product-add-cart" onclick="addwishlist({{$cleaner->id}})" style="width: 50px; float:right; margin-top:-9px;">
                                                @if($cleaner->wishlist)
                                                <i class="fa fa-heart icon-{{$cleaner->id}}"></i>
                                                @else
                                                <i class="fa fa-heart-o icon-{{$cleaner->id}}"></i>
                                                @endif
                                            </a>
                                            @endauth
                                                
                                        </form>
                                
    
                                </div>
                                
                            </div>
                        </div>
                       
                        
                        @endforeach
                    
                    <div class="clearfix"></div>
                </div>
                                  

            </div>
        </div>
        <!-- //product right -->
    </div>
</div>
<!-- //top products -->

@include('layout.footscript')
@endsection()