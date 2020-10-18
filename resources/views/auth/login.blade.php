@extends('layouts.app')

@section('content')
<link rel="stylesheet" type="text/css" href="{{ asset('public/frontend/styles/contact_styles.css') }}">
<link rel="stylesheet" type="text/css" href="{{ asset('public/frontend/styles/contact_responsive.css') }}">
<div class="contact_form">
    <div class="container">
        <div class="row">
            <div class="col-lg-5 offset-lg-1" style="border: 1px solid grey; padding:20px; border-radius: 20px;">
                <div class="contact_form_container">
                    <div class="contact_form_title text-center">Đăng nhập</div>

                    <form action="{{ route('login') }}" id="contact_form" method="POST">
                        @csrf
                        <div class="form-group">
                            <label for="exampleInputEmail1">Email hoặc Số điện thoại</label>
                            <input type="email" class="form-control @error('email') is-invalid @enderror" name="email" aria-describedby="emailHelp" required="" autofocus>
                            @error('email')
                            <span class="invalid-feedback" role="alert">
                                <strong>Tài khoản hoặc mật khẩu không chính xác</strong>
                            </span>
                            @enderror
                        </div>
                        <div class="form-group">
                            <label for="exampleInputEmail1">Mật khẩu</label>
                            <input type="password" class="form-control @error('password') is-invalid @enderror" aria-describedby="emailHelp" name="password" required="">
                            @error('password')
                            <span class="invalid-feedback" role="alert">
                                <strong>{{ $message }}</strong>
                            </span>
                            @enderror
                        </div>
                        <div class="contact_form_button">
                            <button type="submit" class="btn btn-info">Đăng nhập</button>
                        </div>
                    </form>
                    <br>
                    <a href="{{ route('password.request') }}">Quên mật khẩu</a><br><br>
                    <button type=submit class="btn btn-primary btn-block"><i class="fab fa-facebook mr-2"></i>Đăng nhập với Facebook</button>
                    <a href="{{ url('/auth/redirect/google') }}" class="btn btn-danger btn-block"><i class="fab fa-google mr-2"></i>Đăng nhập với Google</a>
                </div>
            </div>
            <div class="col-lg-5 offset-lg-1" style="border: 1px solid grey; padding:20px; border-radius: 20px;">
                <div class="contact_form_container">
                    <div class="contact_form_title text-center">Đăng kí</div>

                    <form action="{{ route('register') }}" id="contact_form" method="POST">
                        @csrf
                        <div class="form-group">
                            <label for="exampleInputEmail1">Tên của bạn</label>
                            <input type="text" class="form-control" aria-describedby="emailHelp" placeholder="Tên của bạn" name="name" required="">
                        </div>
                        <div class="form-group">
                            <label for="exampleInputEmail1">Số điện thoại</label>
                            <input type="text" class="form-control @error('phone') is-invalid @enderror" name="phone" value="{{ old('phone') }}" aria-describedby="emailHelp" placeholder="Nhập phone">
                        </div>
                        <div class="form-group">
                            <label for="exampleInputEmail1">Email</label>
                            <input type="email" class="form-control" name="email" value="{{ old('email') }}" aria-describedby="emailHelp" placeholder="Email">
                        </div>
                        <div class="form-group">
                            <label for="exampleInputEmail1">Mật khẩu</label>
                            <input type="password" class="form-control" aria-describedby="emailHelp" placeholder="Nhập mật khẩu" name="password" required="">
                        </div>
                        <div class="form-group">
                            <label for="exampleInputEmail1">Nhập lại mật khẩu</label>
                            <input type="password" class="form-control" aria-describedby="emailHelp" placeholder="Nhập lại mật khẩu" name="password_confirmation" required="">
                        </div>
                        <div class="contact_form_button">
                            <button type="submit" class="btn btn-info">Đăng kí</button>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>
    <div class="panel"></div>
</div>
@endsection