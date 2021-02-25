<?php

use App\Helpers\UtilsHelper;

?>



	@csrf
	<!-- top-header -->
	<div class="header-most-top">
		<p>Welcome To Al-Makkah</p>
	</div>
	<!-- <p>WELCOME</p> -->

	<!-- <div class="card-body">
			@if (session('status'))
			<div class="alert alert-success" role="alert">
				{{ session('status') }}
			</div>
			@endif

			<p>You are logged in!</p> -->

	<!-- </div> -->
	<!-- </div> -->


	<!-- //top-header -->
	<!-- header-bot-->
	<div class="header-bot">
		<div class="header-bot_inner_wthreeinfo_header_mid">
			<!-- header-bot-->
			<div class="col-md-4 logo_agile">
				<h1>
					<a href="/">
						<img src="{{asset('images/logoam.jpeg')}}" alt=" " width="170px" height="100px" style="margin-top: -10px; margin-left:-100px; ">
					</a>
				</h1>
			</div>
			<!-- header-bot -->
			<div class="col-md-8 header">
				<!-- header lists -->

				<ul>
					<li>
						<a class="play-icon popup-with-zoom-anim" href="#small-dialog1">
							<span class="fa fa-map-marker" aria-hidden="true"></span> Shop Locator</a>
					</li>
					<li>
						<span class="fa fa-phone" aria-hidden="true"></span> 051-4265514
					</li>

					@guest
					<li class="nav-item">
						<a class="nav-link" href="{{ route('login') }}">{{ __('Login') }}</a>

					</li>
					@if (Route::has('register'))
					<li class="nav-item">
						<a class="nav-link" href="{{ route('register') }}">{{ __('Register') }}</a>
					</li>
					@endif
					@else
					<li class="nav-item dropdown">
						<a id="navbarDropdown" class="nav-link dropdown-toggle" href="#" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false" v-pre>
							{{ Auth::user()->name }} <span class="caret"></span>
						</a>

						<div class="dropdown-menu dropdown-menu-right" aria-labelledby="navbarDropdown">
							<a class="dropdown-item" href="{{ route('logout') }}" onclick="event.preventDefault();
                                                     document.getElementById('logout-form').submit();">
								{{ __('Logout') }}
							</a>

							<form id="logout-form" action="{{ route('logout') }}" method="POST" style="display: none;">
								@csrf
							</form>
						</div>
					</li>
					<li class="nav-item">
						<a href="/profile">My account</a>
					</li>
					@endguest

					<!-- <li>
						<a href="{{route('login')}}">
							<span class="fa fa-unlock-alt" aria-hidden="true"></span> Sign In </a>
					</li>
					<li>
						<a href="{{route('register')}}">
							<span class="fa fa-pencil-square-o" aria-hidden="true"></span> Sign Up </a>
					</li> -->

				</ul>

				<!-- //header lists -->


				<!-- <main class="py-4">
					<div id="app">
						<nav class="navbar navbar-expand-md navbar-light bg-white shadow-sm">
							<div class="container">
								<a class="navbar-brand" href="{{ url('/') }}">
									{{ config('app.name', 'Al-Makkah') }}
								</a>
								<button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="{{ __('Toggle navigation') }}">
									<span class="navbar-toggler-icon"></span>
								</button> -->

				<!-- <div class="collapse navbar-collapse" id="navbarSupportedContent">
									<!-- Left Side Of Navbar -->
				<!-- <ul class="navbar-nav mr-auto">

									</ul>

									<!-- Right Side Of Navbar -->
				<!-- <ul class="navbar-nav ml-auto">
										<!-- Authentication Links -->
				<!-- @guest -->
				<!-- <li class="nav-item">
											<a class="nav-link" href="{{ route('login') }}">{{ __('Login') }}</a>
										</li>
										@if (Route::has('register'))
										<li class="nav-item">
											<a class="nav-link" href="{{ route('register') }}">{{ __('Register') }}</a>
										</li>
										@endif
										@else
										<li class="nav-item dropdown">
											<a id="navbarDropdown" class="nav-link dropdown-toggle" href="#" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false" v-pre>
												{{ Auth::user()->name }} <span class="caret"></span>
											</a>  -->
				<!-- 
											<div class="dropdown-menu dropdown-menu-right" aria-labelledby="navbarDropdown">
												<a class="dropdown-item" href="{{ route('logout') }}" onclick="event.preventDefault();
                                                     document.getElementById('logout-form').submit();">
													{{ __('Logout') }}
												</a>

												<form id="logout-form" action="{{ route('logout') }}" method="POST" style="display: none;">
													@csrf
												</form>
											</div>
										</li> -->
				<!-- @endguest
									</ul>
								</div>
							</div>
						</nav>
				</main>  -->

			</div>

			<!-- <div class="container">
					<div class="row justify-content-left">
						<div class="col-md-8">
							<div class="card">
								<div class="card-header">{{ __('WELCOME') }}</div>

								<div class="card-body">
									@if (session('status'))
									<div class="alert alert-success" role="alert">
										{{ session('status') }}
									</div>
									@endif

									{{ __('You are logged in!') }}
								</div>
							</div>
						</div>
					</div>
				</div> -->
			<!-- search -->
			<div class="agileits_search">
				
					
					{{-- <input name="Search" type="search" placeholder="How can we help you today?" required=""> --}}
					<select name="product" id="selectProduct" class="custom-select"></select>
					
					{{-- <button type="submit" class="btn btn-default" aria-label="Left Align">
						<span class="fa fa-search" aria-hidden="true"> </span>
					</button> --}}
				
			</div>
			<!-- //search -->
			<!-- cart details -->
			<div class="top_nav_right">
				<div class="wthreecartaits wthreecartaits2 cart cart box_1">
					

					<a href="/checkout"><button class="w3view-cart" type="submit" name="submit" value="" style="width:50px;">
							<i class="fa fa-cart-arrow-down total_quantity" aria-hidden="true">{{Cart::getTotalQuantity()}}</i>
						</button></a>
				

					

				</div>
			</div>
			<!-- //cart details -->
			<div class="clearfix"></div>
		</div>
		<div class="clearfix"></div>
	</div>
	</div>
	<!-- shop locator (popup) -->
	<!-- Button trigger modal(shop-locator) -->
	<div id="small-dialog1" class="mfp-hide">
		<div class="select-city">
			<iframe src="https://www.google.com/maps/embed?pb=!1m14!1m8!1m3!1d414.6621510831279!2d72.77537776689081!3d33.752984920923836!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x38dfa6ebf07c3ef1%3A0xb6f85926840e3a65!2sAl-Makkah%20Shopping%20Mart!5e0!3m2!1sen!2s!4v1593688845705!5m2!1sen!2s" width="600" height="450" frameborder="0" style="border:0;" allowfullscreen="" aria-hidden="false" tabindex="0"></iframe>
			<div class="clearfix"></div>
		</div>
	</div>
	<!-- //shop locator (popup) -->
	<!-- signin Model -->
	<!-- Modal1 -->
	<div class="modal fade" id="myModal1" tabindex="-1" role="dialog">
		<div class="modal-dialog">
			<!-- Modal content-->
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal">&times;</button>
				</div>
				<div class="modal-body modal-body-sub_agile">
					<div class="main-mailposi">
						<span class="fa fa-envelope-o" aria-hidden="true"></span>
					</div>
					<div class="modal_body_left modal_body_left1">
						<form method="POST" action="#">
							sign in
							@csrf
							<!-- m,k<h3 class="agileinfo_sign">Sign In </h3> -->
							<p>
								Sign In now, Let's start your Grocery Shopping. Don't have an account?
								<a href="#" data-toggle="modal" data-target="#myModal2">
									Sign Up Now</a>
							</p>
							<!-- <form action="#" method="post"> -->
							<div class="styled-input agile-styled-input-top">
								<!-- <input type="text" placeholder="User Name" name="Name" required=""> -->

								<input id="email" type="email" class="form-control @error('email') is-invalid @enderror" name="email" value="{{ old('email') }}" required autocomplete="email" autofocus>

								@error('email')
								<span class="invalid-feedback" role="alert">
									<strong>{{ $message }}</strong>
								</span>
								@enderror
								<!-- ......................email cheack........................... -->

								<div class="styled-input">
									<!-- <input type="password" placeholder="Password" name="password" required=""> -->
									<!--                         -->
									<input id="password" type="password" class="form-control @error('password') is-invalid @enderror" name="password" required autocomplete="current-password">

									@error('password')
									<span class="invalid-feedback" role="alert">
										<strong>{{ $message }}</strong>
									</span>
									@enderror

									<!-- password check................ -->
								</div>

								<!-- remember me     -->
								<div class="col-md-6 offset-md-4">
									<div class="form-check">
										<input class="form-check-input" type="checkbox" name="remember" id="remember" {{ old('remember') ? 'checked' : '' }}>

										<label class="form-check-label" for="remember">
											{{ __('Remember Me') }}
										</label>
									</div>
								</div>
								<!-- ..................end remember me -->

								<!-- <input type="submit" value="Sign In"> -->

								<button type="submit" class="btn btn-primary">



									{{ __('SIGN-IN') }}
								</button>

								@if (Route::has('password.request'))
								<a class="btn btn-link" href="#">
									{{ __('Forgot Your Password?') }}
								</a>
								@endif
							</div>
							<!-- </form> -->
							<div class="clearfix"></div>
						</form>
					</div>
					<div class="clearfix"></div>
				</div>
			</div>
			<!-- //Modal content-->
		</div>
	</div>
	<!-- //Modal1 -->
	<!-- //signin Model -->
	<!-- signup Model -->
	<!-- Modal2 -->
	<div class="modal fade" id="myModal2" tabindex="-1" role="dialog">
		<div class="modal-dialog">
			<!-- Modal content-->
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal">&times;</button>
				</div>
				<div class="modal-body modal-body-sub_agile">
					<div class="main-mailposi">
						<span class="fa fa-envelope-o" aria-hidden="true"></span>
					</div>
					<div class="modal_body_left modal_body_left1">
						<form method="POST" action="#">
							@csrf
							<h3 class="agileinfo_sign">Sign Up</h3>
							<p>
								Come join the Al Makkah! Let's set up your Account.
							</p>
							<form action="#" method="post">
								<div class="styled-input agile-styled-input-top">
									<!-- <input type="text" placeholder="Name" name="Name" required=""> -->
									<!-- name check  -->
									<input id="name" type="text" class="form-control @error('name') is-invalid @enderror" name="name" value="{{ old('name') }}" required autocomplete="name" autofocus>

									@error('name')
									<span class="invalid-feedback" role="alert">
										<strong>{{ $message }}</strong>
									</span>
									@enderror
									<!-- ..................................... -->
								</div>
								<div class="styled-input">
									<!-- <input type="email" placeholder="E-mail" name="Email" required=""> -->

									<!-- email check -->
									<input id="email" type="email" class="form-control @error('email') is-invalid @enderror" name="email" value="{{ old('email') }}" required autocomplete="email">

									@error('email')
									<span class="invalid-feedback" role="alert">
										<strong>{{ $message }}</strong>
									</span>
									@enderror
									<!-- ....................... -->
								</div>
								<div class="styled-input">
									<!-- <input type="password" placeholder="Password" name="password" id="password1" required=""> -->
									<!-- password check -->
									<input id="password" type="password" class="form-control @error('password') is-invalid @enderror" name="password" required autocomplete="new-password">

									@error('password')
									<span class="invalid-feedback" role="alert">
										<strong>{{ $message }}</strong>
									</span>
									@enderror
									<!-- ........................... -->
								</div>
								<div class="styled-input">
									<!-- <input type="password" placeholder="Confirm Password" name="Confirm Password" id="password2" required=""> -->
									<!-- confirm password -->

									<input id="password-confirm" type="password" class="form-control" name="password_confirmation" required autocomplete="new-password">



									<!-- ....................................... -->
								</div>
								<button type="submit" value="sign-up" class="btn btn-primary">
									{{ __('Sign up') }}
								</button>
							</form>
							<p>
								<a href="#">By clicking register, you Agree to our terms</a>
							</p>
						</form>
					</div>
				</div>
			</div>
			<!-- //Modal content-->
		</div>
	</div>
	<!-- //Modal2 -->
	<!-- //signup Model -->
	<!-- //header-bot -->
	<!-- navigation -->
	<div class="ban-top">
		<div class="container">
			<div class="agileits-navi_search">
				{{-- <form action="#" method="post"> --}}
				{{-- <select id="agileinfo-nav_search" name="agileinfo_search" required="">
						<a href="" value="">ALL Categories</a>
						<a href="/rice">>Rice,Flour and Pulses</a>
						
						<option value="Household">Household</option>
						<option value="Snacks &amp; Beverages">Snacks & Beverages</option>
						<option value="Personal Care">Personal Care</option>
						<option value="Gift Hampers">Gift Hampers</option>
						<option value="Fruits &amp; Vegetables">Fruits & Vegetables</option>
						<option value="Baby Care">Baby Care</option>
						<option value="Soft Drinks &amp; Juices">Soft Drinks & Juices</option>
						<option value="Frozen Food">Frozen Food</option>
						<option value="Bread &amp; Bakery">Bread & Bakery</option>
						<option value="Sweets">Sweets</option> --}}
				{{-- </select> --}}
				{{-- </form> --}}
				<div class="dropdown nav-stylehead">
					<button onclick="myFunction()" class="dropbtn nav-stylehead ">Quick Items ↓ </button>
					<div id="myDropdown" class="dropdown-content">
						<a href="/rice">Rice,Flour & Pulses</a>
						<a href="/bakery">Bakery Items</a>
						<a href="/masalas">Masala & Spices</a>
						<a href="/snack">Snacks</a>
						<a href="/detergent">Detergets</a>
					</div>
				</div>
			</div>
			<div class="top_nav_left">
				<nav class="navbar navbar-default">
					<div class="container-fluid">
						<!-- Brand and toggle get grouped for better mobile display -->
						<div class="navbar-header">
							<button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1" aria-expanded="false">
								<span class="sr-only">Toggle navigation</span>
								<span class="icon-bar"></span>
								<span class="icon-bar"></span>
								<span class="icon-bar"></span>
							</button>
						</div>
						<!-- Collect the nav links, forms, and other content for toggling -->
						<div class="collapse navbar-collapse menu--shylock" id="bs-example-navbar-collapse-1">
							<ul class="nav navbar-nav menu__list">
								<li class="active">
									<a class="nav-stylehead" href="/">Home
										<span class="sr-only">(current)</span>
									</a>
								</li>
								<li class="">
									<a class="nav-stylehead" href="/about">About Us</a>
								</li>
								<li class="dropdown">
									<a href="#" class="dropdown-toggle nav-stylehead" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">Kitchen
										<span class="caret"></span>
									</a>
									<ul class="dropdown-menu multi-column columns-3">
										<div class="agile_inner_drop_nav_info">
											<div class="col-sm-4 multi-gd-img">
												<ul class="multi-column-dropdown">
													<li>
														<a href="/bakery">Bakery</a>
													</li>

													<li>
														<a href="/coffee">Coffee, Tea & Beverages</a>
													</li>
													<li>
														<a href="/dry">Dried Fruits, Nuts</a>
													</li>
													<li>
														<a href="/sweets">Sweets, Chocolate</a>
													</li>
													<li>
														<a href="/masalas">Spices & Masalas</a>
													</li>
													<li>
														<a href="/jams">Jams, Honey & Spreads</a>
													</li>
												</ul>
											</div>
											<div class="col-sm-4 multi-gd-img">
												<ul class="multi-column-dropdown">
													<li>
														<a href="/pickles">Pickles</a>
													</li>
													<li>
														<a href="/pastas">Pasta & Noodles</a>
													</li>
													<li>
														<a href="/rice">Rice, Flour & Pulses</a>
													</li>
													<li>
														<a href="/sauces">Sauces & Cooking Pastes</a>
													</li>
													<li>
														<a href="/snack">Snack Foods</a>
													</li>
													<li>
														<a href="/oil">Oils, Vinegars</a>
													</li>

												</ul>
											</div>
											<div class="col-sm-4 multi-gd-img">
												<img src="images/nav.png" alt="">
											</div>
											<div class="clearfix"></div>
										</div>
									</ul>
								</li>
								<li class="dropdown">
									<a href="#" class="dropdown-toggle nav-stylehead" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">Household
										<span class="caret"></span>
									</a>
									<ul class="dropdown-menu multi-column columns-3">
										<div class="agile_inner_drop_nav_info">
											<div class="col-sm-6 multi-gd-img">
												<ul class="multi-column-dropdown">
													{{-- <li>
														<a href="product2.html">Kitchen & Dining</a>
													</li> --}}
													<li>
														<a href="/detergent">Detergents</a>
													</li>
													<li>
														<a href="/cleaner">Utensil Cleaners</a>
													</li>
													<li>
														<a href="/floors">Floor & Other Cleaners</a>
													</li>

													<li>
														<a href="/repellent">Repellents & Fresheners</a>
													</li>
													<li>
														<a href="/dishwashs"> Dishwash</a>
													</li>
												</ul>
											</div>
											<div class="col-sm-6 multi-gd-img">
												<ul class="multi-column-dropdown">

													<li>
														<a href="/cleaning">Cleaning Accessories</a>
													</li>





												</ul>
											</div>
											<div class="clearfix"></div>
										</div>
									</ul>
								</li>
								<li class="">
									<a class="nav-stylehead" href="/faq">Faqs</a>
								</li>
								<li class="dropdown">
									<a class="nav-stylehead dropdown-toggle" href="#" data-toggle="dropdown">Pages
										<b class="caret"></b>
									</a>
									<ul class="dropdown-menu agile_short_dropdown">
										<li>
											<a href="{{env('ADMIN_URL')."/login"}}">Admin</a>
										</li>
										{{-- <li>
											<a href="typography.html">Typography</a>
										</li> --}}
									</ul>
								</li>
								<li class="">
									<a class="nav-stylehead" href="/contact">Contact</a>
								</li>
							</ul>
						</div>
					</div>
				</nav>
			</div>
		</div>
	</div>


	




