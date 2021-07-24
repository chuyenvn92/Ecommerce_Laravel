@extends('layouts.app')

@section('content')
@include('layouts.menubar')
<link rel="stylesheet" type="text/css" href="{{ asset('frontend/styles/cart_styles.css') }}">
<link rel="stylesheet" type="text/css" href="{{ asset('frontend/styles/cart_responsive.css') }}">
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
							<form action="{{ url('cart/product/add/'.$row->id) }}" method="POST">
							@csrf
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
									<div class="cart_item_color cart_info_col">
										<div for="cart_item_title">Số lượng</div>
										<div class="cart_item_text ml-2">
										<input type="number" min="0" value="1" pattern="[0-9]" name="qty">
										</div>
									</div>
								
									<!-- <button type="submit" class="button cart_button">Thêm vào giỏ</button> -->
									<div class="cart_item_price cart_info_col">
										<div class="cart_item_title">Hành dộng</div><br>
										<button type="submit" class="button cart_button">Thêm vào giỏ</button>
									</div>
								</div>
							</li>
							</form>
							@endforeach
						</ul>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>
<script src="{{ asset('frontend/js/cart_custom.js') }}"></script>
@endsection