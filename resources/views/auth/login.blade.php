@extends('layout.script')

@section('content')

@if(session()->has('message'))
<div class="alert alert-success alert-dismissible" role="alert">
  <button type="button" class="close" data-dismiss="alert" aria-label="Close"><span aria-hidden="true">&times;</span></button>
  <strong>Success!</strong>{{session()->get('message')}}
</div>

@endif

    @error('email')
    <p role="alert" style="color: red; text-align:center;">
    {{ $message }}
    </p>
@enderror


<!-- <<div class="container">
    <div class="row justify-content-center">
        <div class="col-md-8">
            <div class="card"> -->
<div class="limiter">
    <form method="POST" action="{{ route('login') }}" >
        @csrf
        <main id="main" class="site-main main" style="width: 500px;margin:auto;">
            <section class="section">
           
                                              <div class="row">
                                            

<div class="form-group">
<label for="user_login">Email</label>
<input type="text" name="email" id="user_login" class="form-control" value="" size="20">
@if($errors->has('password'))
          <div class="text-danger">{{ $errors->first('email') }}</div>
            @endif
</div>
<div class="form-group">
<label for="user_pass">Password</label>
<a class="form-sublink" href="">
</a>
<input type="password" name="password" id="user_pass" class="form-control" value="" size="20">
@if($errors->has('password'))
          <div class="text-danger">{{ $errors->first('password') }}</div>
            @endif
</div>

<p class="login-remember"><label><input name="remember" type="checkbox" id="rememberme" value="forever"> </label></p>
<div class="form-group">
<input type="submit" name="wp-submit" id="wp-submit" class="btn btn-brand btn-block btn-primary mb-4" value="Sign In">
<a href="/password/reset">forget password?</a>

</div>

<p class="small text-center text-gray-soft">Don't have an account yet? <a href="/register">Sign up</a></p>
</div>
</section>
</main>
            
        
    </form>
</div>
@endsection