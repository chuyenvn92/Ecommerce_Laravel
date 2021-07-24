@extends('layouts.app')

@section('content')

    @include('layouts.menubar')
    @include('layouts.slider')

    @php
    $featured = DB::table('products')
        ->where('status', 1)
        ->where('product_quantity', '>', 0)
        ->orderBy('id', 'desc')
        ->limit(20)
        ->get();
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
        ->limit(20)
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

    <div class="characteristics">
        <div class="container">
            <div class="row">

                <!-- Char. Item -->
                <div class="col-lg-3 col-md-6 char_col">

                    <div class="char_item d-flex flex-row align-items-center justify-content-start">
                        <div class="char_icon"><img src="{{ asset('frontend/images/char_1.png') }}" alt=""></div>
                        <div class="char_content">
                            <div class="char_title">Giao hàng siêu tốc</div>
                            <div class="char_subtitle"></div>
                        </div>
                    </div>
                </div>

                <!-- Char. Item -->
                <div class="col-lg-3 col-md-6 char_col">

                    <div class="char_item d-flex flex-row align-items-center justify-content-start">
                        <div class="char_icon"><img src="{{ asset('frontend/images/char_2.png') }}" alt=""></div>
                        <div class="char_content">
                            <div class="char_title">Đổi trả nhanh chóng</div>
                            <div class="char_subtitle"></div>
                        </div>
                    </div>
                </div>

                <!-- Char. Item -->
                <div class="col-lg-3 col-md-6 char_col">

                    <div class="char_item d-flex flex-row align-items-center justify-content-start">
                        <div class="char_icon"><img src="{{ asset('frontend/images/char_3.png') }}" alt=""></div>
                        <div class="char_content">
                            <div class="char_title">Đa dạng thanh toán</div>
                            <div class="char_subtitle"></div>
                        </div>
                    </div>
                </div>

                <!-- Char. Item -->
                <div class="col-lg-3 col-md-6 char_col">

                    <div class="char_item d-flex flex-row align-items-center justify-content-start">
                        <div class="char_icon"><img src="{{ asset('frontend/images/char_4.png') }}" alt=""></div>
                        <div class="char_content">
                            <div class="char_title">Siêu nhiều ưu đãi</div>
                            <div class="char_subtitle"></div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <!-- Deals of the week -->

    <div class="deals_featured">
        <div class="container">
            <div class="row">
                <div class="col d-flex flex-lg-row flex-column align-items-center justify-content-start">

                    <!-- Deals -->

                    <div class="deals">
                        <div class="deals_title">Giá Sốc trong tuần</div>
                        <div class="deals_slider_container">

                            <!-- Deals Slider -->
                            <div class="owl-carousel owl-theme deals_slider">
                                @foreach ($hot as $hot)
                                    <!-- Deals Item -->
                                    <div class="owl-item deals_item">
                                        <div class="deals_image"><img src="{{ asset($hot->image_one) }}" alt=""></div>
                                        <div class="deals_content">
                                            <div class="deals_info_line d-flex flex-row justify-content-start">
                                                <div class="deals_item_category">{{ $hot->brand_name }}</>
                                                </div>
                                                @if ($hot->discount_price == null)
                                                @else
                                                    <div class="deals_item_price_a ml-auto">
                                                        {{ number_format($hot->selling_price) }} {{ 'VNĐ' }}</div>
                                                @endif
                                            </div>
                                            <div class="deals_info_line d-flex flex-row justify-content-start">
                                                <div class="deals_item_name">{{ $hot->product_name }}</div>
                                                @if ($hot->discount_price == null)
                                                    <div class="deals_item_price ml-auto">
                                                        {{ number_format($hot->selling_price) }}{{ 'VNĐ' }}</div>
                                                @else
                                                @endif
                                                @if ($hot->discount_price != null)
                                                    <div class="deals_item_price ml-auto">
                                                        {{ number_format($hot->discount_price) }} {{ 'VNĐ' }}
                                                    </div>
                                                @else
                                                @endif
                                            </div>
                                            <div class="available">
                                                <div class="available_line d-flex flex-row justify-content-start">
                                                    <div class="available_title">Số lượng còn:
                                                        <span>{{ $hot->product_quantity }}</span></div>
                                                </div>
                                                <div class="available_bar"><span style="width:17%"></span></div>
                                            </div>
                                            <div
                                                class="deals_timer d-flex flex-row align-items-center justify-content-start">
                                                <div class="deals_timer_title_container">
                                                    <div class="deals_timer_title">Nhanh tay nào</div>
                                                    <div class="deals_timer_subtitle">Kết thúc sau</div>
                                                </div>
                                                <div class="deals_timer_content ml-auto">
                                                    <div class="deals_timer_box clearfix" data-target-time="">
                                                        <div class="deals_timer_unit">
                                                            <div id="deals_timer1_hr" class="deals_timer_hr"></div>
                                                            <span>Giờ</span>
                                                        </div>
                                                        <div class="deals_timer_unit">
                                                            <div id="deals_timer1_min" class="deals_timer_min"></div>
                                                            <span>Phút</span>
                                                        </div>
                                                        <div class="deals_timer_unit">
                                                            <div id="deals_timer1_sec" class="deals_timer_sec"></div>
                                                            <span>Giây</span>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                @endforeach
                            </div>
                        </div>
                        <div class="deals_slider_nav_container">
                            <div class="deals_slider_prev deals_slider_nav"><i class="fas fa-chevron-left ml-auto"></i>
                            </div>
                            <div class="deals_slider_next deals_slider_nav"><i class="fas fa-chevron-right ml-auto"></i>
                            </div>
                        </div>
                    </div>

                    <!-- Featured -->
                    <div class="featured">
                        <div class="tabbed_container">
                            <div class="tabs">
                                <ul class="clearfix">
                                    <li class="active">Nổi bật</li>
                                </ul>
                                <div class="tabs_line"><span></span></div>
                            </div>
                            <!-- Product Panel -->
                            <div class="product_panel panel active">
                                <div class="featured_slider slider">
                                    @foreach ($featured as $feature)
                                        <!-- Slider Item -->
                                        <div class="featured_slider_item">
                                            <div class="border_active"></div>
                                            <div
                                                class="product_item discount d-flex flex-column align-items-center justify-content-center text-center">
                                                <div
                                                    class="product_image d-flex flex-column align-items-center justify-content-center">
                                                    <img src="{{ asset($feature->image_one) }}" alt=""
                                                        style="height: 120px; width:140px;"></div>
                                                <div class="product_content">
                                                    @if ($feature->discount_price == null)
                                                        <div class="product_price discount">
                                                            {{ number_format($feature->selling_price) }}
                                                            {{ 'VNĐ' }}</div>
                                                    @else
                                                        <div class="product_price discount">
                                                            <span>{{ number_format($feature->selling_price) }}
                                                                {{ 'VNĐ' }}</span><br>{{ number_format($feature->discount_price) }}
                                                            {{ 'VNĐ' }}</div>
                                                    @endif
                                                    <div class="product_name">
                                                        <div><a
                                                                href="{{ url('product/details/' . $feature->id . '/' . $feature->product_name) }}">{{ str_limit($feature->product_name, $limit = 20) }}</a>
                                                        </div>
                                                    </div>
                                                    <div class="product_extras">
                                                        <button class="product_cart_button addcart"
                                                            id="{{ $feature->id }}" data-toggle="modal"
                                                            data-target="#cartModal" onclick="productview(this.id)">Xem
                                                            nhanh</button>
                                                    </div>
                                                </div>
                                                <button class="addwishlist" data-id="{{ $feature->id }}">
                                                    <div class="product_fav"><i class="fas fa-heart"></i></div>
                                                </button>
                                                <ul class="product_marks">
                                                    @if ($feature->discount_price == null)
                                                        <li class="product_mark product_discount" style="background: blue;">
                                                            Mới</li>
                                                    @else
                                                        <li class="product_mark product_discount">
                                                            @php
                                                                $amount = $feature->selling_price - $feature->discount_price;
                                                                $discount = ($amount / $feature->selling_price) * 100;
                                                            @endphp
                                                            {{ intval($discount) }}%
                                                        </li>
                                                    @endif
                                                </ul>
                                            </div>
                                        </div>
                                    @endforeach
                                </div>
                                <div class="featured_slider_dots_cover"></div>
                            </div>
                        </div>
                    </div>

                </div>
            </div>
        </div>
    </div>

    <!-- Popular Categories -->

    <div class="popular_categories">
        <div class="container">
            <div class="row">
                <div class="col-lg-3">
                    <div class="popular_categories_content">
                        <div class="popular_categories_title">Thương hiệu</div>
                        <div class="popular_categories_slider_nav">
                            <div class="popular_categories_prev popular_categories_nav"><i
                                    class="fas fa-angle-left ml-auto"></i></div>
                            <div class="popular_categories_next popular_categories_nav"><i
                                    class="fas fa-angle-right ml-auto"></i></div>
                        </div>
                        <div class="popular_categories_link"><a href="#">Tất cả</a></div>
                    </div>
                </div>
                @php
                    $category = DB::table('brands')->get();
                @endphp
                <!-- Popular Categories Slider -->

                <div class="col-lg-9">
                    <div class="popular_categories_slider_container">
                        <div class="owl-carousel owl-theme popular_categories_slider">

                            @foreach ($category as $cat)
                                <!-- Popular Categories Item -->
                                <div class="owl-item">
                                    <div
                                        class="popular_category d-flex flex-column align-items-center justify-content-center">
                                        <div class="popular_category_image"><img src="{{ $cat->brand_logo }}" alt="">
                                        </div>
                                        <div class="popular_category_text">{{ $cat->brand_name }}</div>
                                    </div>
                                </div>
                            @endforeach
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- Banner -->
    @php
    $mid = DB::table('products')
        ->join('categories', 'products.category_id', 'categories.id')
        ->join('brands', 'products.brand_id', 'brands.id')
        ->select('products.*', 'brands.brand_name', 'categories.category_name')
        ->where('products.mid_slider', 1)
        ->orderBy('id', 'DESC')
        ->limit(20)
        ->get();
    @endphp
    <div class="banner_2">
        <div class="banner_2_background"
            style="background-image:url({{ asset('frontend/images/banner_2_background.jpg') }})"></div>
        <div class="banner_2_container">
            <div class="banner_2_dots"></div>
            <!-- Banner 2 Slider -->
            <div class="owl-carousel owl-theme banner_2_slider">
                @foreach ($mid as $row)
                    <!-- Banner 2 Slider Item -->
                    <div class="owl-item">
                        <div class="banner_2_item">
                            <div class="container fill_height">
                                <div class="row fill_height">
                                    <div class="col-lg-4 col-md-6 fill_height">
                                        <div class="banner_2_content">
                                            <div class="banner_2_category">
                                                <h4>{{ $row->category_name }}</h4>
                                            </div>
                                            <div class="banner_2_title">{{ $row->product_name }}</div>
                                            <div class="banner_2_text">
                                                <h4>{{ $row->brand_name }}</h4><br>
                                                <h2>{{ number_format($row->discount_price) }} {{ 'VNĐ' }}</h2>
                                            </div>
                                            <div class="button banner_2_button"><a
                                                    href="{{ url('product/details/' . $row->id . '/' . $row->product_name) }}">Xem
                                                    ngay</a></div>
                                        </div>
                                    </div>
                                    <div class="col-lg-8 col-md-6 fill_height">
                                        <div class="banner_2_image_container">
                                            <div class="banner_2_image"><img src="{{ asset($row->image_one) }}" alt=""
                                                    style="height: 300px; width:250px;"></div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                @endforeach
            </div>
        </div>
    </div>

    <!-- Thời Trang Nữ -->
    @php
    $cats = DB::table('categories')
        ->skip(1)
        ->first();
    $catid = $cats->id;
    $product = DB::table('products')
        ->where('category_id', $catid)
        ->where('status', 1)
        ->limit(20)
        ->orderBy('id', 'DESC')
        ->get();
    @endphp
    <div class="new_arrivals">
        <div class="container">
            <div class="row">
                <div class="col">
                    <div class="tabbed_container">
                        <div class="tabs clearfix tabs-right">
                            <div class="new_arrivals_title">{{ $cats->category_name }}</div>
                            <ul class="clearfix">
                                <li class="active"></li>
                            </ul>
                            <div class="tabs_line"><span></span></div>
                        </div>
                        <div class="row">
                            <div class="col-lg-12" style="z-index:1;">
                                <!-- Product Panel -->
                                <div class="product_panel panel active">
                                    <div class="arrivals_slider slider">
                                        @foreach ($product as $product)
                                            <!-- Slider Item -->
                                            <div class="featured_slider_item">
                                                <div class="border_active"></div>
                                                <div
                                                    class="product_item discount d-flex flex-column align-items-center justify-content-center text-center">
                                                    <div
                                                        class="product_image d-flex flex-column align-items-center justify-content-center">
                                                        <img src="{{ asset($product->image_one) }}" alt=""
                                                            style="height: 120px; width:140px;"></div>
                                                    <div class="product_content">
                                                        @if ($product->discount_price == null)
                                                            <div class="product_price discount">
                                                                {{ number_format($product->selling_price) }}
                                                                {{ 'VNĐ' }}</div>
                                                        @else
                                                            <div class="product_price discount">
                                                                {{ number_format($product->discount_price) }}
                                                                {{ 'VNĐ' }}<span>{{ number_format($product->selling_price) }}
                                                                    {{ 'VNĐ' }}</span></div>
                                                        @endif
                                                        <div class="product_name">
                                                            <div><a
                                                                    href="{{ url('product/details/' . $product->id . '/' . $product->product_name) }}">{{ str_limit($product->product_name, $limit = 25) }}</a>
                                                            </div>
                                                        </div>
                                                        <div class="product_extras">
                                                            <button class="product_cart_button addcart"
                                                                id="{{ $product->id }}" data-toggle="modal"
                                                                data-target="#cartModal" onclick="productview(this.id)">Xem
                                                                nhanh</button>
                                                        </div>
                                                    </div>
                                                    <button class="addwishlist" data-id="{{ $feature->id }}">
                                                        <div class="product_fav"><i class="fas fa-heart"></i></div>
                                                    </button>
                                                    <ul class="product_marks">
                                                        @if ($product->discount_price == null)
                                                            <li class="product_mark product_discount"
                                                                style="background: blue;">Mới</li>
                                                        @else
                                                            <li class="product_mark product_discount">
                                                                @php
                                                                    $amount = $product->selling_price - $product->discount_price;
                                                                    $discount = ($amount / $product->selling_price) * 100;
                                                                @endphp
                                                                {{ intval($discount) }}%
                                                            </li>
                                                        @endif
                                                    </ul>
                                                </div>
                                            </div>
                                        @endforeach

                                    </div>
                                    <div class="featured_slider_dots_cover"></div>
                                </div>
                            </div>
                        </div>

                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- Thời Trang Nam -->
    @php
    $cats = DB::table('categories')->first();
    $catid = $cats->id;
    $product = DB::table('products')
        ->where('category_id', $catid)
        ->where('status', 1)
        ->limit(20)
        ->orderBy('id', 'DESC')
        ->get();
    @endphp
    <div class="new_arrivals">
        <div class="container">
            <div class="row">
                <div class="col">
                    <div class="tabbed_container">
                        <div class="tabs clearfix tabs-right">
                            <div class="new_arrivals_title">{{ $cats->category_name }}</div>
                            <ul class="clearfix">
                                <li class="active"></li>
                            </ul>
                            <div class="tabs_line"><span></span></div>
                        </div>
                        <div class="row">
                            <div class="col-lg-12" style="z-index:1;">
                                <!-- Product Panel -->
                                <div class="product_panel panel active">
                                    <div class="arrivals_slider slider">
                                        @foreach ($product as $product)
                                            <!-- Slider Item -->
                                            <div class="featured_slider_item">
                                                <div class="border_active"></div>
                                                <div
                                                    class="product_item discount d-flex flex-column align-items-center justify-content-center text-center">
                                                    <div
                                                        class="product_image d-flex flex-column align-items-center justify-content-center">
                                                        <img src="{{ asset($product->image_one) }}" alt=""
                                                            style="height: 120px; width:140px;"></div>
                                                    <div class="product_content">
                                                        @if ($product->discount_price == null)
                                                            <div class="product_price discount">
                                                                {{ number_format($product->selling_price) }}
                                                                {{ 'VNĐ' }}</div>
                                                        @else
                                                            <div class="product_price discount">
                                                                {{ number_format($product->discount_price) }}
                                                                {{ 'VNĐ' }}<span>{{ number_format($product->selling_price) }}
                                                                    {{ 'VNĐ' }}</span></div>
                                                        @endif
                                                        <div class="product_name">
                                                            <div><a
                                                                    href="{{ url('product/details/' . $product->id . '/' . $product->product_name) }}">{{ str_limit($product->product_name, $limit = 25) }}</a>
                                                            </div>
                                                        </div>
                                                        <div class="product_extras">
                                                            <button class="product_cart_button addcart"
                                                                id="{{ $product->id }}" data-toggle="modal"
                                                                data-target="#cartModal" onclick="productview(this.id)">Xem
                                                                nhanh</button>
                                                        </div>
                                                    </div>
                                                    <button class="addwishlist" data-id="{{ $feature->id }}">
                                                        <div class="product_fav"><i class="fas fa-heart"></i></div>
                                                    </button>
                                                    <ul class="product_marks">
                                                        @if ($product->discount_price == null)
                                                            <li class="product_mark product_discount"
                                                                style="background: blue;">Mới</li>
                                                        @else
                                                            <li class="product_mark product_discount">
                                                                @php
                                                                    $amount = $product->selling_price - $product->discount_price;
                                                                    $discount = ($amount / $product->selling_price) * 100;
                                                                @endphp
                                                                {{ intval($discount) }}%
                                                            </li>
                                                        @endif
                                                    </ul>
                                                </div>
                                            </div>
                                        @endforeach

                                    </div>
                                    <div class="featured_slider_dots_cover"></div>
                                </div>
                            </div>
                        </div>

                    </div>
                </div>
            </div>
        </div>
    </div>

    <!-- Best Sellers -->
    <!-- Adverts -->

    <!-- Mua 1 Tặng 1 -->

    <div class="trends">
        <div class="trends_background"
            style="background-image:url({{ asset('frontend/images/trends_background.jpg') }})"></div>
        <div class="trends_overlay"></div>
        <div class="container">
            <div class="row">
                <!-- Buy 1 Get 1 Content -->
                <div class="col-lg-3">
                    <div class="trends_container">
                        <h2 class="trends_title">Mua 1 Tặng 1</h2>
                        <div class="trends_text">
                            <p>Chương trình tri ân khách hàng</p>
                        </div>
                        <div class="trends_slider_nav">
                            <div class="trends_prev trends_nav"><i class="fas fa-angle-left ml-auto"></i></div>
                            <div class="trends_next trends_nav"><i class="fas fa-angle-right ml-auto"></i></div>
                        </div>
                    </div>
                </div>
                @php
                    $buyget = DB::table('products')
                        ->join('brands', 'products.brand_id', 'brands.id')
                        ->select('products.*', 'brands.brand_name')
                        ->where('status', 1)
                        ->where('buyone_getone', 1)
                        ->orderBy('id', 'desc')
                        ->limit(20)
                        ->get();
                @endphp
                <!-- mua 1 tang 1 Slider -->
                <div class="col-lg-9">
                    <div class="trends_slider_container">
                        <!-- 1 tang 1 Slider -->
                        <div class="owl-carousel owl-theme trends_slider">
                            @foreach ($buyget as $buyget)
                                <!-- 1 tang 1 Slider Item -->
                                <div class="owl-item">
                                    <div class="trends_item is_new">
                                        <div
                                            class="trends_image d-flex flex-column align-items-center justify-content-center">
                                            <img src="{{ asset($buyget->image_one) }}" alt=""></div>
                                        <div class="trends_content">
                                            <div class="trends_category"><a href="#">{{ $buyget->brand_name }}</a></div>
                                            <div class="trends_info clearfix">
                                                <div class="trends_name"><a
                                                        href="{{ url('product/details/' . $buyget->id . '/' . $buyget->product_name) }}">{{ $buyget->product_name }}</a>
                                                </div>
                                                @if ($product->discount_price == null)
                                                    <div class="product_price discount">
                                                        {{ number_format($buyget->selling_price) }} {{ 'VNĐ' }}
                                                    </div>
                                                @else
                                                    <div class="product_price discount">
                                                        {{ number_format($buyget->discount_price) }}
                                                        {{ 'VNĐ' }}<span>{{ number_format($buyget->selling_price) }}
                                                            {{ 'VNĐ' }}</span></div>
                                                @endif
                                                <!-- <button class="product_cart_button addcart" id="{{ $product->id }}" data-toggle="modal" data-target="#cartModal" onclick="productview(this.id)">Xem nhanh</button> -->
                                                <a href="" class="btn btn-danger btn-sm addcart" id="{{ $buyget->id }}"
                                                    data-toggle="modal" data-target="#cartModal"
                                                    onclick="productview(this.id)">Xem nhanh</a>
                                            </div>
                                        </div>
                                        <ul class="trends_marks">
                                            <li class="trends_mark trends_new">Sale</li>
                                        </ul>
                                        <button class="addwishlist" data-id="{{ $feature->id }}">
                                            <div class="trends_fav"><i class="fas fa-heart"></i></div>
                                        </button>
                                    </div>
                                </div>
                            @endforeach
                        </div>
                    </div>
                </div>

            </div>
        </div>
    </div>
    @php
    $post = DB::table('posts')->get();
    @endphp
    <!-- Reviews -->
    <div class="reviews">
        <div class="container">
            <div class="row">
                <div class="col">
                    <div class="reviews_title_container">
                        <h3 class="reviews_title">Tin tức</h3>
                    </div>
                    <div class="reviews_slider_container">
                        <!-- Reviews Slider -->
                        <div class="owl-carousel owl-theme reviews_slider">
                            <!-- Reviews Slider Item -->
                            @foreach ($post as $post)
                                <div class="owl-item">
                                    <div class="review d-flex flex-row align-items-start justify-content-start">
                                        <div>
                                            <div class="review_image"><img src="{{ $post->post_image }}" alt=""></div>
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
    </div>
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
                        <div class="newsletter_content clearfix">
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
    <footer class="page-footer font-small mdb-color lighten-3 pt-4">

        <!-- Footer Links -->
        <div class="container text-center text-md-left">

            <!-- Grid row -->
            <div class="row">

                <!-- Grid column -->
                <div class="col-md-4 col-lg-3 mr-auto my-md-4 my-0 mt-4 mb-1">

                    <!-- Content -->
                    <h5 class="font-weight-bold text-uppercase mb-4">Torano Shop</h5>
                    <p>Mã số thuế: 0108597977</p>
                    <p>Địa chỉ: Cơ sở 1165 đường Giải Phóng, Quận Hoàng Mai, Thành phố Hà Nội.</p>

                </div>
                <!-- Grid column -->

                <hr class="clearfix w-100 d-md-none">

                <!-- Grid column -->
                <div class="col-md-2 col-lg-2 mx-auto my-md-4 my-0 mt-4 mb-1">

                    <!-- Links -->
                    <h5 class="font-weight-bold text-uppercase mb-4">Về chúng tôi</h5>

                    <ul class="list-unstyled">
                        <li>
                            <p>
                                <a href="{{ url('/') }}">Giới thiệu</a>
                            </p>
                        </li>
                        <li>
                            <p>
                                <a href="{{ route('contact.page') }}">Liên hệ</a>
                            </p>
                        </li>
                        <li>
                            <p>
                                <a href="{{ route('contact.page') }}">Tuyển dụng</a>
                            </p>
                        </li>
                        <li>
                            <p>
                                <a href="{{ route('contact.page') }}">Tìm đại lý</a>
                            </p>
                        </li>
                    </ul>

                </div>
                <!-- Grid column -->

                <hr class="clearfix w-100 d-md-none">

                <!-- Grid column -->
                <div class="col-md-4 col-lg-3 mx-auto my-md-4 my-0 mt-4 mb-1">

                    <!-- Contact details -->
                    <h5 class="font-weight-bold text-uppercase mb-4">Hỗ trợ khách hàng</h5>

                    <ul class="list-unstyled">
                        <li>
                            <p>Chính sách đổi trả</p>
                        </li>
                        <li>
                            <p>Câu hỏi thường gặp</p>
                        </li>
                        <li>
                            <p>Hướng dẫn chọn size</p>
                        </li>
                        <li>
                            <p>Thanh toán giao nhận</p>
                        </li>
                    </ul>
                </div>
                <!-- Grid column -->
                <hr class="clearfix w-100 d-md-none">
                <!-- Grid column -->
                <div class="col-md-2 col-lg-2 text-center mx-auto my-4">

                    <!-- Social buttons -->
                    <h5 class="font-weight-bold text-uppercase mb-4">Fanpage</h5>
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
    <div class="modal fade" id="cartModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel"
        aria-hidden="true">
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
                                    <h4 class="card-title text-center" id="pname"></h4>
                                </div>
                            </div>
                        </div>
                        <div class="col-md-4">
                            <ul class="list-group">
                                <li class="list-group-item">Mã SP: <span id="pcode"></span></li>
                                <li class="list-group-item">Danh mục: <span id="pcat"></span></li>
                                <li class="list-group-item">Loại: <span id="psub"></span></li>
                                <li class="list-group-item">Thương hiệu: <span id="pbrand"></span></li>
                                <li class="list-group-item">Số lượng còn: <span id="product_quantity" class="badge"
                                        style="background: green; color: white;"></span></li>
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

        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
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
        <!-- <script type="text/javascript">
     $(document).ready(function() {
      $('.addcart').on('click', function() {
       var id = $(this).data('id');
       if (id) {
        $.ajax({
         url: " {{ url('add/to/cart/') }}/" + id,
         type: "GET",
         datType: "json",
         success: function(data) {
          const Toast = Swal.mixin({
           toast: true,
           position: 'top-end',
           showConfirmButton: false,
           timer: 3000,
           timerProgressBar: true,
           onOpen: (toast) => {
            toast.addEventListener('mouseenter', Swal.stopTimer)
            toast.addEventListener('mouseleave', Swal.resumeTimer)
           }
          })
          if ($.isEmptyObject(data.error)) {
           Toast.fire({
            icon: 'success',
            title: data.success
           })
          } else {
           Toast.fire({
            icon: 'error',
            title: data.error
           })
          }
         },
        });
       } else {
        alert('danger');
       }
      });
     });
    </script> -->

        <script type="text/javascript">
            $(document).ready(function() {
                $('.addwishlist').on('click', function() {
                    var id = $(this).data('id');
                    if (id) {
                        $.ajax({
                            url: " {{ url('add/wishlist/') }}/" + id,
                            type: "GET",
                            datType: "json",
                            success: function(data) {
                                const Toast = Swal.mixin({
                                    toast: true,
                                    position: 'top-end',
                                    showConfirmButton: false,
                                    timer: 3000,
                                    timerProgressBar: true,
                                    onOpen: (toast) => {
                                        toast.addEventListener('mouseenter', Swal
                                            .stopTimer)
                                        toast.addEventListener('mouseleave', Swal
                                            .resumeTimer)
                                    }
                                })
                                if ($.isEmptyObject(data.error)) {
                                    Toast.fire({
                                        icon: 'success',
                                        title: data.success
                                    })
                                } else {
                                    Toast.fire({
                                        icon: 'error',
                                        title: data.error
                                    })
                                }
                            },
                        });
                    } else {
                        alert('danger');
                    }
                });
            });

        </script>
        <script type="text/javascript" src="//s7.addthis.com/js/300/addthis_widget.js#pubid=ra-5f7b08972fe81d30"></script>
    @endsection
