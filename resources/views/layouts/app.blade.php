 @php
 $setting = DB::table('sitesetting')->first();
 @endphp
 <!DOCTYPE html>
 <html lang="en">

 <head>
     <title>Web Bán Hàng</title>
     <meta charset="utf-8">
     <meta http-equiv="X-UA-Compatible" content="IE=edge">
     <meta name="description" content="OneTech shop project">
     <meta name="viewport" content="width=device-width, initial-scale=1">
     <link rel="stylesheet" type="text/css" href="{{ asset('public/frontend/styles/bootstrap4/bootstrap.min.css') }}">
     <link href="{{ asset('public/frontend/plugins/fontawesome-free-5.0.1/css/fontawesome-all.css') }}" rel="stylesheet" type="text/css">
     <link rel="stylesheet" type="text/css" href="{{ asset('public/frontend/plugins/OwlCarousel2-2.2.1/owl.carousel.css') }} ">
     <link rel="stylesheet" type="text/css" href="{{ asset('public/frontend/plugins/OwlCarousel2-2.2.1/owl.theme.default.css') }}">
     <link rel="stylesheet" type="text/css" href="{{ asset('public/frontend/plugins/OwlCarousel2-2.2.1/animate.css') }}">
     <link rel="stylesheet" type="text/css" href="{{ asset('public/frontend/plugins/slick-1.8.0/slick.css') }}">
     <link rel="stylesheet" type="text/css" href="{{ asset('public/frontend/styles/main_styles.css') }}">
     <link rel="stylesheet" type="text/css" href="{{ asset('public/frontend/styles/responsive.css') }}">
     <link rel="stylesheet" type="text/css" href="https://cdnjs.cloudflare.com/ajax/libs/toastr.js/latest/css/toastr.css">
     <script src="https://js.stripe.com/v3/"></script>

     <!-- Sử dụng sweetalert2 -->
     <link rel="stylesheet" href="sweetalert2.min.css">

 </head>

 <body>


     <div class="super_container">

         <!-- Header -->

         <header class="header">

             <!-- Top Bar -->

             <div class="top_bar">
                 <div class="container">
                     <div class="row">
                         <div class="col d-flex flex-row">
                             <div class="top_bar_contact_item">
                                 <div class="top_bar_icon"><img src="{{ asset('public/frontend/images/phone.png')}}" alt=""></div>{{ $setting->phone_one }}
                             </div>

                             <div class="top_bar_content ml-auto">
                                 @guest

                                 @else
                                 <div class="top_bar_menu">
                                     <ul class="standard_dropdown top_bar_dropdown">
                                         <li>
                                             <a href="" data-toggle="modal" data-target="#exampleModal">Kiểm tra đơn hàng</a>
                                         </li>
                                     </ul>
                                 </div>
                                 @endguest
                                 <div class="top_bar_menu">
                                     <ul class="standard_dropdown top_bar_dropdown">
                                         @php
                                         $language = Session()->get('lang');
                                         @endphp
                                         <li>
                                             @if( Session()->get('lang') == 'vietnam' )
                                             <a href="{{ route('language.english') }}">English<i class="fas fa-chevron-down"></i></a>
                                             @else
                                             <a href="{{ route('language.vietnam') }}">Tiếng Việt<i class="fas fa-chevron-down"></i></a>
                                             @endif
                                         </li>
                                     </ul>
                                 </div>
                                 <div class="top_bar_user">
                                     @guest
                                     <div><a href="{{ route('login') }}">
                                             <div class="user_icon"><img src="{{ asset('public/frontend/images/user.svg')}}" alt=""></div>Đăng kí/Đăng Nhập
                                         </a></div>
                                     @else
                                     <ul class="standard_dropdown top_bar_dropdown">
                                         <li>
                                             <a href="{{route('home')}}">
                                                 <div class="user_icon"><img src="{{ asset('public/frontend/images/user.svg')}}" alt=""></div>Thông tin cá nhân<i class="fas fa-chevron-down"></i>
                                             </a>
                                             <ul>
                                                 <li><a href="{{ route('user.wishlist') }}">Sản phẩm yêu thích</a></li>
                                                 <li><a href="{{ route('user.checkout') }}">Thanh toán đơn hàng</a></li>
                                                 <li><a href="#">Khác</a></li>
                                             </ul>
                                         </li>
                                     </ul>
                                     @endguest
                                 </div>
                             </div>
                         </div>
                     </div>
                 </div>
             </div>

             <!-- Header Main -->

             <div class="header_main">
                 <div class="container">
                     <div class="row">

                         <!-- Logo -->
                         <div class="col-lg-2 col-sm-3 col-3 order-1">
                             <div class="logo_container">
                                 <div class="logo"><a href="{{ url('/') }}"><img src="{{ asset('public/frontend/images/logo.png')}}" alt=""></a></div>
                             </div>
                         </div>

                         @php
                         $category = DB::table('categories')->get();
                         @endphp
                         <!-- Search -->
                         <div class="col-lg-6 col-12 order-lg-2 order-3 text-lg-left text-right">
                             <div class="header_search">
                                 <div class="header_search_content">
                                     <div class="header_search_form_container">
                                         <form action="{{ route('product.search') }}" class="header_search_form clearfix" method="POST">
                                             @csrf
                                             <input type="search" required="required" class="header_search_input" placeholder="Tìm kiếm" name="search">
                                             <div class="custom_dropdown">
                                                 <div class="custom_dropdown_list">
                                                     <span class="custom_dropdown_placeholder clc">Sản Phẩm</span>
                                                     <i class="fas fa-chevron-down"></i>
                                                     <ul class="custom_list clc">
                                                         @foreach($category as $row)
                                                         <li><a class="clc" href="#">{{ $row->category_name }}</a></li>
                                                         @endforeach
                                                     </ul>
                                                 </div>
                                             </div>
                                             <button type="submit" class="header_search_button trans_300" value="Submit"><img src="{{ asset('public/frontend/images/search.png')}}" alt=""></button>
                                         </form>
                                     </div>
                                 </div>
                             </div>
                         </div>

                         <!-- Wishlist -->
                         <div class="col-lg-4 col-9 order-lg-3 order-2 text-lg-left text-right">
                             <div class="wishlist_cart d-flex flex-row align-items-center justify-content-end">
                                 <div class="wishlist d-flex flex-row align-items-center justify-content-end">
                                     @guest

                                     @else
                                     @php
                                     $wishlist = DB::table('wishlists')->where('user_id',Auth::id())->get();
                                     @endphp
                                     <div class="wishlist_icon"><img src="{{ asset('public/frontend/images/heart.png')}}" alt=""></div>
                                     <div class="wishlist_content">
                                         <div class="wishlist_text"><a href="{{ route('user.wishlist') }}">Yêu thích</a></div>
                                         <div class="wishlist_count">{{ count($wishlist) }}</div>
                                     </div>
                                 </div>
                                 @endguest
                                 <!-- Cart -->
                                 <div class="cart">
                                     <div class="cart_container d-flex flex-row align-items-center justify-content-end">
                                         <div class="cart_icon">
                                             <a href="{{ route('show.cart') }}"><img src="{{ asset('public/frontend/images/cart.png')}}" alt=""></a>
                                             <div class="cart_count"><span>{{ Cart::count() }}</span></div>
                                         </div>
                                         <div class="cart_content">
                                             <div class="cart_text"><a href="{{ route('show.cart') }}">Giỏ hàng</a></div>
                                             <div class="cart_price">{{ Cart::subtotal() }}đ</div>
                                         </div>
                                     </div>
                                 </div>
                             </div>
                         </div>
                     </div>
                 </div>
             </div>

             <!-- Main Navigation -->
             <!-- Characteristics -->
             @yield('content')
             <!-- Footer -->
             <footer class="footer">
                 <div class="container">
                     <div class="row">

                         <div class="col-lg-3 footer_col">
                             <div class="footer_column footer_contact">
                                 <div class="logo_container">
                                     <div class="logo"><a href="#">UTT</a></div>
                                 </div>
                                 <div class="footer_title">Đồ án HTTT</div>
                                 <div class="footer_phone">Nhóm 7</div>
                                 <div class="footer_contact_text">
                                     <p>Đại học CN GTVT</p>
                                     <p>54 Triều Khúc - Thanh Xuân - Hà Nội</p>
                                 </div>
                                 <div class="footer_social">
                                     <ul>
                                         <li><a href="#"><i class="fab fa-facebook-f"></i></a></li>
                                         <li><a href="#"><i class="fab fa-twitter"></i></a></li>
                                         <li><a href="#"><i class="fab fa-youtube"></i></a></li>
                                         <li><a href="#"><i class="fab fa-google"></i></a></li>
                                         <li><a href="#"><i class="fab fa-vimeo-v"></i></a></li>
                                     </ul>
                                 </div>
                             </div>
                         </div>
                     </div>
                 </div>
             </footer>
     </div>
     <!-- Order Modal Tracking -->
     <div class="modal fade" id="exampleModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
         <div class="modal-dialog">
             <div class="modal-content">
                 <div class="modal-header">
                     <h5 class="modal-title" id="exampleModalLabel">Tình trạng đơn hàng</h5>
                     <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                         <span aria-hidden="true">&times;</span>
                     </button>
                 </div>
                 <div class="modal-body">
                     <form method="POST" action="{{ route('order.tracking') }}">
                         @csrf
                         <div class="modal-body">
                             <label>Mã</label>
                             <input type="text" name="code" required="" class="form-control" placeholder="Mã code">
                         </div>
                         <button class="btn btn-danger" type="submit">Kiểm tra</button>
                     </form>
                 </div>
             </div>
         </div>
     </div>
     <script src="{{ asset('public/frontend/js/jquery-3.3.1.min.js')}}"></script>
     <script src="{{ asset('public/frontend/styles/bootstrap4/popper.js')}}"></script>
     <script src="{{ asset('public/frontend/styles/bootstrap4/bootstrap.min.js')}}"></script>
     <script src="{{ asset('public/frontend/plugins/greensock/TweenMax.min.js')}}"></script>
     <script src="{{ asset('public/frontend/plugins/greensock/TimelineMax.min.js')}}"></script>
     <script src="{{ asset('public/frontend/plugins/scrollmagic/ScrollMagic.min.js')}}"></script>
     <script src="{{ asset('public/frontend/plugins/greensock/animation.gsap.min.js')}}"></script>
     <!-- <script src="{{ asset('public/frontend/plugins/greensock/ScrollToPlugin.min.jsplugins/greensock/ScrollToPlugin.min.js')}}"></script> -->
     <script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/toastr.js/latest/js/toastr.min.js"></script>
     <script src="{{ asset('public/frontend/js/product_custom.js')}}"></script>
     <script src="https://cdn.jsdelivr.net/npm/sweetalert2@9"></script>
     <script src="{{ asset('https://unpkg.com/sweetalert/dist/sweetalert.min.js')}}"></script>
     <script>
         @if(Session::has('messege'))
         var type = "{{Session::get('alert-type','info')}}"
         switch (type) {
             case 'info':
                 toastr.info("{{ Session::get('messege') }}");
                 break;
             case 'success':
                 toastr.success("{{ Session::get('messege') }}");
                 break;
             case 'warning':
                 toastr.warning("{{ Session::get('messege') }}");
                 break;
             case 'error':
                 toastr.error("{{ Session::get('messege') }}");
                 break;
         }
         @endif
     </script>
     <script>
         $(document).on("click", "#return", function(e) {
             e.preventDefault();
             var link = $(this).attr("href");
             swal({
                     title: "Bạn chắc chắn muốn trả hàng chứ???",
                     text: "Bạn sẽ được hoàn lại tiền khi trả hàng",
                     icon: "warning",
                     buttons: true,
                     dangerMode: true,
                 })
                 .then((willDelete) => {
                     if (willDelete) {
                         window.location.href = link;
                     } else {
                         swal("Hủy");
                     }
                 });
         });
     </script>
     <script src="{{ asset('public/frontend/plugins/OwlCarousel2-2.2.1/owl.carousel.js')}}"></script>
     <script src="{{ asset('public/frontend/plugins/slick-1.8.0/slick.js')}}"></script>
     <script src="{{ asset('public/frontend/plugins/easing/easing.js')}}"></script>
     <script src="{{ asset('public/frontend/js/custom.js')}}"></script>
 </body>

 </html>