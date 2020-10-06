@extends('admin.admin_layouts')

@section('admin_content')
<!-- ########## START: MAIN PANEL ########## -->
<div class="sl-mainpanel">
  <div class="sl-pagebody">
    <div class="card pd-20 pd-sm-40">
      <h6 class="card-body-title">Chi tiết sản phẩm</h6>
      <div class="form-layout">
        <div class="row mg-b-25">
          <div class="col-lg-4">
            <div class="form-group">
              <label class="form-control-label">Tên sản phẩm<span class="tx-danger"> *</span></label><br>
              <strong>{{ $product->product_name }}</strong>
            </div>
          </div><!-- col-4 -->
          <div class="col-lg-4">
            <div class="form-group">
              <label class="form-control-label">Mã sản phẩm<span class="tx-danger"> *</span></label><br>
              <strong>{{ $product->product_code }}</strong>
            </div>
          </div><!-- col-4 -->
          <div class="col-lg-4">
            <div class="form-group">
              <label class="form-control-label">Số lượng<span class="tx-danger"> *</span></label><br>
              <strong>{{ $product->product_quantity }}</strong>
            </div>
          </div><!-- col-4 -->
          <div class="col-lg-4">
            <div class="form-group mg-b-10-force">
              <label class="form-control-label">Danh mục<span class="tx-danger"> *</span></label><br>
              <strong>{{ $product->category_name }}</strong>
            </div>
          </div><!-- col-4 -->
          <div class="col-lg-4">
            <div class="form-group mg-b-10-force">
              <label class="form-control-label">Loại sản phẩm<span class="tx-danger"> *</span></label><br>
              <strong>{{ $product->subcategory_name }}</strong>
            </div>
          </div><!-- col-4 -->
          <div class="col-lg-4">
            <div class="form-group mg-b-10-force">
              <label class="form-control-label">Thương hiệu<span class="tx-danger"> *</span></label><br>
              <strong>{{ $product->brand_name }}</strong>
            </div>
          </div><!-- col-4 -->
          <div class="col-lg-4">
            <div class="form-group">
              <label class="form-control-label">Kích cỡ<span class="tx-danger"> *</span></label>
              <br>
              <strong>{{ $product->product_size }}</strong>
            </div>
          </div>
          <div class="col-lg-4">
            <div class="form-group">
              <label class="form-control-label">Màu sắc<span class="tx-danger"> *</span></label>
              <br>
              <strong>{{ $product->product_color }}</strong>
            </div>
          </div>
          <div class="col-lg-4">
            <div class="form-group">
              @if($product->discount_price == null)
              <label class="form-control-label">Giá bán<span class="tx-danger"> *</span></label>
              <br>
              <strong>{{ number_format($product->selling_price) }} {{ 'VNĐ' }}</strong>
              @else
              <label class="form-control-label">Giá khuyến mãi<span class="tx-danger"> *</span></label>
              <br>
              <strong>{{ number_format($product->discount_price) }} {{ 'VNĐ' }}</strong>
              @endif
            </div>
          </div>
          <div class="col-lg-12">
            <div class="form-group">
              <label class="form-control-label">Chi tiết sản phẩm<span class="tx-danger"> *</span></label>
              <br>
              <p>{!! $product->product_details !!}</p>
            </div>
          </div>
          <div class="col-lg-12">
            <div class="form-group">
              <label class="form-control-label">Đường dẫn video<span class="tx-danger"> *</span></label>
              <br>
              <strong>{{ $product->video_link }}</strong>
            </div>
          </div>
          <div class="col-lg-4">
            <div class="form-group">
              <label class="form-control-label">Ảnh 1(Ảnh chính)<span class="tx-danger"> *</span></label><br>
              <label class="custom-file">
                <img src="{{ URL::to($product->image_one) }}" style="height:80px; width:80px;">
              </label>
            </div>
          </div>
          <div class="col-lg-4">
            <div class="form-group">
              <label class="form-control-label">Ảnh 2<span class="tx-danger">*</span></label><br>
              <label class="custom-file">
                <img src="{{ URL::to($product->image_two) }}" style="height:80px; width:80px;">
              </label>
            </div>
          </div>
          <div class="col-lg-4">
            <div class="form-group">
              <label class="form-control-label">Ảnh 3<span class="tx-danger">*</span></label><br>
              <label class="custom-file">
                <img src="{{ URL::to($product->image_three) }}" style="height:80px; width:80px;">
              </label>
            </div>
          </div>
        </div><!-- row -->

        <hr>
        <br><br>
        <!-- Check box Product  -->
        <div class="row">
          <div class="col-lg-4">
            <label class="">
              @if($product->main_slider == 1)
              <span class="bagde badge-success">x</span>
              @else
              <span class="badge badge-danger">x</span>
              @endif
              <span>Slider chính</span>
            </label>
          </div>
          <div class="col-lg-4">
            <label class="">
              @if($product->hot_deal == 1)
              <span class="bagde badge-success">x</span>
              @else
              <span class="badge badge-danger">x</span>
              @endif
              <span>Hot Deal</span>
            </label>
          </div>
          <div class="col-lg-4">
            <label class="">
              @if($product->best_rated == 1)
              <span class="bagde badge-success">x</span>
              @else
              <span class="badge badge-danger">x</span>
              @endif
              <span>Best Rated</span>
            </label>
          </div>
          <div class="col-lg-4">
            <label class="">
              @if($product->trend == 1)
              <span class="bagde badge-success">x</span>
              @else
              <span class="badge badge-danger">x</span>
              @endif
              <span>Trend Product</span>
            </label>
          </div>
          <div class="col-lg-4">
            <label class="">
              @if($product->mid_slider == 1)
              <span class="bagde badge-success">x</span>
              @else
              <span class="badge badge-danger">x</span>
              @endif
              <span>Mid Slider</span>
            </label>
          </div>
          <div class="col-lg-4">
            <label class="">
              @if($product->hot_new == 1)
              <span class="bagde badge-success">x</span>
              @else
              <span class="badge badge-danger">x</span>
              @endif
              <span>Hot New</span>
            </label>
          </div>
        </div>
        <!-- End Checkbox Product -->
      </div><!-- form-layout -->

    </div><!-- card -->

  </div><!-- sl-mainpanel -->
  <!-- ########## END: MAIN PANEL ########## -->
  <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/2.2.2/jquery.min.js"></script>
  <script src="https://cdn.jsdelivr.net/bootstrap.tagsinput/0.8.0/bootstrap-tagsinput.min.js"></script>

  @endsection