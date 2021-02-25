@extends('layout.script')
@section('content')
<?php
use App\Helpers\UtilsHelper;
?>

@if(session()->has('message'))
<div class="alert alert-success alert-dismissible" role="alert">
  <button type="button" class="close" data-dismiss="alert" aria-label="Close"><span aria-hidden="true">&times;</span></button>
  <strong>Success!</strong>{{session()->get('message')}}
</div>

@endif

<div class="container">
    <div class="row">
        <div class="col-md-3" style="background-color: white;padding-top:10px;">
<ul class="nav nav-pills nav-stacked">
<li role="presentation" class="active"><a href="/profile">Profile</a></li>
  <li role="presentation"><a href="/userorder">Orders</a></li>
  <li role="presentation"><a href="/wishlist">Wishlist</a></li>
  </ul>
</div>

<div class="col-md-9">

  

    <form class="form-horizontal" method="post" action="/updateprofile">
      {{ csrf_field() }}
        <div class="form-group">
          <label for="inputEmail3" class="col-sm-3 control-label">Email</label>
          <div class="col-sm-9">
            <input type="email" class="form-control" id="inputEmail3" placeholder="Email" value="{{Auth::user()->email}}" readonly>
            
          </div>
        </div>
        <div class="form-group">
          <label for="inputEmail3" class="col-sm-3 control-label">Name</label>
          <div class="col-sm-9">
            <input type="text" class="form-control" id="inputName" name="name" placeholder="Name" value="{{Auth::user()->name}}">
            @if($errors->has('name'))
          <div class="text-danger">{{ $errors->first('name') }}</div>
            @endif
          </div>
        </div>

        <div class="form-group">
          <label for="inputPassword3" class="col-sm-3 control-label"> Phone Number</label>
          <div class="col-sm-9">
            <input type="number" class="form-control"  placeholder="phone" name="phone" value="{{Auth::user()->phone}}">
            @if($errors->has('phone'))
          <div class="text-danger">{{ $errors->first('phone') }}</div>
            @endif
          </div>
        </div>

        <div class="form-group">
          <label for="inputPassword3" class="col-sm-3 control-label">   </label>
          <div class="col-sm-9">
            <p>Leave password field empty to not update password</p>
          </div>
        </div>
    
       
        <div class="form-group">
          <label for="inputPassword3" class="col-sm-3 control-label">Password</label>
          <div class="col-sm-9">
            <input type="password" class="form-control" id="Password" placeholder="Password" name="password">
            @if($errors->has('password'))
          <div class="text-danger">{{ $errors->first('password') }}</div>
            @endif
          </div>
          
        </div>
        <div class="form-group">
          <label for="inputPassword3" class="col-sm-3 control-label"> Confirm Password</label>
          <div class="col-sm-9">
            <input type="password" class="form-control" id="confirmpassword" placeholder="Confirm password" name="password_confirmation">
          </div>
        </div>


        <div class="form-group">
          <div class="col-sm-offset-2 col-sm-10">
            <button type="submit" class="btn btn-success">Save</button>
          </div>
        </div>
      </form>

</div>

</div>
</div>

@endsection