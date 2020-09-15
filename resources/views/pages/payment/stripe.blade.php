@extends('layouts.app')

@section('content')
@include('layouts.menubar')
@php
$setting = DB::table('settings')->first();
$charge = $setting->shiping_charge;
$vat = $setting->vat;
$cart = Cart::Content();
@endphp
<link rel="stylesheet" type="text/css" href="{{ asset('public/frontend/styles/contact_styles.css') }}">
<link rel="stylesheet" type="text/css" href="{{ asset('public/frontend/styles/contact_responsive.css') }}">
<div class="contact_form">
 <div class="container">
  <div class="row">
   <div class="col-lg-7" style="border: 1px solid grey; padding:20px; border-radius: 20px;">
    <div class="contact_form_container">
     <div class="contact_form_title text-center">Sản phẩm</div>
     <div class="cart_items">
      <ul class="cart_list">
       @foreach($cart as $row)
       <li class="cart_item clearfix">
        <div class="cart_item_image text-center"></div>
        <div class="cart_item_info d-flex flex-md-row flex-column justify-content-between">


         <div class="cart_item_name cart_info_col">
          <div class="cart_item_title text-center"><b>Ảnh</b></div>
          <div class="cart_item_text"><img src="{{ asset($row->options->image) }}" alt="" style="width:70px; height:70px;"></div>
         </div>
         <div class="cart_item_name cart_info_col">
          <div class="cart_item_title"><b>Tên sản phẩm</b></div>
          <div class="cart_item_text">{{ $row->name}}</div>
         </div>
         @if($row->options->color == null)

         @else
         <div class="cart_item_color cart_info_col">
          <div class="cart_item_title"><b>Màu sắc</b></div>
          <div class="cart_item_text">{{ $row->options->color}}</div>
         </div>
         @endif
         @if($row->options->size == null)

         @else
         <div class="cart_item_color cart_info_col">
          <div class="cart_item_title"><b>Kích cỡ</b></div>
          <div class="cart_item_text">{{ $row->options->size}}</div>
         </div>
         @endif

         <div class="cart_item_quantity cart_info_col">
          <div class="cart_item_title"><b>Số lượng</b></div>
          <div class="cart_item_text">{{ $row->qty}}</div>
         </div>
         <div class="cart_item_price cart_info_col">
          <div class="cart_item_title"><b>Giá</b></div>
          <div class="cart_item_text">{{ $row->price }}</div>
         </div>
         <div class="cart_item_total cart_info_col">
          <div class="cart_item_title"><b>Thành tiền</b></div>
          <div class="cart_item_text">{{ $row->price*$row->qty }}đ</div>
         </div>
        </div>
       </li>
       @endforeach
      </ul>
     </div>
     <ul class="list-group col-lg-8" style="float: right;">
      @if (Session::has('coupon'))
      <li class="list-group-item">Tổng hàng(chưa thuế): <span style="float: right;">{{ Session::get('coupon')['balance'] }}đ</span></li>
      <li class="list-group-item">Mã giảm giá: ({{ Session::get('coupon')['name'] }})
       <a href="{{ route('coupon.remove') }}" class="bnt btn-danger btn-sm">x</a>
       <span style="float: right;">{{ Session::get('coupon')['discount'] }}đ</span>
      </li>
      @else
      <li class="list-group-item">Tổng hàng(chưa thuế): <span style="float: right;">{{ Cart::Subtotal() }}</span></li>
      @endif
      <li class="list-group-item">Phí ship: <span style="float: right;">{{ $charge }}đ</span></li>
      <li class="list-group-item">VAT: <span style="float: right;">{{ $vat }}đ</span></li>
      @if (Session::has('coupon'))
      <li class="list-group-item">Tổng tiền: <span style="float: right;">{{ Session::get('coupon')['balance']+ $charge + $vat }}đ</span></li>
      @else
      <li class="list-group-item">Tổng tiền: <span style="float: right;">{{ Cart::Subtotal()+ $charge + $vat }}đ</span></li>
      @endif
     </ul>
    </div>
   </div>
   <div class="col-lg-5" style="border: 1px solid grey; padding:20px; border-radius: 20px;">
    <div class="contact_form_container">
     <div class="contact_form_title text-center">Địa chỉ</div>
    </div>
   </div>
  </div>
 </div>
 <div class="panel"></div>
</div>
@endsection