@extends('layouts.app')

@section('content')
@include('layouts.menubar')
@include('layouts.slider')

@php
$featured = DB::table('products')
->where('status', 1)
->where('product_quantity', '>', 0)
->orderBy('id', 'desc')
->limit(1)
->first();
$color = $featured->product_color;
$product_color = explode(',', $color);
$size = $featured->product_size;
$product_size = explode(',', $size);

$trend = DB::table('products')
->where('status', 1)
->where('trend', 1)
->where('product_quantity', '>', 0)
->orderBy('id', 'desc')
->limit(30)
->get();
$best = DB::table('products')
->where('status', 1)
->where('best_rated', 1)
->orderBy('id', 'desc')
->limit(4)
->get();

$hot = DB::table('products')
->join('brands', 'products.brand_id', 'brands.id')
->select('products.*', 'brands.brand_name')
->where('products.status', 1)
->where('hot_deal', 1)
->orderBy('id', 'desc')
->limit(20)
->get();
@endphp

<link rel="stylesheet" type="text/css" href="{{ asset('frontend/styles/product_styles.css') }}">
<link rel="stylesheet" type="text/css" href="{{ asset('frontend/styles/product_responsive.css') }}">

<div class="single_product">
    <div class="container">
        <div class="row">
            <!-- Images -->
            <div class="order-2 col-lg-2 order-lg-1">
                <ul class="image_list">
                    <li data-image="{{ asset($featured->image_one) }}"><img src="{{ asset($featured->image_one) }}" alt=""></li>
                    <li data-image="{{ asset($featured->image_two) }}"><img src="{{ asset($featured->image_two) }}" alt=""></li>
                    <li data-image="{{ asset($featured->image_three) }}"><img src="{{ asset($featured->image_three) }}" alt=""></li>
                </ul>
            </div>
            <!-- Selected Image -->
            <div class="order-1 col-lg-5 order-lg-2">
                <div class="image_selected"><img src="{{ asset($featured->image_one) }}" alt=""></div>
            </div>

            <!-- Description -->
            <div class="order-3 col-lg-5">
                <div class="product_description">

                    <div class="product_name">{{ $featured->product_name }}</div>
                    <div class="product_text">
                        <p>
                            {!! str_limit($featured->product_details, $limit = 1200) !!}
                        </p>
                        <b>Số lượng còn: {{ $featured->product_quantity }}</b>
                    </div>
                    <div class="flex-row order_info d-flex">
                        <form action="{{ url('cart/product/add/'.$featured->id) }}" method="POST">
                            @csrf
                            <div class="row">
                                <div class="col-lg-4">
                                    <div class="form-group">
                                        <label for="exampleFormControlSelect1">Màu sắc</label>
                                        <select class="form-control input-lg" id="exampleFormControlSelect1" name="color">
                                            @foreach($product_color as $color)
                                            <option value="{{ $color }}">{{ $color }}</option>
                                            @endforeach
                                        </select>
                                    </div>
                                </div>
                                @if($featured->product_size == NULL)

                                @else
                                <div class="col-lg-4">
                                    <div class="form-group">
                                        <label for="exampleFormControlSelect1">Kích cỡ</label>
                                        <select class="form-control input-lg" id="exampleFormControlSelect1" name="size">
                                            @foreach($product_size as $size)
                                            <option value="{{ $size }}">{{ $size }}</option>
                                            @endforeach
                                        </select>
                                    </div>
                                </div>
                                @endif
                                <div class="col-lg-4">
                                    <div class="form-group">
                                        <label for="exampleFormControlSelect1">Số lượng</label>
                                        <input class="form-control" type="number" min="0" value="1" pattern="[0-9]" name="qty">
                                    </div>
                                </div>
                            </div>
                            @if($featured->discount_price == null)
                            <div class="product_price">{{ number_format($featured->selling_price) }} {{ 'VNĐ' }}</div>
                            @else
                            <div class="product_price">{{ number_format($featured->discount_price) }} {{ 'VNĐ' }}<span>{{ number_format($featured->selling_price) }} {{ 'VNĐ' }}</span></div>
                            @endif
                            <div class="button_container">
                                <button type="submit" class="button cart_button">Thêm vào giỏ</button>
                                <div class="product_fav"><i class="fas fa-heart"></i></div>
                            </div>
                            <br>
                            <!-- Go to www.addthis.com/dashboard to customize your tools -->
                            <div class="addthis_inline_share_toolbox"></div>

                        </form>
                    </div>
                </div>
            </div>

        </div>
    </div>
