@extends('layout.script')
@section('content')
<?php
use App\Helpers\UtilsHelper;
?>


<div class="container">
    <div class="row">
        <div class="col-md-3" style="background-color: white;padding-top:10px;">
<ul class="nav nav-pills nav-stacked">
<li role="presentation" ><a href="/profile">Profile</a></li>
  <li role="presentation"><a href="/userorder">Orders</a></li>
  <li role="presentation" class="active"><a href="/wishlist">Wishlist</a></li>
  </ul>
</div>

<div class="col-md-9" style="background-color: white;">
<table class="table table-bordered">
    <thead>
        <th>
            Id
        </th>

        <th>
            Image
        </th>
        <th>
            Name
        </th>
       
    </thead>
    <tbody>
        @foreach($wishlist as $order)
        <tr>
            <td>
                <a href="">{{$order->product_id}}</a>
            </td>
            
            <td>
               <img src="{!!UtilsHelper::resolveImage($order->product->image)!!}" alt="" style="width: 100px;"> 
                
            </td>
            <td>
                {{$order->product->name}}
            </td>
            <td>

            </td>
        </tr>
        @endforeach
    </tbody>
    <tfoot>
        <tr>
            <td>
        {!! $wishlist->links()!!}
            </td>
    </tr>
    </tfoot>
</table>
    
</div>

</div>
</div>

@endsection