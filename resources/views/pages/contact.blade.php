@extends('layouts.app')

@section('content')
@include('layouts.menubar')
@php
$site = DB::table('sitesetting')->first();
@endphp
<link rel="stylesheet" type="text/css" href="{{ asset('frontend/styles/contact_styles.css') }}">
<link rel="stylesheet" type="text/css" href="{{ asset('frontend/styles/contact_responsive.css') }}">


<div class="contact_info">
 <div class="container">
  <div class="row">
   <div class="col-lg-10 offset-lg-1">
    <div class="contact_info_container d-flex flex-lg-row flex-column justify-content-between align-items-between">

     <!-- Contact Item -->
     <div class="contact_info_item d-flex flex-row align-items-center justify-content-start">
      <div class="contact_info_image"><img src="images/contact_1.png" alt=""></div>
      <div class="contact_info_content">
       <div class="contact_info_title">Số điện thoại</div>
       <div class="contact_info_text">{{ $site->phone_one }}</div>
      </div>
     </div>

     <!-- Contact Item -->
     <div class="contact_info_item d-flex flex-row align-items-center justify-content-start">
      <div class="contact_info_image"><img src="images/contact_2.png" alt=""></div>
      <div class="contact_info_content">
       <div class="contact_info_title">Email</div>
       <div class="contact_info_text">{{ $site->email }}</div>
      </div>
     </div>

     <!-- Contact Item -->
     <div class="contact_info_item d-flex flex-row align-items-center justify-content-start">
      <div class="contact_info_image"><img src="images/contact_3.png" alt=""></div>
      <div class="contact_info_content">
       <div class="contact_info_title">Địa chỉ</div>
       <div class="contact_info_text">{{ $site->company_address}}</div>
      </div>
     </div>

    </div>
   </div>
  </div>
 </div>
</div>

<!-- Contact Form -->

<div class="contact_form">
 <div class="container">
  <div class="row">
   <div class="col-lg-10 offset-lg-1">
    <div class="contact_form_container">
     <div class="contact_form_title">Kết nối với chúng tôi</div>

     <form action="{{ route('contact.form') }}" id="contact_form" method="POST">
      @csrf
      <div class="contact_form_inputs d-flex flex-md-row flex-column justify-content-between align-items-between">
       <input type="text" id="contact_form_name" class="contact_form_name input_field" placeholder="Tên của bạn" required="required" data-error="Vui lòng nhập tên" name="name">
       <input type="text" id="contact_form_email" class="contact_form_email input_field" placeholder="Email" required="required" data-error="Vui lòng nhập email" name="email">
       <input type="text" id="contact_form_phone" class="contact_form_phone input_field" placeholder="Số điện thoại của bạn" name="phone">
      </div>
      <div class="contact_form_text">
       <textarea id="contact_form_message" class="text_field contact_form_message" name="message" rows="4" placeholder="Thông điệp mà bạn muốn gửi gắm cho chúng tôi " required="required" data-error="Vui lòng nhập lời nhắn gửi!!!"></textarea>
      </div>
      <div class="contact_form_button">
       <button type="submit" class="button contact_submit_button">Gửi</button>
      </div>
     </form>

    </div>
   </div>
  </div>
 </div>
 <div class="panel"></div>
</div>

<script src="{{ asset('frontend/js/contact_custom.js') }}"></script>
@endsection