</div>

<!-- Best seller of Wolfoo World -->
<div class="container mt-4">
    <div class="row">
        <div class="col-md-12">
            <div class="mb-5 text-center">
                <h2 class="trends_title">Best seller of Wolfoo World</h2>
                <div class="trends_text">
                    <p>Limited Edition- Wolfoo Career Now On Sale</p>
                </div>
            </div>
        </div>
    </div>
    <div class="row">
        @foreach ($best as $best)
        <div class="col-md-3 col-sm-6 product-thumb">
            <a href="{{ url('product/details/' . $best->id . '/' . $best->product_name) }}">
                <div class="mb-4">
                    <div class="trends_image d-flex flex-column align-items-center justify-content-center">
                        <img src="{{ asset($best->image_one) }}" alt="">
                    </div>
                </div>
                <h4 class="text-center product-thumb-caption-title">
                    {{ $best->product_name }}
                </h4>
                @if ($best->discount_price == null)
                <p class="text-center product-thumb-caption-price-current">
                    {{ number_format($best->selling_price) }}{{ 'VNĐ' }}
                </p>
                @else
                <div class="mt-2 row">
                    <div class="col-xs-5 col-sm-5 col-md-5 compare-price-money">{{ number_format($best->discount_price) }}{{ 'VNĐ' }}
                    </div>
                    <div class="col-xs-5 col-sm-5 col-md-5 product-thumb-caption-price-current">{{ number_format($best->selling_price) }}{{ 'VNĐ' }}
                    </div>
                    <div class="col-xs-2 col-sm-2 col-md-2"></div>
                </div>
                @endif
            </a>
            <a href="" class="btn btn-success btn-sm addcart quickview-btn" id="{{ $best->id }}" data-toggle="modal" data-target="#cartModal" onclick="productview(this.id)">Quick View</a>
            @if ($best->discount_price == null)
            <p class="product-thumb-label">
                New</p>
            @else
            <p class="product-thumb-label">
                @php
                $amount = $best->selling_price - $best->discount_price;
                $discount = ($amount / $best->selling_price) * 100;
                @endphp
                {{ intval($discount) }}%
            </p>
            @endif
        </div>
        @endforeach
    </div>
</div>

<!-- Lucy Plush -->
@php
$mid = DB::table('products')
->join('categories', 'products.category_id', 'categories.id')
->join('brands', 'products.brand_id', 'brands.id')
->select('products.*', 'brands.brand_name', 'categories.category_name')
->where('products.mid_slider', 1)
->orderBy('id', 'DESC')
->first();
$color = $mid->product_color;
$product_color = explode(',', $color);

$size = $mid->product_size;
$product_size = explode(',', $size);
@endphp

