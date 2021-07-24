@extends('layouts.app')

@section('content')
@include('layouts.menubar')
@php
$setting = DB::table('settings')->first();
$charge = $setting->shipping_charge;
$vat = $setting->vat;
@endphp
<link rel="stylesheet" type="text/css" href="{{ asset('frontend/styles/cart_styles.css') }}">
<link rel="stylesheet" type="text/css" href="{{ asset('frontend/styles/cart_responsive.css') }}">
<!-- Cart  -->
<div class="cart_section">
	<div class="container">
		<div class="row">
			<div class="col-lg-12">
				<div class="cart_container">
					<div class="cart_title">Thanh toán giỏ hàng</div>
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
										<div class="cart_item_text">{{ number_format($row->price) }} {{ 'VNĐ'}}</div>
									</div>
									<div class="cart_item_total cart_info_col">
										<div class="cart_item_title">Thành tiền</div>
										<div class="cart_item_text">{{ number_format($row->price*$row->qty) }} {{ 'VNĐ'}}</div>
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
					<br>
					<!-- <div class="order_total_content" style="padding: 15px;">
						@if(Session::has('coupon'))

						@else
						<h5 style="margin-left: 20px;">Sử dụng mã giảm giá</h5>
						<form method="POST" action=" {{ route('apply.coupon') }}">
							@csrf
							<div class="form-group col-lg-4">
								<input type="text" name="coupon" class="form-control" required="" placeholder="Nhập mã giảm giá">
							</div>
							<button type="submit" class="btn btn-danger ml-2">Dùng</button>
						</form>
						@endif
					</div> -->
					<ul class="list-group col-lg-4" style="float: right;">
						@if (Session::has('coupon'))
						<li class="list-group-item">Tổng hàng(chưa thuế): <span style="float: right;">{{ number_format(Session::get('coupon')['balance']) }} {{'VNĐ'}}</span></li>
						<li class="list-group-item">Mã giảm giá: ({{ Session::get('coupon')['name'] }})
							<a href="{{ route('coupon.remove') }}" class="bnt btn-danger btn-sm">x</a>
							<span style="float: right;">{{ number_format(Session::get('coupon')['discount']) }} {{ 'VNĐ'}}</span>
						</li>
						@else
						<li class="list-group-item">Tổng hàng(chưa thuế): <span style="float: right;">{{ number_format(Cart::Subtotal()) }} {{ 'VNĐ'}}</span></li>
						@endif
						<li class="list-group-item">Phí ship: <span style="float: right;">{{ number_format($charge) }} {{ 'VNĐ'}}</span></li>
						<li class="list-group-item">VAT: <span style="float: right;">{{ number_format($vat) }} {{ 'VNĐ'}}</span></li>
						@if (Session::has('coupon'))
						<li class="list-group-item">Tổng tiền: <span style="float: right;">{{ number_format(Session::get('coupon')['balance']+ $charge + $vat) }} {{ 'VNĐ' }}</span></li>
						@else
						<li class="list-group-item">Tổng tiền: <span style="float: right;">{{ number_format(Cart::Subtotal()+ $charge + $vat) }} {{'VNĐ'}}</span></li>
						@endif
					</ul>
				</div>
			</div>
		</div>
		<div class="cart_buttons">
			<a href="{{ url('/') }}"><button type="button" class="button cart_button_clear">Quay lại mua sắm</button></a>
			<a href="{{ route('payment.step') }}" class="button cart_button_checkout">Thanh toán</a>
		</div>
	</div>
</div>
</div>
<script src="{{ asset('frontend/js/cart_custom.js') }}"></script>
@endsection