@extends('layouts.app')

@section('content')
@include('layouts.menubar')
<link rel="stylesheet" type="text/css" href="{{ asset('frontend/styles/blog_styles.css') }}">
<link rel="stylesheet" type="text/css" href="{{ asset('frontend/styles/blog_responsive.css') }}">


<div class="blog">
	<div class="container">
		<div class="row">
			<div class="col">
			@foreach($post as $row)
				<div class="blog_posts">	
					<div class="blog_post">
						<div class="blog_image" style="background-image:url({{ asset($row->post_image) }})"></div>
						<div class="blog_text">
							@if(Session()->get('lang') == 'vietnam')
							{{ $row->post_title_vn}}
							@else
							{{ $row->post_title_en}}
							@endif
						</div>
						<div class="blog_button"><a href="{{ url('blog/single/'.$row->id) }}">
								@if(Session()->get('lang') == 'vietnam')
								Xem bài viết
								@else
								Continue Reading
								@endif
							</a>
						</div>						
					</div>
				</div>
				@endforeach
			</div>
    	
		</div>
       
	</div>
</div>
@endsection