<div class="single_product">
    <div class="container">
        <div class="row">
            <!-- Images -->
            <div class="order-2 col-lg-2 order-lg-1">
                <ul class="image_list">
                    <li data-image="{{ asset($mid->image_one) }}"><img src="{{ asset($mid->image_one) }}" alt=""></li>
                    <li data-image="{{ asset($mid->image_two) }}"><img src="{{ asset($mid->image_two) }}" alt=""></li>
                    <li data-image="{{ asset($mid->image_three) }}"><img src="{{ asset($mid->image_three) }}" alt=""></li>
                </ul>
            </div>
            <!-- Selected Image -->
            <div class="order-1 col-lg-5 order-lg-2">
                <div class="image_selected"><img src="{{ asset($mid->image_one) }}" alt=""></div>
            </div>

            <!-- Description -->
            <div class="order-3 col-lg-5">
                <div class="product_description">

                    <div class="product_name">{{ $mid->product_name }}</div>
                    <div class="product_text">
                        <p>
                            {!! str_limit($mid->product_details, $limit = 1200) !!}
                        </p>
                        <b>Số lượng còn: {{ $mid->product_quantity }}</b>
                    </div>
                    <div class="flex-row order_info d-flex">
                        <form action="{{ url('cart/product/add/'.$mid->id) }}" method="POST">
                            @csrf
                            <div class="row">
                                <div class="col-lg-4">
                                    <div class="form-group">
                                        <label for="exampleFormControlSelect1">Màu sắc</label>
                                        <select class="form-control input-lg" id="exampleFormControlSelect1" name="color">
                                            @foreach($product_color as $color)
                                            <option value="{{ $color }}">{{ $color }}</option>
                                            @endforeach
                                        </select>
                                    </div>
                                </div>
                                @if($mid->product_size == NULL)

                                @else
                                <div class="col-lg-4">
                                    <div class="form-group">
                                        <label for="exampleFormControlSelect1">Kích cỡ</label>
                                        <select class="form-control input-lg" id="exampleFormControlSelect1" name="size">
                                            @foreach($product_size as $size)
                                            <option value="{{ $size }}">{{ $size }}</option>
                                            @endforeach
                                        </select>
                                    </div>
                                </div>
                                @endif
                                <div class="col-lg-4">
                                    <div class="form-group">
                                        <label for="exampleFormControlSelect1">Số lượng</label>
                                        <input class="form-control" type="number" min="0" value="1" pattern="[0-9]" name="qty">
                                    </div>
                                </div>
                            </div>
                            @if($mid->discount_price == null)
                            <div class="product_price">{{ number_format($mid->selling_price) }} {{ 'VNĐ' }}</div>
                            @else
                            <div class="product_price">{{ number_format($mid->discount_price) }} {{ 'VNĐ' }}<span>{{ number_format($mid->selling_price) }} {{ 'VNĐ' }}</span></div>
                            @endif
                            <div class="button_container">
                                <button type="submit" class="button cart_button">Thêm vào giỏ</button>
                                <div class="product_fav"><i class="fas fa-heart"></i></div>
                            </div>
                            <br>
                            <!-- Go to www.addthis.com/dashboard to customize your tools -->
                            <div class="addthis_inline_share_toolbox"></div>

                        </form>
                    </div>
                </div>
            </div>

        </div>
    </div>
</div>

<!-- Home Decoration -->
@php
$cats = DB::table('categories')
->skip(4)
->first();
$catid = $cats->id;
$subcats = DB::table('subcategories')
->where('category_id', $catid)
->limit(3)
->orderBy('id', 'DESC')
->get();
@endphp
<div class="container">
    <div class="row">
        <div class="col-md-12">
            <div class="mb-5 text-center">
                <h2 class="trends_title">{{ $cats->category_name }}</h2>
            </div>
        </div>
    </div>
    <div class="row">
        @foreach ($subcats as $subcats)
        <div class="col-md-4 col-sm-12 col-xs-12 gallery-thumb">
            <a href="{{ url('allcategory/' . $cats->id) }}">
                <div class="gallery-item d-flex flex-column align-items-center justify-content-center">
                    <img src="{{ asset($subcats->subcategories_logo) }}" alt="">
                </div>
                <div class="gallery-item-caption">
                    <h3>{{ $subcats->subcategory_name }}</h3>
                </div>
            </a>
        </div>
        @endforeach
    </div>
</div>


