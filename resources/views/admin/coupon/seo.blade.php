@extends('admin.admin_layouts')

@section('admin_content')
<!-- ########## START: MAIN PANEL ########## -->
<div class="sl-mainpanel">
 <div class="sl-pagebody">
  <div class="card pd-20 pd-sm-40">
   <h6 class="card-body-title">SEO Setting</h6>
   <p class="mg-b-20 mg-sm-b-30">Seo Setting</p>

   <form method="POST" action="{{ route('update.seo') }}">
    @csrf
    <div class="form-layout">
     <div class="row mg-b-25">
      <div class="col-lg-6">
       <div class="form-group">
        <label class="form-control-label">Meta Title: <span class="tx-danger"> *</span></label>
        <input class="form-control" type="text" name="meta_title" value={{ $seo->meta_title }}>
       </div>
      </div><!-- col-4 -->
      <div class="col-lg-6">
       <div class="form-group">
        <label class="form-control-label">Meta Author: <span class="tx-danger"> *</span></label>
        <input class="form-control" type="text" name="meta_author" value={{ $seo->meta_author }}>
       </div>
      </div><!-- col-4 -->
      <div class="col-lg-6">
       <div class="form-group">
        <label class="form-control-label">Meta Tag: <span class="tx-danger"> *</span></label>
        <input class="form-control" type="text" name="meta_tag" value={{ $seo->meta_tag }}>
       </div>
      </div><!-- col-4 -->
      <div class="col-lg-6">
       <div class="form-group">
        <label class="form-control-label">Meta Description: <span class="tx-danger"> *</span></label>
        <input class="form-control" type="text" name="meta_description" value={{ $seo->meta_description }}>
       </div>
      </div><!-- col-4 -->
      <div class="col-lg-12">
       <div class="form-group">
        <label class="form-control-label">Google Analytics<span class="tx-danger"> *</span></label>
        <textarea class="form-control" id="summernote1" name="google_analytics">
        {{ $seo->google_analytics }}
        </textarea>
       </div>
      </div>
      <div class="col-lg-12">
       <div class="form-group">
        <label class="form-control-label">Bing Analytics<span class="tx-danger"> *</span></label>
        <textarea class="form-control" id="summernote" name="bing_analytics">
        {{ $seo->bing_analytics }}
        </textarea>
        <input type="hidden" name="id" value="{{ $seo->id }}">
       </div>
      </div>
     </div><!-- row -->
     <hr>
    </div>
    <br><br>
    <div class="form-layout-footer">
     <button class="btn btn-info mg-r-5" type="submit">Cập nhật</button>
    </div><!-- form-layout-footer -->
  </div><!-- form-layout -->
  </form>

 </div><!-- card -->

</div><!-- sl-mainpanel -->
<!-- ########## END: MAIN PANEL ########## -->
@endsection