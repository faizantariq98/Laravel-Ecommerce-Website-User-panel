@extends('layout.script')

@section('content')
<?php
use App\Helpers\UtilsHelper;
?>

<!-- //navigation -->
<!-- banner -->

@if(session()->has('message'))
<div class="alert alert-success alert-dismissible" role="alert">
  <button type="button" class="close" data-dismiss="alert" aria-label="Close"><span aria-hidden="true">&times;</span></button>
  <strong>Success!</strong>{{session()->get('message')}}
</div>

@endif

<div id="myCarousel" class="carousel slide" data-ride="carousel">
    <!-- Indicators-->
    <ol class="carousel-indicators">
        <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
        <li data-target="#myCarousel" data-slide-to="1" class=""></li>
        <li data-target="#myCarousel" data-slide-to="2" class=""></li>
        <li data-target="#myCarousel" data-slide-to="3" class=""></li>
    </ol>
    <div class="carousel-inner" role="listbox">
        <div class="item active">
            <div class="container">
                <div class="carousel-caption">
                    <h3>Big
                        <span>Save</span>
                    </h3>
                    <p>Get flat
                        <span>10%</span> Cashback</p>
                    <a class="button2" href="/home">Shop Now </a>
                </div>
            </div>
        </div>
        <div class="item item2">
            <div class="container">
                <div class="carousel-caption">
                    <h3>Healthy
                        <span>Saving</span>
                    </h3>
                    <p>Get Upto
                        <span>30%</span> Off</p>
                    <a class="button2" href="/home">Shop Now </a>
                </div>
            </div>
        </div>
        <div class="item item3">
            <div class="container">
                <div class="carousel-caption">
                    <h3>Big
                        <span>Deal</span>
                    </h3>
                    <p>Get Best Offer Upto
                        <span>20%</span>
                    </p>
                    <a class="button2" href="/home">Shop Now </a>
                </div>
            </div>
        </div>
        <div class="item item4">
            <div class="container">
                <div class="carousel-caption">
                    <h3>Today
                        <span>Discount</span>
                    </h3>
                    <p>Get Now
                        <span>40%</span> Discount</p>
                    <a class="button2" href="/home">Shop Now </a>
                </div>
            </div>
        </div>
    </div>
    <a class="left carousel-control" href="#myCarousel" role="button" data-slide="prev">
        <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
        <span class="sr-only">Previous</span>
    </a>
    <a class="right carousel-control" href="#myCarousel" role="button" data-slide="next">
        <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
        <span class="sr-only">Next</span>
    </a>
</div>
<!-- //banner -->