<!-- KIDS/BABY APPARELS -->
<div class="container">
    @php
    $cats = DB::table('categories')->first();
    $catid = $cats->id;
    $product = DB::table('products')
    ->where('category_id', $catid)
    ->where('status', 1)
    ->limit(8)
    ->orderBy('id', 'DESC')
    ->get();
    @endphp
    <div class="row">
        <div class="col-md-12">
            <div class="mb-5 text-center">
                <h2 class="trends_title">{{ $cats->category_name }}</h2>
            </div>
        </div>
    </div>
    <div class="row">
        @foreach ($product as $product)
        <div class="col-md-3 col-sm-6 product-thumb">
            <a href="{{ url('product/details/' . $product->id . '/' . $product->product_name) }}">
                <div class="mb-4">
                    <div class="trends_image d-flex flex-column align-items-center justify-content-center">
                        <img src="{{ asset($product->image_one) }}" alt="">
                    </div>
                </div>
                <h4 class="text-center product-thumb-caption-title">
                    {{ $product->product_name }}
                </h4>
                @if ($product->discount_price == null)
                <p class="text-center product-thumb-caption-price-current">
                    {{ number_format($product->selling_price) }}{{ 'VNĐ' }}
                </p>
                @else
                <div class="mt-2 row">
                    <div class="col-xs-5 col-sm-5 col-md-5 compare-price-money">{{ number_format($product->discount_price) }}{{ 'VNĐ' }}
                    </div>
                    <div class="col-xs-5 col-sm-5 col-md-5 product-thumb-caption-price-current">{{ number_format($product->selling_price) }}{{ 'VNĐ' }}
                    </div>
                    <div class="col-xs-2 col-sm-2 col-md-2"></div>
                </div>
                @endif
            </a>
            <a href="" class="btn btn-success btn-sm addcart quickview-btn" id="{{ $product->id }}" data-toggle="modal" data-target="#cartModal" onclick="productview(this.id)">Quick View</a>
            @if ($product->discount_price == null)
            <p class="product-thumb-label">
                New</p>
            @else
            <p class="product-thumb-label">
                @php
                $amount = $product->selling_price - $product->discount_price;
                $discount = ($amount / $product->selling_price) * 100;
                @endphp
                {{ intval($discount) }}%
            </p>
            @endif
        </div>
        @endforeach
    </div>
</div>


<!-- Fleece Blanket -->
<div class="container mt-4">
    <div class="row">
        <div class="col-md-12">
            <div class="mb-5 text-center">
                <h2 class="trends_title">Fleece Blanket</h2>
                <div class="trends_text">
                    <p>Soft and gentle touching like moms</p>
                </div>
            </div>
        </div>
    </div>
    <div class="row">
        @php
        $buyget = DB::table('products')
        ->join('brands', 'products.brand_id', 'brands.id')
        ->select('products.*', 'brands.brand_name')
        ->where('status', 1)
        ->where('buyone_getone', 1)
        ->orderBy('id', 'desc')
        ->limit(4)
        ->get();
        @endphp
        <div class="row">
            @foreach ($buyget as $buyget)
            <div class="col-md-3 col-sm-6 product-thumb">
                <a href="{{ url('product/details/' . $buyget->id . '/' . $buyget->product_name) }}">
                    <div class="mb-4">
                        <div class="trends_image d-flex flex-column align-items-center justify-content-center">
                            <img src="{{ asset($buyget->image_one) }}" alt="">
                        </div>
                    </div>
                    <h4 class="text-center product-thumb-caption-title">
                        {{ $buyget->product_name }}
                    </h4>
                    @if ($buyget->discount_price == null)
                    <p class="text-center product-thumb-caption-price-current">
                        {{ number_format($buyget->selling_price) }}{{ 'VNĐ' }}
                    </p>
                    @else
                    <div class="mt-2 row">
                        <div class="col-xs-5 col-sm-5 col-md-5 compare-price-money">{{ number_format($buyget->discount_price) }}{{ 'VNĐ' }}
                        </div>
                        <div class="col-xs-5 col-sm-5 col-md-5 product-thumb-caption-price-current">{{ number_format($buyget->selling_price) }}{{ 'VNĐ' }}
                        </div>
                        <div class="col-xs-2 col-sm-2 col-md-2"></div>
                    </div>
                    @endif
                </a>
                <a href="" class="btn btn-success btn-sm addcart quickview-btn" id="{{ $buyget->id }}" data-toggle="modal" data-target="#cartModal" onclick="productview(this.id)">Quick View</a>
                @if ($buyget->discount_price == null)
                <p class="product-thumb-label">
                    New</p>
                @else
                <p class="product-thumb-label">
                    @php
                    $amount = $buyget->selling_price - $buyget->discount_price;
                    $discount = ($amount / $buyget->selling_price) * 100;
                    @endphp
                    {{ intval($discount) }}%
                </p>
                @endif
            </div>
            @endforeach
        </div>
    </div>
