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
     <div class="cart_title">Giỏ hàng của bạn</div>
     <div class="cart_items">
      <ul class="cart_list">
       @foreach($cart as $row)
       <li class="cart_item clearfix">
        <div class="cart_item_image text-center"><br><img src="{{ asset($row->options->image) }}" alt="" style="width:70px; height:70px;"></div>
        <div class="cart_item_info d-flex flex-md-row flex-column justify-content-between">
         <div class="cart_item_name cart_info_col">
          <div class="cart_item_title">Tên sản phẩm</div>
          <div class="cart_item_text">{{ $row->name}}</div>
         </div>
         @if($row->options->color == null)

         @else
         <div class="cart_item_color cart_info_col">
          <div class="cart_item_title">Màu sắc</div>
          <div class="cart_item_text">{{ $row->options->color}}</div>
         </div>
         @endif
         @if($row->options->size == null)

         @else
         <div class="cart_item_color cart_info_col">
          <div class="cart_item_title">Kích cỡ</div>
          <div class="cart_item_text">{{ $row->options->size}}</div>
         </div>
         @endif

         <div class="cart_item_quantity cart_info_col">
          <div class="cart_item_title">Số lượng</div><br>
          <form method="POST" action="{{ route('update.cartqty') }}">
           @csrf
           <input type="hidden" name="productid" value="{{ $row->rowId }}">
           <input type="number" style="width: 60px;" name="qty" value="{{ $row->qty }}">
           <button type="submit" class="btn btn-success btn-sm"><i class="fas fa-check-square"></i></button>
          </form>
         </div>
         <div class="cart_item_price cart_info_col">
          <div class="cart_item_title">Giá</div>
          <div class="cart_item_text">{{ $row->price }}</div>
         </div>
         <div class="cart_item_total cart_info_col">
          <div class="cart_item_title">Thành tiền</div>
          <div class="cart_item_text">{{ $row->price*$row->qty }}đ</div>
         </div>
         <div class="cart_item_total cart_info_col">
          <div class="cart_item_title">Thao tác</div><br>
          <a href="{{ url('remove/cart/'.$row->rowId) }}" class="btn btn-sm btn-danger">Xóa</a>
         </div>
        </div>
       </li>
       @endforeach
      </ul>
     </div>

     <!-- Order Total -->
     <div class="order_total">
      <div class="order_total_content text-md-right">
       <div class="order_total_title">Tổng đơn hàng:</div>
       <div class="order_total_amount">{{ Cart::total() }}đ</div>
      </div>
     </div>

     <div class="cart_buttons">
      <button type="button" class="button cart_button_clear">Hủy đơn</button>
      <button type="button" class="button cart_button_checkout">Thanh toán</button>
     </div>
    </div>
   </div>
  </div>
 </div>
</div>
<script src="{{ asset('public/frontend/js/cart_custom.js') }}"></script>
@endsection