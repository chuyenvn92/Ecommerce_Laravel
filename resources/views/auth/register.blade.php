@extends('layouts.app')

@section('content')
    <link rel="stylesheet" type="text/css" href="{{ asset('frontend/styles/contact_styles.css') }}">
    <link rel="stylesheet" type="text/css" href="{{ asset('frontend/styles/contact_responsive.css') }}">
    <div class="contact_form">
        <div class="container">
            <div class="row">
                <div class="col-lg-5 offset-lg-3" style="border: 1px solid grey; padding:20px; border-radius: 20px;">
                    <div class="contact_form_container">
                        <div class="contact_form_title text-center">Đăng kí</div>

                        <form action="{{ route('register') }}" id="contact_form" method="POST">
                            @csrf
                            <div class="form-group">
                                <label for="exampleInputEmail1">Tên của bạn</label>
                                <input type="text" class="form-control" aria-describedby="emailHelp"
                                    placeholder="Tên của bạn" name="name" required="">
                            </div>
                            <div class="form-group">
                                <label for="exampleInputEmail1">Số điện thoại</label>
                                <input type="text" class="form-control @error('phone') is-invalid @enderror" name="phone"
                                    value="{{ old('phone') }}" aria-describedby="emailHelp" placeholder="Nhập số điện thoại">
                                    @error('phone')
                                    <span class="invalid-feedback" role="alert">
                                        <strong>{{ $message }}</strong>
                                    </span>
                                @enderror
                            </div>
                            <div class="form-group">
                                <label for="exampleInputEmail1">Email</label>
                                <input type="email" class="form-control @error('email') is-invalid @enderror" name="email"
                                    value="{{ old('email') }}" aria-describedby="emailHelp" placeholder="Email">
                                @error('email')
                                    <span class="invalid-feedback" role="alert">
                                        <strong>{{ $message }}</strong>
                                    </span>
                                @enderror
                            </div>
                            <div class="form-group">
                                <label for="exampleInputEmail1">Mật khẩu</label>
                                <input type="password" class="form-control @error('password') is-invalid @enderror"
                                    aria-describedby="emailHelp" placeholder="Nhập mật khẩu" name="password" required="">
                                @error('password')
                                    <span class="invalid-feedback" role="alert">
                                        <strong>{{ $message }}</strong>
                                    </span>
                                @enderror
                            </div>
                            <div class="form-group">
                                <label for="exampleInputEmail1">Nhập lại mật khẩu</label>
                                <input type="password" class="form-control" aria-describedby="emailHelp"
                                    placeholder="Nhập lại mật khẩu" name="password_confirmation" required="">
                            </div>
                            <div class="form-group">
                                <label for="exampleInputEmail1">Địa chỉ</label>
                                <input type="text" class="form-control @error('address') is-invalid @enderror"
                                    aria-describedby="emailHelp" placeholder="Nhập địa chỉ cụ thể" name="address" required="">
                                @error('address')
                                    <span class="invalid-feedback" role="alert">
                                        <strong>{{ $message }}</strong>
                                    </span>
                                @enderror
                            </div>
                            <div class="form-group">
                                <label for="exampleInputEmail1">Thành phố</label>
                                <input type="text" class="form-control @error('city') is-invalid @enderror"
                                    aria-describedby="emailHelp" placeholder="Nhập tên thành phố" name="city" required="">
                                @error('city')
                                    <span class="invalid-feedback" role="alert">
                                        <strong>{{ $message }}</strong>
                                    </span>
                                @enderror
                            </div>
                            <div class="contact_form_button">
                                <button type="submit" style="margin-left:auto;margin-right:auto;display:block" class="btn btn-info">Đăng kí</button>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>
@endsection