</div>
<!-- Fleece Blanket -->
@php
$post = DB::table('posts')->get();
@endphp
<!-- Reviews -->
<!-- <div class="reviews">
        <div class="container">
            <div class="row">
                <div class="col">
                    <div class="reviews_title_container">
                        <h3 class="reviews_title">Tin tức</h3>
                    </div>
                    <div class="reviews_slider_container">
                        <div class="owl-carousel owl-theme reviews_slider">
                            @foreach ($post as $post)
                                <div class="owl-item">
                                    <div class="review d-flex flex-column align-items-start justify-content-start">
                                        <div class="review_image">
                                            <img src="{{ $post->post_image }}" alt="">
                                        </div>
                                        <div class="review_content">
                                            <div class="review_name">{{ $post->post_title_vn }}</div>
                                            <div class="review_text">
                                                {!! str_limit($post->details_vn, $limit = 120) !!}
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            @endforeach
                        </div>
                        <div class="reviews_dots"></div>
                    </div>
                </div>
            </div>
        </div>
    </div> -->
<!-- <div class="newsletter">
            <div class="container">
                <div class="row">
                    <div class="col">
                        <div
                            class="newsletter_container d-flex flex-lg-row flex-column align-items-lg-center align-items-center justify-content-lg-start justify-content-center">
                            <div class="newsletter_title_container">
                                <div class="newsletter_icon"><img src="{{ asset('frontend/images/send.png') }}" alt="">
                                </div>
                                <div class="newsletter_title">Đăng kí nhận thông tin mới</div>
                                <div class="newsletter_text">
                                    <p>...nhận ngay mã giảm giá 50k cho đơn hàng đầu tiên</p>
                                </div>
                            </div>
                            <div class="clearfix newsletter_content">
                                <form action="{{ route('store.newslater') }}" method="POST" class="newsletter_form">
                                    @csrf
                                    <input type="email" class="newsletter_input" required="required"
                                        placeholder="Nhập email của bạn" name="email">
                                    <button class="newsletter_button" type="submit">Đăng kí</button>
                                </form>
                                <div class="newsletter_unsubscribe_link"><a href="#">hủy đăng kí</a></div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div> -->
<!-- Footer -->
<footer class="pt-4 page-footer font-small mdb-color lighten-3">

    <!-- Footer Links -->
    <div class="container text-center text-md-left">

        <!-- Grid row -->
        <div class="row">

            <!-- Grid column -->
            <div class="my-0 mt-4 mb-1 mr-auto col-md-4 col-lg-3 my-md-4">

                <!-- Content -->
                <h5 class="mb-4 font-weight-bold text-uppercase">Wolfoo Shop</h5>
                <p>Phone: (714) 660-4424</p>
                <p>331 Sonoma Aisle, Irvine CA 92618</p>

            </div>
            <!-- Grid column -->

            <hr class="clearfix w-100 d-md-none">

            <!-- Grid column -->
            <div class="mx-auto my-0 mt-4 mb-1 col-md-2 col-lg-2 my-md-4">

                <!-- Links -->
                <h5 class="mb-4 font-weight-bold text-uppercase">INFORMATION</h5>

                <ul class="list-unstyled">
                    <li>
                        <p>
                            <a href="{{ url('/') }}">WOLFOO DIARIES</a>
                        </p>
                    </li>
                    <li>
                        <p>
                            <a href="{{ route('contact.page') }}">SHIPPING AND DELIVERY</a>
                        </p>
                    </li>
                    <li>
                        <p>
                            <a href="{{ route('contact.page') }}">TRACK ORDER</a>
                        </p>
                    </li>
                    <li>
                        <p>
                            <a href="{{ route('contact.page') }}">FAQs</a>
                        </p>
                    </li>
                </ul>

            </div>
            <!-- Grid column -->

            <hr class="clearfix w-100 d-md-none">

            <!-- Grid column -->
            <div class="mx-auto my-0 mt-4 mb-1 col-md-4 col-lg-3 my-md-4">

                <!-- Contact details -->
                <h5 class="mb-4 font-weight-bold text-uppercase">OUR POLICIES</h5>

                <ul class="list-unstyled">
                    <li>
                        <p>PAYMENT METHODS</p>
                    </li>
                    <li>
                        <p>PRIVACY POLICY</p>
                    </li>
                    <li>
                        <p>RETURN POLICY</p>
                    </li>
                    <li>
                        <p>TERMS OF SERVICE</p>
                    </li>
                </ul>
            </div>
            <!-- Grid column -->
            <hr class="clearfix w-100 d-md-none">
            <!-- Grid column -->
            <div class="mx-auto my-4 text-center col-md-2 col-lg-2">

                <!-- Social buttons -->
                <h5 class="mb-4 font-weight-bold text-uppercase">Fanpage</h5>
                <div class="addthis_inline_share_toolbox"></div>
            </div>
            <!-- Grid column -->
        </div>
        <!-- Grid row -->
    </div>
    <!-- Footer Links -->
