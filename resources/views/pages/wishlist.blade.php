@extends('layouts.app')

@section('content')
<link rel="stylesheet" type="text/css" href="{{ asset('public/frontend/styles/cart_styles.css') }}">
<link rel="stylesheet" type="text/css" href="{{ asset('public/frontend/styles/cart_responsive.css') }}">
<!-- Cart  -->
<div class="cart_section">
 <div class="container">
  <div class="row">
   <div class="col-lg-12">
    <div class="cart_container">
     <div class="cart_title">Sản phẩm đã thích</div>
     <div class="cart_items">
      <ul class="cart_list">
       @foreach($product as $row)
       <li class="cart_item clearfix">
        <div class="cart_item_image text-center"><br><img src="{{ asset($row->image_one) }}" alt="" style="width:70px; height:70px;"></div>
        <div class="cart_item_info d-flex flex-md-row flex-column justify-content-between">
         <div class="cart_item_name cart_info_col">
          <div class="cart_item_title">Tên sản phẩm</div>
          <div class="cart_item_text">{{ $row->product_name}}</div>
         </div>
         @if($row->product_color == null)

         @else
         <div class="cart_item_color cart_info_col">
          <div class="cart_item_title">Màu sắc</div>
          <div class="cart_item_text">{{ $row->product_color}}</div>
         </div>
         @endif
         @if($row->product_size == null)

         @else
         <div class="cart_item_color cart_info_col">
          <div class="cart_item_title">Kích cỡ</div>
          <div class="cart_item_text">{{ $row->product_size}}</div>
         </div>
         @endif
         <div class="cart_item_price cart_info_col">
          <div class="cart_item_title">Hành dộng</div><br>
          <a href="" class="btn btn-sm btn-danger">Thêm</a>
         </div>
        </div>
       </li>
       @endforeach
      </ul>
     </div>
    </div>
   </div>
  </div>
 </div>
</div>
<script src="{{ asset('public/frontend/js/cart_custom.js') }}"></script>
@endsection