@extends('layouts.app')

@section('content')
<link rel="stylesheet" type="text/css" href="{{ asset('public/frontend/styles/blog_styles.css') }}">
<link rel="stylesheet" type="text/css" href="{{ asset('public/frontend/styles/blog_responsive.css') }}">


<div class="blog">
 <div class="container">
  <div class="row">
   <div class="col">
    <div class="blog_posts d-flex flex-row align-items-start justify-content-between">

     @foreach($post as $row)
     <!-- Blog post -->
     <div class="blog_post">
      <div class="blog_image" style="background-image:url({{ asset($row->post_image) }})"></div>
      <div class="blog_text">
       @if(Session()->get('lang') == 'vietnam')
       {{ $row->post_title_vn}}
       @else
       {{ $row->post_title_en}}
       @endif
      </div>
      @if(Session()->get('lang') == 'vietnam')
      <div class="blog_button"><a href="blog_single.html">Xem bài viết</a></div>
      @else
      <div class="blog_button"><a href="blog_single.html">Continue Reading</a></div>
      @endif

     </div>
     @endforeach
    </div>
   </div>

  </div>
 </div>
</div>
<script src="{{ asset('public/frontend/js/blog_custom.js') }}"></script>
@endsection