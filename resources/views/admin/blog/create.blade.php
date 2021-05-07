@extends('admin.admin_layouts')

@section('admin_content')
<!-- ########## START: MAIN PANEL ########## -->
<div class="sl-mainpanel">
  <div class="sl-pagebody">
    <div class="card pd-20 pd-sm-40">
      <h6 class="card-body-title">Bài đăng mới
        <a href="{{ route('all.blogpost') }}" class="btn btn-success btn-sm pull-right">Tất cả bài đăng</a>
      </h6>
      <p class="mg-b-20 mg-sm-b-30">Tạo bài đăng mới</p>

      <form method="POST" action="{{ route('store.post') }}" enctype="multipart/form-data">
        @csrf
        <div class="form-layout">
          <div class="row mg-b-25">
            <div class="col-lg-4">
              <div class="form-group">
                <label class="form-control-label">Title (English)<span class="tx-danger"> *</span></label>
                <input class="form-control" type="text" name="post_title_en" placeholder="Title">
              </div>
            </div><!-- col-4 -->
            <div class="col-lg-4">
              <div class="form-group">
                <label class="form-control-label">Tiêu đề (Tiếng Việt)<span class="tx-danger"> *</span></label>
                <input class="form-control" type="text" name="post_title_vn" placeholder="Tiêu đề">
              </div>
            </div><!-- col-4 -->
            <div class="col-lg-4">
              <div class="form-group mg-b-10-force">
                <label class="form-control-label">Chủ đề<span class="tx-danger"> *</span></label>
                <select class="form-control select2" data-placeholder="Choose country" name="category_id">
                  <option label="Chọn danh mục"></option>
                  @foreach($blogcategory as $row)
                  <option value="{{ $row->id }}">{{ $row->category_name_en }}</option>
                  @endforeach
                </select>
              </div>
            </div><!-- col-4 -->
            <div class="col-lg-12">
              <div class="form-group">
                <label class="form-control-label">Description (English)<span class="tx-danger"> *</span></label>
                <textarea class="form-control" id="summernote" name="details_en"></textarea>
              </div>
            </div>
            <div class="col-lg-12">
              <div class="form-group">
                <label class="form-control-label">Chi tiết (Tiếng Việt)<span class="tx-danger"> *</span></label>
                <textarea class="form-control" id="summernote1" name="details_vn"></textarea>
              </div>
            </div>
            <div class="col-lg-4">
              <div class="form-group">
                <label class="form-control-label">Ảnh<span class="tx-danger"> *</span></label>
                <label class="custom-file">
                  <input type="file" id="file" class="custom-file-input" name="post_image" onchange="readURL(this);">
                  <span class="custom-file-control"></span>
                  <img src="#" id="one">
                </label>
              </div>
            </div>
          </div><!-- row -->
          <hr>
        </div>
        <br><br>
        <div class="form-layout-footer">
          <button class="btn btn-info mg-r-5" type="submit">Tạo bài đăng</button>
        </div><!-- form-layout-footer -->
    </div><!-- form-layout -->
    </form>

  </div><!-- card -->

</div><!-- sl-mainpanel -->
<!-- ########## END: MAIN PANEL ########## -->
<script type="text/javascript">
  // đoạn code này hiển thị ảnh tải lên
  function readURL(input) {
    if (input.files && input.files[0]) {
      var reader = new FileReader();
      reader.onload = function(e) {
        $('#one')
          .attr('src', e.target.result)
          .width(80)
          .height(80);
      };
      reader.readAsDataURL(input.files[0]);
    }
  }
</script>
@endsection