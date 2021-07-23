@extends('admin.admin_layouts')

@section('admin_content')
<!-- ########## START: MAIN PANEL ########## -->
<div class="sl-mainpanel">
  <div class="sl-pagebody">
    <div class="card pd-20 pd-sm-40">
      <h6 class="card-body-title">Thêm sản phẩm
        <a href="{{ route('all.product') }}" class="btn btn-success btn-sm pull-right">Tất cả sản phẩm</a>
      </h6>
      <p class="mg-b-20 mg-sm-b-30">Thêm mới sản phẩm</p>

      <form method="POST" action="{{ route('store.product') }}" enctype="multipart/form-data">
        @csrf
        <div class="form-layout">
          <div class="row mg-b-25">
            <div class="col-lg-6">
              <div class="form-group">
                <label class="form-control-label">Tên sản phẩm<span class="tx-danger"> *</span></label>
                <input class="form-control" type="text" name="product_name" placeholder="Tên sản phẩm">
              </div>
            </div><!-- col-6 -->
            {{-- <div class="col-lg-6">
              <div class="form-group">
                <label class="form-control-label">Mã sản phẩm<span class="tx-danger"> *</span></label>
                <input class="form-control" type="text" name="product_code" placeholder="Mã sản phẩm">
              </div>
            </div> --}}
            <!-- col-6 -->
            <div class="col-lg-6">
              <div class="form-group">
                <label class="form-control-label">Số lượng<span class="tx-danger"> *</span></label>
                <input class="form-control" type="text" name="product_quantity" placeholder="Số lượng">
              </div>
            </div><!-- col-6 -->
            <div class="col-lg-6">
              <div class="form-group">
                <label class="form-control-label">Giá khuyến mãi<span class="tx-danger"> *</span></label>
                <input class="form-control" type="text" name="discount_price" placeholder="Giá ưu đãi">
              </div>
            </div><!-- col-4 -->
            <div class="col-lg-4">
              <div class="form-group mg-b-10-force">
                <label class="form-control-label">Danh mục<span class="tx-danger"> *</span></label>
                <select class="form-control select2" data-placeholder="Choose country" name="category_id">
                  <option label="Chọn Danh mục"></option>
                  @foreach($category as $row)
                  <option value="{{ $row->id }}">{{ $row->category_name }}</option>
                  @endforeach
                </select>
              </div>
            </div><!-- col-4 -->
            <div class="col-lg-4">
              <div class="form-group mg-b-10-force">
                <label class="form-control-label">Loại sản phẩm<span class="tx-danger">*</span></label>
                <select class="form-control select2" data-placeholder="Choose country" name="subcategory_id">

                </select>
              </div>
            </div><!-- col-4 -->
            <!-- <div class="col-lg-4">
              <div class="form-group mg-b-10-force">
                <label class="form-control-label"></label>Thương hiệu<span class="tx-danger"> *</span></label>
                <select class="form-control select2" data-placeholder="Choose country" name="brand_id">
                  <option label="Chọc thương hiệu"></option>
                  @foreach($brand as $br)
                  <option value="{{ $br->id}}">{{ $br->brand_name}}</option>
                  @endforeach
                </select>
              </div>
            </div>col-4 -->

            <div class="col-lg-4">
              <div class="form-group mg-b-10-force">
                <label class="form-control-label">Thương hiệu<span class="tx-danger"> *</span></label>
                <select class="form-control select2" data-placeholder="Choose country" name="brand_id">
                  <option label="Chọn thương hiệu"></option>
                  @foreach($brand as $br)
                  <option value="{{ $br->id}}">{{ $br->brand_name}}</option>
                  @endforeach
                </select>
              </div>
            </div><!-- col-4 -->

            <div class="col-lg-4">
              <div class="form-group">
                <label class="form-control-label">Kích cỡ sản phẩm<span class="tx-danger"> *</span></label>
                <input class="form-control" type="text" name="product_size" id="size" data-role="tagsinput">
              </div>
            </div>
            <div class="col-lg-4">
              <div class="form-group">
                <label class="form-control-label">Màu sản phẩm<span class="tx-danger"> *</span></label>
                <input class="form-control" type="text" name="product_color" id="color" data-role="tagsinput">
              </div>
            </div>
            <div class="col-lg-4">
              <div class="form-group">
                <label class="form-control-label">Giá gốc<span class="tx-danger"> *</span></label>
                <input class="form-control" type="text" name="selling_price" placeholder="Giá gốc">
              </div>
            </div>
            <div class="col-lg-12">
              <div class="form-group">
                <label class="form-control-label">Mô tả sản phẩm<span class="tx-danger"> *</span></label>
                <textarea class="form-control" id="summernote" name="product_details"></textarea>
              </div>
            </div>
            <div class="col-lg-12">
              <div class="form-group">
                <label class="form-control-label">Video về sản phẩm<span class="tx-danger"> *</span></label>
                <input class="form-control" name="video_link" placeholder="Đường dẫn video">
              </div>
            </div>
            <div class="col-lg-4">
              <div class="form-group">
                <label class="form-control-label">Ảnh 1(Ảnh chính)<span class="tx-danger"> *</span></label>
                <label class="custom-file">
                  <input type="file" id="file" class="custom-file-input" name="image_one" onchange="readURL1(this);" required="">
                  <span class="custom-file-control"></span>
                  <img src="#" id="one">
                </label>
              </div>
            </div>
            <div class="col-lg-4">
              <div class="form-group">
                <label class="form-control-label">Ảnh 2<span class="tx-danger">*</span></label>
                <label class="custom-file">
                  <input type="file" id="file" class="custom-file-input" name="image_two" onchange="readURL2(this);" required="">
                  <span class="custom-file-control"></span>
                  <img src="#" id="two">
                </label>
              </div>
            </div>
            <div class="col-lg-4">
              <div class="form-group">
                <label class="form-control-label">Ảnh 3<span class="tx-danger">*</span></label>
                <label class="custom-file">
                  <input type="file" id="file" class="custom-file-input" name="image_three" onchange="readURL3(this);" required="">
                  <span class="custom-file-control"></span>
                  <img src="#" id="three">
                </label>
              </div>
            </div>
          </div><!-- row -->

          <hr>
          <br><br>
          <!-- Check box Product  -->
          <div class="row">
            <div class="col-lg-4">
              <label class="ckbox">
                <input type="checkbox" name="main_slider" value="1">
                <span>Slider chính</span>
              </label>
            </div>
            <div class="col-lg-4">
              <label class="ckbox">
                <input type="checkbox" name="hot_deal" value="1">
                <span>Hot Deal(hàng giảm giá sâu)</span>
              </label>
            </div>
            <div class="col-lg-4">
              <label class="ckbox">
                <input type="checkbox" name="best_rated" value="1">
                <span>Best Rated(Đánh giá tốt)</span>
              </label>
            </div>
            <div class="col-lg-4">
              <label class="ckbox">
                <input type="checkbox" name="trend" value="1">
                <span>Trend Product(Sản phẩm xu hướng)</span>
              </label>
            </div>
            <div class="col-lg-4">
              <label class="ckbox">
                <input type="checkbox" name="mid_slider" value="1">
                <span>Slider Giữa</span>
              </label>
            </div>
            <div class="col-lg-4">
              <label class="ckbox">
                <input type="checkbox" name="hot_new" value="1">
                <span>Hot New(Hàng mới)</span>
              </label>
            </div>
            <div class="col-lg-4">
              <label class="ckbox">
                <input type="checkbox" name="buyone_getone" value="1">
                <span>Mua 1 Tặng 1</span>
              </label>
            </div>
          </div>
          <!-- End Checkbox Product -->
          <br><br>

          <div class="form-layout-footer">
            <button class="btn btn-info mg-r-5">Thêm sản phẩm</button>
            <!-- <button class="btn btn-secondary">Hủy</button> -->
          </div><!-- form-layout-footer -->
        </div><!-- form-layout -->
      </form>

    </div><!-- card -->

  </div><!-- sl-mainpanel -->
  <!-- ########## END: MAIN PANEL ########## -->
  <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/2.2.2/jquery.min.js"></script>
  <script src="https://cdn.jsdelivr.net/bootstrap.tagsinput/0.8.0/bootstrap-tagsinput.min.js"></script>
  <script type="text/javascript">
    // đoạn code ajax này để load dữ liệu ra option sau khi chọn từ categories
    $(document).ready(function() {
      $('select[name="category_id"]').on('change', function() {
        var category_id = $(this).val();
        if (category_id) {

          $.ajax({
            url: "{{ url('/get/subcategory/') }}/" + category_id,
            type: "GET",
            dataType: "json",
            success: function(data) {
              var d = $('select[name="subcategory_id"]').empty();
              $.each(data, function(key, value) {

                $('select[name="subcategory_id"]').append('<option value="' + value.id + '">' + value.subcategory_name + '</option>');

              });
            },
          });

        } else {
          alert('danger');
        }

      });
    });
  </script>

  <script type="text/javascript">
    // đoạn code này hiển thị ảnh tải lên
    function readURL1(input) {
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
  <script type="text/javascript">
    // đoạn code này hiển thị ảnh tải lên
    function readURL2(input) {
      if (input.files && input.files[0]) {
        var reader = new FileReader();
        reader.onload = function(e) {
          $('#two')
            .attr('src', e.target.result)
            .width(80)
            .height(80);
        };
        reader.readAsDataURL(input.files[0]);
      }
    }
  </script>
  <script type="text/javascript">
    // đoạn code này hiển thị ảnh tải lên
    function readURL3(input) {
      if (input.files && input.files[0]) {
        var reader = new FileReader();
        reader.onload = function(e) {
          $('#three')
            .attr('src', e.target.result)
            .width(80)
            .height(80);
        };
        reader.readAsDataURL(input.files[0]);
      }
    }
  </script>
  @endsection