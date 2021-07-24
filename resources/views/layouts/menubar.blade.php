@php
$category = DB::table('categories')->get();
@endphp

<nav class="main_nav">
    <div class="container">
        <div class="row">
            <div class="col">
                <div class="main_nav_content d-flex flex-row">
                    <!-- Categories Menu -->
                    <div class="cat_menu_container">
                        <div class="cat_menu_title d-flex flex-row align-items-center justify-content-start">
                            <div class="cat_burger"><span></span><span></span><span></span></div>
                            <div class="cat_menu_text">Danh mục</div>
                        </div>
                        <ul class="cat_menu">
                            @foreach($category as $cat)
                            <li class="hassubs">
                                <a href="{{ url('allcategory/'.$cat->id) }}">{{ $cat->category_name }}<i class="fas fa-chevron-right"></i></a>
                                <ul>
                                    @php
                                    $subcategory = DB::table('subcategories')->where('category_id',$cat->id)->get();
                                    @endphp
                                    @foreach($subcategory as $row)
                                    <li class="hassubs">
                                        <a href="{{ url('products/'.$row->id) }}">{{ $row->subcategory_name}}</a>
                                    </li>
                                    @endforeach
                                </ul>
                            </li>
                            @endforeach
                        </ul>
                    </div>
                    <!-- Main Nav Menu -->
                    <div class="main_nav_menu ml-5">
                        <ul class="standard_dropdown main_nav_dropdown">
                            <li><a href="{{ url('/') }}">Trang chủ<i class="fas fa-chevron-down"></i></a></li>
                            <li><a href="{{ route('blog.post') }}">Bài đăng<i class="fas fa-chevron-down"></i></a></li>
                            <li><a href="{{ route('contact.page') }}">Liên hệ<i class="fas fa-chevron-down"></i></a></li>
                        </ul>
                    </div>

                    <!-- Menu Trigger -->

                    <!-- <div class="menu_trigger_container ml-auto">
                        <div class="menu_trigger d-flex flex-row align-items-center justify-content-end">
                            <div class="menu_burger">
                                <div class="menu_trigger_text">Danh mục</div>
                                <div class="cat_burger menu_burger_inner"><span></span><span></span><span></span></div>
                            </div>
                        </div>
                    </div> -->

                </div>
            </div>
        </div>
    </div>
</nav>

<!-- Menu -->

<div class="page_menu">
    <div class="container">
        <div class="row">
            <div class="col">

                <div class="page_menu_content">

                    <div class="page_menu_search">
                        <form action="#">
                            <input type="search" required="required" class="page_menu_search_input" placeholder="Tìm kiếm">
                        </form>
                    </div>
                    <!-- <div class="menu_contact">
                        <div class="menu_contact_item">
                            <div class="menu_contact_icon"><img src="{{ asset('frontend/images/phone_white.png')}}" alt=""></div>0931733469
                        </div>
                        <div class="menu_contact_item">
                            <div class="menu_contact_icon"><img src="{{ asset('frontend/images/mail_white.png')}}" alt=""></div><a href="mailto:fastsales@gmail.com">fastsales@gmail.com</a>
                        </div>
                    </div> -->
                </div>
            </div>
        </div>
    </div>
</div>
</header>