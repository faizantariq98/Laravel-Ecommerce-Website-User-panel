@extends('layout.script')
@section('content')

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
                    <a href="index.html">Invoice</a>
                    <i>|</i>
                </li>
                <li>Payment</li>
            </ul>
        </div>
    </div>
</div>
<!-- //page -->
<!-- payment page-->
<div class="privacy">
    <div class="container">
        <!-- tittle heading -->
        <h3 class="tittle-w3l">Final Invoice 
            <span class="heading-style">
                <i></i>
                <i></i>
                <i></i>
            </span>
        </h3>
        <!-- //tittle heading -->
        <table class="timetable_sub">
            <thead>
                <tr>
                    <th>SL No.</th>
                    <th>Product Name</th>
                    <th>Quantity</th>

                    <th>Price</th>
                    <th>total Price</th>
                </tr>
            </thead>
                
            <tbody>

                <?php $sum=0;?>
                @foreach (Cart::getContent() as $item)
                    
                
                <tr>
                    <td>
                        {{$loop->iteration}}
                        </td>
                <td>
                    {{$item->name}}
                </td>
                    <td>
                        <div>
                            {{$item->quantity}}
                        </div>
                    </td>
                
                <td>
                        {{$item->price}}
                        <?php $sum+=$item->price;?>
                </td>
                <td>
                    {{Cart::get($item->id)->getPriceSum()}}
                </td>
                   
                </tr>
                @endforeach
            </tbody>
            <tfoot>
                <tr>
                    <td colspan="2"><b>Total</td>
                    <td>{{Cart::getTotalQuantity()}}</td>
                    <td>{{$sum}}</td>
                    
                    <td>{{Cart::getTotal()}}</td>
                </tr>
            </tfoot>

        </table>

<br><br><br>

        <div class="address_form_agile">
            <h4 style="color: black"><b>Contact Details</h4>

                <table class="timetable_sub">
                    <thead>
                        <tr>
                            <th>Name</th>
                            <th>Mobile Number</th>
                            <th>Address</th>
        
                            <th>Area</th>
                            <th>Address Type</th>
                        </tr>
                    </thead>
                        
                    <tbody>
                        <?php $user=session()->get("user")?>
                        <tr>
                            
                        <td>
                            {{$user["name"]}}
                        </td>
                            <td>
                                {{$user["mobile"]}}
                            </td>
                        
                        <td>
                               {{$user["address"]}} 
                        </td>

                        <td>
                            {{$user["area"]}}
                        </td>
                        <td>
                            {{$user["areatype"]}}
                        </td>
                            
                        </tr>

                        <tr>

                        </tr>
                        
                    </tbody>
        
                </table>

        </div>
        <br>
        <br>
        <form action="/finalcheckout" method="post" id="my_captcha_form">
            @csrf
            <div class="g-recaptcha" data-sitekey="6LfsiSwaAAAAAEUguB70N_LM1ExdVyatBgF-Wlqm"></div>
            <button class="submit check_out">CHECKOUT</button>
        </form>
            <br>
        <a href="{{url('/checkout')}}"class="btn btn-primary btn-lg" style="margin-left: 5px; padding:12px 16px !important;border-radius:0 !important;">EDIT</a>
<!-- //newsletter -->
<!-- footer -->

<script>
    document.getElementById("my_captcha_form").addEventListener("submit",function(evt)
{

var response = grecaptcha.getResponse();
if(response.length == 0) 
{ 
//reCaptcha not verified
alert("please verify you are human!"); 
evt.preventDefault();
return false;
}
//captcha verified
//do the rest of your validations here

});
</script>

@endsection()