</footer>
<!-- Footer -->
<!-- Modal Quick View Product -->
<div class="modal fade" id="cartModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
    <div class="modal-dialog modal-lg" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="exampleModalLabel">Xem nhanh sản phẩm</h5>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>
            <div class="modal-body">
                <div class="row">
                    <div class="col-md-4">
                        <div class="card">
                            <img src="" id="pimage" style="height: 220px;">
                            <div class="card-body">
                                <h4 class="text-center card-title" id="pname"></h4>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-4">
                        <ul class="list-group">
                            <li class="list-group-item">Mã SP: <span id="pcode"></span></li>
                            <li class="list-group-item">Danh mục: <span id="pcat"></span></li>
                            <li class="list-group-item">Loại: <span id="psub"></span></li>
                            <li class="list-group-item">Thương hiệu: <span id="pbrand"></span></li>
                            <li class="list-group-item">Số lượng còn: <span id="product_quantity" class="badge" style="background: green; color: white;"></span></li>
                        </ul>
                    </div>
                    <div class="col-md-4">
                        <form method="POST" action="{{ route('insert.into.cart') }}">
                            @csrf
                            <input type="hidden" name="product_id" id="product_id">
                            <div class="form-group">
                                <label for="exampleInputcolor">Màu sắc</label>
                                <select class="form-control" id="color" name="color">
                                </select>
                            </div>
                            <div class="form-group">
                                <label for="exampleInputcolor">Kích cỡ</label>
                                <select class="form-control" id="size" name="size">
                                </select>
                            </div>
                            <div class="form-group">
                                <label for="exampleInputcolor">Số lượng</label>
                                <input type="number" min="1" class="form-control" name="qty" value="1">
                            </div>
                            <button type="submit" class="btn btn-primary">Thêm vào giỏ</button>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <script type="text/javascript">
        function productview(id) {
            $.ajax({
                url: "{{ url('/cart/product/view/') }}/" + id,
                type: "GET",
                datatype: "json",
                success: function(data) {
                    $('#pname').text(data.product.product_name);
                    $('#pcode').text(data.product.product_code);
                    $('#pcat').text(data.product.category_name);
                    $('#psub').text(data.product.subcategory_name);
                    $('#pbrand').text(data.product.brand_name);
                    $('#product_quantity').text(data.product.product_quantity);
                    $('#pimage').attr('src', data.product.image_one);
                    $('#product_id').val(data.product.id);

                    var d = $('select[name="color"]').empty();
                    $.each(data.color, function(key, value) {
                        $('select[name="color"]').append('<option value="' + value + '">' + value +
                            '</option>');
                    });
                    var d = $('select[name="size"]').empty();
                    $.each(data.size, function(key, value) {
                        $('select[name="size"]').append('<option value="' + value + '">' + value +
                            '</option>');
                    });
                }
            })
        }
    </script>
    <script type="text/javascript" src="//s7.addthis.com/js/300/addthis_widget.js#pubid=ra-5f7b08972fe81d30"></script>
    <div id="fb-root"></div>
    <script async defer crossorigin="anonymous" src="https://connect.facebook.net/vn_VN/sdk.js#xfbml=1&version=v8.0" nonce="J8EoJWkX"></script>
    <!-- Go to www.addthis.com/dashboard to customize your tools -->
    <script type="text/javascript" src="//s7.addthis.com/js/300/addthis_widget.js#pubid=ra-5f7b08972fe81d30"></script>
    @endsection