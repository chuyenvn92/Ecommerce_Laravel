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

                    <form action="#" id="contact_form">
                        <div class="form-group">
                            <label for="exampleInputEmail1">Email hoặc Số điện thoại</label>
                            <input type="text" class="form-control" aria-describedby="emailHelp" name="email" required="">
                        </div>
                        <div class="form-group">
                            <label for="exampleInputEmail1">Mật khẩu</label>
                            <input type="password" class="form-control" aria-describedby="emailHelp" name="password" required="">
                        </div>
                        <div class="contact_form_button">
                            <button type="submit" class="btn btn-info">Đăng nhập</button>
                        </div>
                    </form>
                    <br>
                    <button type=submit class="btn btn-primary btn-block"><i class="fab fa-facebook mr-2"></i>Đăng nhập với Facebook</button>
                    <button type=submit class="btn btn-danger btn-block"><i class="fab fa-google mr-2"></i>Đăng nhập với Google</button>
                </div>
            </div>
            <div class="col-lg-5 offset-lg-1" style="border: 1px solid grey; padding:20px; border-radius: 20px;">
                <div class="contact_form_container">
                    <div class="contact_form_title text-center">Đăng kí</div>

                    <form action="#" id="contact_form">
                        <div class="form-group">
                            <label for="exampleInputEmail1">Tên của bạn</label>
                            <input type="text" class="form-control" aria-describedby="emailHelp" placeholder="tên của bạn" name="name" required="">
                        </div>
                        <div class="form-group">
                            <label for="exampleInputEmail1">Số điện thoại</label>
                            <input type="text" class="form-control" aria-describedby="emailHelp" placeholder="Nhập phone" name="phone" required="">
                        </div>
                        <div class="form-group">
                            <label for="exampleInputEmail1">Email</label>
                            <input type="email" class="form-control" aria-describedby="emailHelp" placeholder="Email" name="email" required="">
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