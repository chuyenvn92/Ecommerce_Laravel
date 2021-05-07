@extends('admin.admin_layouts')

@section('admin_content')

@php
$category = DB::table('categories')->get();
$brand = DB::table('brands')->get();
$subcategory = DB::table('subcategories')->get();
@endphp

<!-- ########## START: MAIN PANEL ########## -->
<div class="sl-mainpanel">
  <div class="sl-pagebody">
    <div class="card pd-20 pd-sm-40">
      <h6 class="card-body-title">Cập nhật sản phẩm
        <a href="{{ route('all.product') }}" class="btn btn-success btn-sm pull-right">Tất cả sản phẩm</a>
      </h6>
      <p class="mg-b-20 mg-sm-b-30">Cập nhật sản phẩm</p>

      <form method="POST" action="{{ url('update/product/withoutphoto/'.$product->id) }}" enctype="multipart/form-data">
        @csrf
        <div class="form-layout">
          <div class="row mg-b-25">
            <div class="col-lg-6">
              <div class="form-group">
                <label class="form-control-label">Tên sản phẩm<span class="tx-danger"> *</span></label>
                <input class="form-control" type="text" name="product_name" value="{{ $product->product_name}}">
              </div>
            </div><!-- col-4 -->
            <div class="col-lg-6">
              <div class="form-group">
                <label class="form-control-label">Số lượng<span class="tx-danger"> *</span></label>
                <input class="form-control" type="text" name="product_quantity" value="{{ $product->product_quantity}}">
              </div>
            </div>
            <div class="col-lg-6">
              <div class="form-group">
                <label class="form-control-label">Giá khuyến mãi<span class="tx-danger"> *</span></label>
                <input class="form-control" type="text" name="discount_price" value="{{ $product->discount_price}}">
              </div>
            </div><!-- col-4 -->
            <div class="col-lg-4">
              <div class="form-group mg-b-10-force">
                <label class="form-control-label">Danh mục<span class="tx-danger"> *</span></label>
                <select class="form-control select2" data-placeholder="Choose country" name="category_id">
                  <option label="Chọn danh mục"></option>
                  @foreach($category as $row)
                  <option value="{{ $row->id }}" <?php if ($row->id == $product->category_id) {
                                                    echo "selected";
                                                  } ?>>{{ $row->category_name }}</option>
                  @endforeach
                </select>
              </div>
            </div><!-- col-4 -->
            <div class="col-lg-4">
              <div class="form-group mg-b-10-force">
                <label class="form-control-label">Loại sản phẩm<span class="tx-danger"> *</span></label>
                <select class="form-control select2" data-placeholder="Choose country" name="subcategory_id">
                  @foreach($subcategory as $row)
                  <option value="{{ $row->id }}" <?php if ($row->id == $product->subcategory_id) {
                                                    echo "selected";
                                                  } ?>>{{ $row->subcategory_name }}</option>
                  @endforeach
                </select>
              </div>
            </div><!-- col-4 -->
            <div class="col-lg-4">
              <div class="form-group mg-b-10-force">
                <label class="form-control-label">Thương hiệu<span class="tx-danger"> *</span></label>
                <select class="form-control select2" data-placeholder="Choose country" name="brand_id">
                  <option label="Chọn thương hiệu"></option>
                  @foreach($brand as $row)
                  <option value="{{ $row->id }}" <?php if ($row->id == $product->brand_id) {
                                                    echo "selected";
                                                  } ?>>{{ $row->brand_name }}</option>
                  @endforeach
                </select>
              </div>
            </div><!-- col-4 -->
            <div class="col-lg-4">
              <div class="form-group">
                <label class="form-control-label">Kích cỡ<span class="tx-danger"> *</span></label>
                <input class="form-control" type="text" name="product_size" id="size" data-role="tagsinput" value="{{ $product->product_size}}">
              </div>
            </div>
            <div class="col-lg-4">
              <div class="form-group">
                <label class="form-control-label">Màu sắc<span class="tx-danger"> *</span></label>
                <input class="form-control" type="text" name="product_color" id="color" data-role="tagsinput" value="{{ $product->product_color}}">
              </div>
            </div>
            <div class=" col-lg-4">
              <div class="form-group">
                <label class="form-control-label">Giá gốc<span class="tx-danger"> *</span></label>
                <input class="form-control" type="text" name="selling_price" value="{{ $product->selling_price }}">
              </div>
            </div>
            <div class="col-lg-12">
              <div class="form-group">
                <label class="form-control-label">Chi tiết sản phẩm<span class="tx-danger"> *</span></label>
                <textarea class="form-control" id="summernote" name="product_details">
                {{ $product->product_details}}
                </textarea>
              </div>
            </div>
            <div class="col-lg-12">
              <div class="form-group">
                <label class="form-control-label">Đường dẫn Video<span class="tx-danger"> *</span></label>
                <input class="form-control" name="video_link" value="{{ $product->video_link }}">
              </div>
            </div>
          </div><!-- row -->

          <hr>
          <br><br>
          <!-- Check box Product  -->
          <div class="row">
            <div class="col-lg-4">
              <label class="ckbox">
                <input type="checkbox" name="main_slider" value="1" <?php if ($product->main_slider == 1) {
                                                                      echo "checked";
                                                                    } ?>>
                <span>Slider Chính</span>
              </label>
            </div>
            <div class="col-lg-4">
              <label class="ckbox">
                <input type="checkbox" name="hot_deal" value="1" <?php if ($product->hot_deal == 1) {
                                                                    echo "checked";
                                                                  } ?>>
                <span>Hot Deal</span>
              </label>
            </div>
            <div class="col-lg-4">
              <label class="ckbox">
                <input type="checkbox" name="best_rated" value="1" <?php if ($product->best_rated == 1) {
                                                                      echo "checked";
                                                                    } ?>>
                <span>Best Rated</span>
              </label>
            </div>
            <div class="col-lg-4">
              <label class="ckbox">
                <input type="checkbox" name="trend" value="1" <?php if ($product->trend == 1) {
                                                                echo "checked";
                                                              } ?>>
                <span>Trend Product</span>
              </label>
            </div>
            <div class="col-lg-4">
              <label class="ckbox">
                <input type="checkbox" name="mid_slider" value="1" <?php if ($product->mid_slider == 1) {
                                                                      echo "checked";
                                                                    } ?>>
                <span>Mid Slider</span>
              </label>
            </div>
            <div class="col-lg-4">
              <label class="ckbox">
                <input type="checkbox" name="hot_new" value="1" <?php if ($product->hot_new == 1) {
                                                                  echo "checked";
                                                                } ?>>
                <span>Hot New</span>
              </label>
            </div>
            <div class="col-lg-4">
              <label class="ckbox">
                <input type="checkbox" name="buyone_getone" value="1" <?php if ($product->buyone_getone == 1) {
                                                                        echo "checked";
                                                                      } ?>>
                <span>Mua 1 Tặng 1</span>
              </label>
            </div>
          </div>
          <!-- End Checkbox Product -->
          <br><br>

          <div class="form-layout-footer">
            <button class="btn btn-info mg-r-5">Cập nhật sản phẩm</button>
          </div><!-- form-layout-footer -->
        </div><!-- form-layout -->
      </form>

    </div><!-- card -->
  </div><!-- sl-mainpanel -->
  <div class="sl-pagebody">
    <div class="card pd-20 pd-sm-40">
      <h6 class="card-body-title">Cập nhật hình ảnh</h6>
      <form method="POST" action="{{ url('update/product/photo/'.$product->id) }}" enctype="multipart/form-data">
        @csrf
        <div class="row">
          <div class="col-lg-6 col-sm-6">
            <label class="form-control-label">Ảnh 1(Ảnh chính)<span class="tx-danger"> *</span></label>
            <br>
            <label class="custom-file">
              <input type="file" id="file" class="custom-file-input" name="image_one" onchange="readURL1(this);">
              <span class="custom-file-control"></span>
              <input type="hidden" name="old_one" value="{{ $product->image_one }}">
              <img src="#" id="one">
            </label>
          </div>
          <div class="col-lg-6 col-sm-6">
            <img src="{{ URL::to($product->image_one) }}" style="width: 80px; height: 80px;">
          </div>
        </div>
        <div class="row">
          <div class="col-lg-6 col-sm-6">
            <label class="form-control-label">Ảnh 2<span class="tx-danger"> *</span></label>
            <br>
            <label class="custom-file">
              <input type="file" id="file" class="custom-file-input" name="image_two" onchange="readURL2(this);">
              <span class="custom-file-control"></span>
              <input type="hidden" name="old_two" value="{{ $product->image_two }}">
              <img src="#" id="two">
            </label>
          </div>
          <div class="col-lg-6 col-sm-6">
            <img src="{{ URL::to($product->image_two) }}" style="width: 80px; height: 80px;">
          </div>
        </div>
        <div class="row">
          <div class="col-lg-6 col-sm-6">
            <label class="form-control-label">Ảnh 3<span class="tx-danger"> *</span></label>
            <br>
            <label class="custom-file">
              <input type="file" id="file" class="custom-file-input" name="image_three" onchange="readURL3(this);">
              <span class="custom-file-control"></span>
              <input type="hidden" name="old_three" value="{{ $product->image_three }}">
              <img src="#" id="three">
            </label>
          </div>
          <div class="col-lg-6 col-sm-6">
            <img src="{{ URL::to($product->image_three) }}" style="width: 80px; height: 80px;">
          </div>
        </div>
        <button type="submit" class="btn btn-sm btn-warning ">Cập nhật hình ảnh</button>
      </form>
    </div>
  </div>
</div>
</div>
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