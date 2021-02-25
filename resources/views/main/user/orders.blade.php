@extends('layout.script')
@section('content')
<?php
use App\Helpers\UtilsHelper;
?>


<div class="container">
    <div class="row">
        <div class="col-md-3" style="background-color: white;padding-top:10px;">
<ul class="nav nav-pills nav-stacked">
<li role="presentation"><a href="/profile">Profile</a></li>
  <li role="presentation"class="active"><a href="/userorder">Orders</a></li>
  <li role="presentation"><a href="/wishlist">Wishlist</a></li>
  </ul>
</div>

<div class="col-md-9" style="background-color: white;">
<table class="table table-bordered">
    <thead>
        <th>
            Order Id
        </th>
        <th>
            Date
        </th>
        <th>
            Products
        </th>
        <th>
            Total
        </th>
        <th>
            Status
        </th>
    </thead>
    <tbody>
        @foreach($orders as $order)
        <tr>
            <td>
                {{$order->id}}
            </td>
            <td>
                {{$order->created_at}}
            </td>
            <td>
                @foreach ($order->cart as $item)
                    {{$item->product->name}},
                @endforeach
            </td>
            <td>
                {{$order->total}}
            </td>
            <td>
                {!!UtilsHelper::status($order->status)!!}
            </td>
        </tr>
        @endforeach
    </tbody>
    <tfoot>
        <tr>
            <td>
        {!! $orders->links()!!}
            </td>
    </tr>
    </tfoot>
</table>
    
</div>

</div>
</div>

@endsection