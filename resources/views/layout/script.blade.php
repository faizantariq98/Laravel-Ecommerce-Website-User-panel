<?php
use App\Helpers\UtilsHelper;
?>
<!DOCTYPE html>
<html lang="zxx">

<head>
	<link rel="shortcut icon" href="{{asset('images/favicon.png')}}" type="image/x-icon">
	<title>AL-Makkah</title>
	<!--/tags -->
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<meta name="csrf-token" content="{{csrf_token()}}">
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
	<meta name="keywords" content="Grocery Shoppy Responsive web template, Bootstrap Web Templates, Flat Web Templates, Android Compatible web template, 
Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyEricsson, Motorola web design" />
	<script>
		addEventListener("load", function () {
			setTimeout(hideURLbar, 0);
		}, false);

		function hideURLbar() {
			window.scrollTo(0, 1);
		}
	</script>
	<!--//tags -->
	<link href="{{asset('css/bootstrap.css')}}" rel="stylesheet" type="text/css" media="all" />
	
	<link href="{{asset('css/style.css')}}" rel="stylesheet" type="text/css" media="all" />
	<link href="{{asset('css/font-awesome.css')}}" rel="stylesheet">
	<!--pop-up-box-->
	<link href="{{asset('css/popuo-box.css')}}" rel="stylesheet" type="text/css" media="all" />
	<!--//pop-up-box-->
	<!-- price range -->
	<link rel="stylesheet" type="text/css" href="{{asset('css/jquery-ui1.css')}}">
	<!-- fonts -->
	<link href="//fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i,800" rel="stylesheet">
</head><!DOCTYPE html>
<html lang="zxx">

<head>
	<title>Grocery Shoppy an Ecommerce Category Bootstrap Responsive Web Template | Home :: w3layouts</title>
	<!--/tags -->
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
	<meta name="keywords" content="Grocery Shoppy Responsive web template, Bootstrap Web Templates, Flat Web Templates, Android Compatible web template, 
Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyEricsson, Motorola web design" />
	<script>
		addEventListener("load", function () {
			setTimeout(hideURLbar, 0);
		}, false);

		function hideURLbar() {
			window.scrollTo(0, 1);
		}
	</script>
	<!--//tags -->
	<link href="{{asset('css/bootstrap.css')}}" rel="stylesheet" type="text/css" media="all" />
	<link href="{{asset('css/style.css')}}" rel="stylesheet" type="text/css" media="all" />
	<link href="{{asset('css/font-awesome.css')}}" rel="stylesheet">
	<!--pop-up-box-->
	<link href="{{asset('css/popuo-box.css')}}" rel="stylesheet" type="text/css" media="all" />
	<!--//pop-up-box-->
	<!-- price range -->
	<link rel="stylesheet" type="text/css" href="{{asset('css/jquery-ui1.css')}}">
	<link rel="stylesheet" type="text/css" href="{{asset('select2\css\select2.min.css')}}">
	<!-- fonts -->
	<link href="//fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i,800" rel="stylesheet">
	<script src="https://www.google.com/recaptcha/api.js" async defer></script>

	

