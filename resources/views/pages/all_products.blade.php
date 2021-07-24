@extends('layouts.app')

@section('content')
@include('layouts.menubar')
<link rel="stylesheet" type="text/css" href="{{ asset('frontend/styles/shop_styles.css') }}">
<link rel="stylesheet" type="text/css" href="{{ asset('frontend/styles/shop_responsive.css') }}">
<!-- Home -->

<div class="home">
	<div class="home_background parallax-window" data-parallax="scroll" data-image-src="images/shop_background.jpg"></div>
	<div class="home_overlay"></div>
	<div class="home_content d-flex flex-column align-items-center justify-content-center">
		<h2 class="home_title">Xin chào</h2>
	</div>
</div>

<!-- Shop -->

<div class="shop">
	<div class="container">
		<div class="row">
			<div class="col-lg-3">

				<!-- Shop Sidebar -->
				<div class="shop_sidebar">
					<div class="sidebar_section">
						<div class="sidebar_title">Danh mục sản phẩm</div>
						<ul class="sidebar_categories">
							@foreach($categories as $row)
							<li><a href="#">{{ $row->category_name }}</a></li>
							@endforeach
						</ul>
					</div>
					<div class="sidebar_section">
						<div class="sidebar_subtitle brands_subtitle">Thương hiệu</div>
						<ul class="brands_list">
							@foreach($brands as $row)
							@php
							$brand = DB::table('brands')->where('id', $row->brand_id)->first();
							@endphp
							<li class="brand"><a href="#">{{ $brand->brand_name }}</a></li>
							@endforeach
						</ul>
					</div>
				</div>

			</div>

			<div class="col-lg-9">
				<!-- Shop Content -->
				<div class="shop_content">
					<div class="shop_bar clearfix">
						<div class="shop_product_count"><span> {{ count($products)}}</span> Được tìm thấy</div>
					</div>

					<div class="product_grid row">
						<div class="product_grid_border"></div>

						@foreach($products as $row)
						<!-- Product Item -->
						<div class="product_item is_new">
							<div class="product_border"></div>
							<div class="product_image d-flex flex-column align-items-center justify-content-center"><img src="{{ asset($row->image_one) }}" alt="" style="height: 100px; width:100px;"></div>
							<div class="product_content">
								@if($row->discount_price == null)
								<div class="product_price discount">{{ number_format($row->selling_price) }} {{ 'VNĐ'}}</div>
								@else
								<div class="product_price discount">{{ number_format($row->discount_price) }} {{ 'VNĐ'}}<span>{{ number_format($row->selling_price) }} {{ 'VNĐ'}}</span></div>
								@endif
								<div class="product_name">
									<div><a href="{{ url('product/details/'.$row->id.'/'.$row->product_name) }}" tabindex="0">{{ str_limit($row->product_name, $limit = 25) }}</a></div>
								</div>
							</div>
							<div class="product_fav"><i class="fas fa-heart"></i></div>
							<ul class="product_marks">
								@if($row->discount_price == null)
								<li class="product_mark product_new" style="background: blue;">New</li>
								@else
								<li class="product_mark product_new" style="background: red;">
									@php
									$amount = $row->selling_price - $row->discount_price;
									$discount = $amount/$row->selling_price*100;
									@endphp
									{{ intval($discount) }}%
								</li>
								@endif
							</ul>
						</div>
						@endforeach

					</div>
					<!-- Shop Page Navigation -->

					<div class="shop_page_nav d-flex flex-row">


						{{ $products->links() }}


					</div>
				</div>
			</div>
		</div>
	</div>
	<script src="{{ asset('frontend/js/shop_custom.js') }}"></script>
	@endsection