<!-- top Products -->
<div class="ads-grid">
    <div class="container">
        <!-- tittle heading -->
        <h3 class="tittle-w3l">Our Top Products
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
        <div class="agileinfo-ads-display col-md-9">
            <div class="wrapper">
                <!-- first section (nuts) -->
                <div class="product-sec1">
                    <h3 class="heading-tittle">Nuts</h3>
                    @foreach($dryfruits as $dry)
                    <div class="col-xs-4 product-men" style="margin-top: 25px;">
                        <div class="men-pro-item simpleCart_shelfItem">
                            <div class="men-thumb-item">
                                <img src="{{UtilsHelper::resolveImage($dry->image)}}" alt="" style="height: 150px;">
                                <div class="men-cart-pro">
                                    <div class="inner-men-cart-pro">
                                        <a href="/dry/{{$dry->id}}" class="link-product-add-cart">Quick View</a>
                                    </div>
                                </div>
                                @if ($dry->productStock<=0)  
                                <span class="product-new-top">Sold</span>
                                @else
                                <span class="product-new-top">New</span>
                                @endif
                            </div>
                            <div class="item-info-product ">
                                <h4>
                                    <a href="single.html">{{$dry->name}}</a>
                                </h4>
                                @if($dry->discounts)
                                    <div class="info-product-price">
                                        <span class="item_price">PKR. {{$dry->price-$dry->discounts}} </span>
                                        <del>PKR.{{$dry->price}}</del>
                                    </div>
                                    @else
                                    <div class="info-product-price">
                                        <span class="item_price">PKR. {{$dry->price}} </span>
                                    
                                    </div>
                                    @endif
                                <form action="/Cart/add"method="post">
                                    {{ csrf_field() }}
                                    <input type="hidden" name="category" value="dry" />
                                            <input type="hidden" name="pdt_id" value="{{$dry->id}}" />
                                            <input type="hidden" name="name" value="{{$dry->name}}"/>
                                            <input type="hidden" name="price" value="{{$dry->price}}" />
                                            <input type="hidden" name="quantity" value="1" />

                                            <button type="submit" class="buttonsubmit" style="margin-top: -10px; width:180px" 
                                            @if ($dry->productStock<=0) disabled  @endif>
                                                Add to cart
                                            </button>
                                            
                                            
                                    </form>
                            </div>
                        </div>
                    </div>
                    
                    @endforeach
                    <div class="clearfix"></div>
                </div>
                <!-- //first section (nuts) -->
                <!-- second section (nuts special) -->
                <div class="product-sec1 product-sec2">
                    <div class="col-xs-7 effect-bg">
                        <h3 class="">Pure Energy</h3>
                        <h6>Enjoy our all healthy Products</h6>
                        <p>Get Extra 10% Off</p>
                    </div>
                    <h3 class="w3l-nut-middle">Nuts & Dry Fruits</h3>
                    <div class="col-xs-5 bg-right-nut">
                        <img src="images/nut1.png" alt="">
                    </div>
                    <div class="clearfix"></div>
                </div>
                <!-- //second section (nuts special) -->
                <!-- third section (oils) -->
                <div class="product-sec1">
                    <h3 class="heading-tittle">Oils</h3>
                    @foreach($oils as $oil)
                    <div class="col-xs-4 product-men" style="margin-top: 25px;">
                        <div class="men-pro-item simpleCart_shelfItem">
                            <div class="men-thumb-item">
                                <img src="{{UtilsHelper::resolveImage($oil->image)}}" alt="" style="height: 150px;">
                                <div class="men-cart-pro">
                                    <div class="inner-men-cart-pro">
                                        <a href="/oil/{{$oil->id}}" class="link-product-add-cart">Quick View</a>
                                    </div>
                                </div>
                                @if ($oil->productStock<=0)  
                                <span class="product-new-top">Sold</span>
                                @else
                                <span class="product-new-top">New</span>
                                @endif
                            </div>
                            <div class="item-info-product ">
                                <h4>
                                    <a href="">{{$oil->name}}</a>
                                </h4>
                                @if($oil->discounts)
                                <div class="info-product-price">
                                    <span class="item_price">PKR. {{$oil->price-$oil->discounts}} </span>
                                    <del>{{$oil->price}}</del>
                                </div>
                                @else
                                <div class="info-product-price">
                                    <span class="item_price">PKR. {{$oil->price}} </span>
                                
                                </div>
                                @endif
                                <form action="/Cart/add"method="post">
                                    {{ csrf_field() }}
                                    <input type="hidden" name="category" value="oil" />
                                            <input type="hidden" name="pdt_id" value="{{$oil->id}}" />
                                            <input type="hidden" name="name" value="{{$oil->name}}" />
                                            <input type="hidden" name="price" value="{{$oil->price}}" />
                                            <input type="hidden" name="quantity" value="1" />

                                            <button type="submit" class="buttonsubmit" style="margin-top: -10px; width:180px"
                                            @if ($oil->productStock<=0) disabled  @endif >
                                                Add to cart
                                            </button>
                                            
                                            
                                    </form>
                            

                            </div>
                        </div>
                    </div>
                    @endforeach
                    <div class="clearfix"></div>
                </div>
                <!-- //third section (oils) -->
                <!-- fourth section (noodles) -->
                <div class="product-sec1">
                    <h3 class="heading-tittle">Pasta & Noodles</h3>
                    @foreach ($pastas as $pasta)
                    <div class="col-xs-4 product-men" style="margin-top: 25px;">
                        <div class="men-pro-item simpleCart_shelfItem">
                            <div class="men-thumb-item">
                                <img src="{{UtilsHelper::resolveImage($pasta->image)}}" alt="" style="height: 150px;">
                                <div class="men-cart-pro">
                                    <div class="inner-men-cart-pro">
                                        <a href="/pastas/{{$pasta->id}}" class="link-product-add-cart">Quick View</a>
                                    </div>
                                </div>
                                @if ($pasta->productStock<=0)  
                                <span class="product-new-top">Sold</span>
                                @else
                                <span class="product-new-top">New</span>
                                @endif
                            </div>
                        <div class={{$pasta->name}} </a>
                                </h4>
                                @if($pasta->discounts)
                                    <div class="info-product-price">
                                        <span class="item_price">PKR. {{$pasta->price-$pasta->discounts}} </span>
                                        <del>{{$pasta->price}}</del>
                                    </div>
                                    @else
                                    <div class="info-product-price">
                                        <span class="item_price">PKR. {{$pasta->price}} </span>
                                    
                                    </div>
                                    @endif
                                <form action="/Cart/add"method="post">
                                    {{ csrf_field() }}
                                    <input type="hidden" name="category" value="pasta" />
                                            <input type="hidden" name="pdt_id" value="{{$pasta->id}}" />
                                            <input type="hidden" name="name" value="{{$pasta->name}}" />
                                            <input type="hidden" name="price" value="{{$pasta->price}}" />
                                            <input type="hidden" name="quantity" value="1" />

                                            <button type="submit" class="buttonsubmit" style="margin-top: -10px; width:180px" 
                                            @if ($pasta->productStock<=0) disabled  @endif>
                                                Add to cart
                                            </button>
                                            
                                            
                                    </form>
                            

                            </div>
                        </div>
                    </div>
                    @endforeach
                    <div class="clearfix"></div>
                </div>
                <!-- //fourth section (noodles) -->
            </div>
        </div>
        <!-- //product right -->
    </div>
</div>
<!-- //top products -->

<!-- footer -->
@include('layout.footscript')
@endsection()