</head>
<body>
	<div id="loader" ></div>
	<main style="display:none;" id="myDiv" class="animate-bottom">
	@include('layout.header')




	@yield('content')
	
	</main>


    <script src="{{asset('js/jquery-2.1.4.min.js')}}"></script>
	<script src="{{asset('select2/js/select2.min.js')}}"></script>

	<script>
		var CSRF_TOKEN = $('meta[name="csrf-token"]').attr('content');
    $(document).ready(function () {

        $("#selectProduct").select2({
            allowClear: true,
            placeholder: "Select Product",
            ajax: {
                url: "{{url('/getProducts')}}",
                type: "get",
                dataType: 'json',
                delay: 250,
                data: function (params) {
                    return {
                        _token: CSRF_TOKEN,
                        search: params.term // search term
                    };
                },
                processResults: function (response) {
                    return {
                        results: response
                    };
                },
                success: function (data) {
                    if (data.length == 0) {
                        $('#errorMsg').modal('show');
                    }
                },
				
  				templateResult: function(data) {
    			return data.text;
  				},
  				templateSelection: function(data) {
    			return data.text;
				  },
                cache: true
            }
        })
		
		@if(!empty(request()->get('product_id')))
        $("#selectProduct").select2("trigger", "select", {
            data: {id: {{request()->get('product_id') }}}
        });
        @endif
		
		
		
        $(document).on('change', '#selectProduct', function () {
		
            window.location.href="{{url('product/')}}/"+$(this).val();
        });
        });

	</script>

	<!-- //jquery -->

	<!-- popup modal (for signin & signup)-->
	<script src="{{asset('js/jquery.magnific-popup.js')}}"></script>
	<script>
		$(document).ready(function () {
			$('.popup-with-zoom-anim').magnificPopup({
				type: 'inline',
				fixedContentPos: false,
				fixedBgPos: true,
				overflowY: 'auto',
				closeBtnInside: true,
				preloader: false,
				midClick: true,
				removalDelay: 300,
				mainClass: 'my-mfp-zoom-in'
			});

		});
	</script>
	
	<!-- price range (top products) -->
	<script src="{{asset('js/jquery-ui.js')}}"></script>
	<script>
		//<![CDATA[ 
		$(window).load(function () {
			$("#slider-range").slider({
				range: true,
				min: 0,
				max: 9000,
				values: [50, 6000],
				slide: function (event, ui) {
					$("#amount").val("$" + ui.values[0] + " - $" + ui.values[1]);
				}
			});
			$("#amount").val("$" + $("#slider-range").slider("values", 0) + " - $" + $("#slider-range").slider("values", 1));

		}); //]]>
	</script>
	<!-- //price range (top products) -->

	<!-- flexisel (for special offers) -->
	<script src="{{asset('js/jquery.flexisel.js')}}"></script>
	<script>
		$(window).load(function () {
			$("#flexiselDemo1").flexisel({
				visibleItems: 3,
				animationSpeed: 1000,
				autoPlay: true,
				autoPlaySpeed: 3000,
				pauseOnHover: true,
				enableResponsiveBreakpoints: true,
				responsiveBreakpoints: {
					portrait: {
						changePoint: 480,
						visibleItems: 1
					},
					landscape: {
						changePoint: 640,
						visibleItems: 2
					},
					tablet: {
						changePoint: 768,
						visibleItems: 2
					}
				}
			});

		});
	</script>
	<!-- //flexisel (for special offers) -->

	<!-- password-script -->
	
	<!-- //password-script -->

	<!-- smoothscroll -->
	<script src="{{asset('js/SmoothScroll.min.js')}}"></script>
	<!-- //smoothscroll -->

{{-- loader --}}

	<script>
		var myVar;
		
		$(document).ready(function(){
			myVar = setTimeout(showPage, 3000);
		});

		
		function showPage() {
			$('#loader').css('display','none');
			$('#myDiv').css('display','block');
		}
		</script>

	<!-- start-smooth-scrolling -->
	<script src="{{asset('js/move-top.js')}}"></script>
	<script src="js/easing.js"></script>
	<script>
		jQuery(document).ready(function ($) {
			$(".scroll").click(function (event) {
				event.preventDefault();

				$('html,body').animate({
					scrollTop: $(this.hash).offset().top
				}, 1000);
			});
		});
	</script>
	<!-- //end-smooth-scrolling -->

	

	<!-- for bootstrap working -->
	<script src="{{asset('js/bootstrap.js')}}"></script>
	<!-- //for bootstrap working -->
	<!-- //js-files -->

	<script>
		function myFunction() {
  document.getElementById("myDropdown").classList.toggle("show");
}
window.onclick = function(event) {
  if (!event.target.matches('.dropbtn')) {
    var dropdowns = document.getElementsByClassName("dropdown-content");
    var i;
    for (i = 0; i < dropdowns.length; i++) {
      var openDropdown = dropdowns[i];
      if (openDropdown.classList.contains('show')) {
        openDropdown.classList.remove('show');
      }
    }
  }
}
	</script>
	<script src="{{asset('js/imagezoom.js')}}"></script>

	<script>
		function addwishlist(id){
    
        $.post("{{url('/addwishlist/')}}/"+id,{_token:"{{csrf_token()}}"},function(data, status){
			if($(".icon-"+id).hasClass('fa-heart-o')){
			$(".icon-"+id).removeClass('fa-heart-o')
			$(".icon-"+id).addClass('fa-heart')}
			else{
				$(".icon-"+id).addClass('fa-heart-o')
				$(".icon-"+id).removeClass('fa-heart')
			}
    });}
	</script>

	

@yield('script')
	
<!--Start of Tawk.to Script-->
<script type="text/javascript">
	var Tawk_API=Tawk_API||{}, Tawk_LoadStart=new Date();
	(function(){
	var s1=document.createElement("script"),s0=document.getElementsByTagName("script")[0];
	s1.async=true;
	s1.src='https://embed.tawk.to/5fec9e63df060f156a9247ef/1eqq4lddb';
	s1.charset='UTF-8';
	s1.setAttribute('crossorigin','*');
	s0.parentNode.insertBefore(s1,s0);
	})();
	</script>
	<!--End of Tawk.to Script-->
</body>
</html>