@extends('layout.script')
@section('content')

<!-- //navigation -->
<!-- banner-2 -->
<!-- //navigation -->
<!-- banner -->
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
                    <a class="button2" href="product.html">Shop Now </a>
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


<!-- //banner-2 -->
<!-- page -->
<div class="services-breadcrumb">
    <div class="agile_inner_breadcrumb">
        <div class="container">
            <ul class="w3_short">
                <li>
                    <a href="/home">Home</a>
                    <i>|</i>
                </li>
                <li>About Us</li>
            </ul>
        </div>
    </div>
</div>
<!-- //page -->
<!-- about page -->
<!-- welcome -->
<div class="welcome">
    <div class="container">
        <!-- tittle heading -->
        <h3 class="tittle-w3l">Welcome to our Site
            <span class="heading-style">
                <i></i>
                <i></i>
                <i></i>
            </span>
        </h3>
        <!-- //tittle heading -->
        <div class="w3l-welcome-info">
            <div class="col-sm-6 col-xs-6 welcome-grids">
                <div class="welcome-img">
                    <img src="images/about.jpg" class="img-responsive zoom-img" alt="">
                </div>
            </div>
            <div class="col-sm-6 col-xs-6 welcome-grids">
                <div class="welcome-img">
                    <img src="images/about2.jpg" class="img-responsive zoom-img" alt="">
                </div>
            </div>
            <div class="clearfix"> </div>
        </div>
        <div class="w3l-welcome-text">
            <p>Welcome to Al Makkah cash and carry.We deliver the best products in town for kitchen and other households</p>
            <p>Our products are in discounted prices from market. We provide our customers to get up to 40% off in household and kitchen items </p>
        </div>
    </div>
</div>
<!-- //welcome -->
<!-- video -->
<div class="about">
    <div class="container">
        <!-- tittle heading -->
        <h3 class="tittle-w3l">Our Video
            <span class="heading-style">
                <i></i>
                <i></i>
                <i></i>
            </span>
        </h3>
        <!-- //tittle heading -->
        <div class="about-tp">
            <div class="col-md-8 about-agileits-w3layouts-left">
                <iframe src="https://player.vimeo.com/video/15520702?color=ffffff&title=0&byline=0"></iframe>
            </div>
            <div class="col-md-4 about-agileits-w3layouts-right">
                <div class="img-video-about">
                    <img src="images/videoimg2.png" alt="">
                </div>
                <h4>Al-Makkah</h4>
                <p>No.1 Leading E-commerce marketplace in Wah cantt</p>
            </div>
            <div class="clearfix"></div>
        </div>
    </div>
</div>
<!-- //video-->
<!-- //about page -->
<!-- newsletter -->
<div class="footer-top">
    <div class="container-fluid">
        <div class="col-xs-8 agile-leftmk">
            <h2>Get your Groceries delivered from local stores</h2>
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
@endsection()