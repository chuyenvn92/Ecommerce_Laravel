@extends('admin.admin_layouts')

@section('admin_content')
<!-- ########## START: MAIN PANEL ########## -->
<div class="sl-mainpanel">
 <nav class="breadcrumb sl-breadcrumb">
  <a class="breadcrumb-item" href="index.html">Starlight</a>
  <span class="breadcrumb-item active">Product Section</span>
 </nav>

 <div class="sl-pagebody">
  <div class="card pd-20 pd-sm-40">
   <h6 class="card-body-title">New Product Add</h6>
   <p class="mg-b-20 mg-sm-b-30">New Product Add Form</p>

   <form method="POST" action="" enctype="multipart/form-data">
    @csrf
    <div class="form-layout">
     <div class="row mg-b-25">
      <div class="col-lg-4">
       <div class="form-group">
        <label class="form-control-label">Product Name<span class="tx-danger">*</span></label>
        <input class="form-control" type="text" name="product_name" placeholder="Product Name">
       </div>
      </div><!-- col-4 -->
      <div class="col-lg-4">
       <div class="form-group">
        <label class="form-control-label">Product Code<span class="tx-danger">*</span></label>
        <input class="form-control" type="text" name="product_code" placeholder="Product Code">
       </div>
      </div><!-- col-4 -->
      <div class="col-lg-4">
       <div class="form-group">
        <label class="form-control-label">Quantity<span class="tx-danger">*</span></label>
        <input class="form-control" type="text" name="product_quantity" value="" placeholder="Quantity">
       </div>
      </div><!-- col-4 -->
      <div class="col-lg-4">
       <div class="form-group mg-b-10-force">
        <label class="form-control-label">Category<span class="tx-danger">*</span></label>
        <select class="form-control select2" data-placeholder="Choose country" name="category_id">
         <option label="Choose country"></option>
         <option value="USA">United States of America</option>
         <option value="UK">United Kingdom</option>
         <option value="China">China</option>
         <option value="Japan">Japan</option>
        </select>
       </div>
      </div><!-- col-4 -->
      <div class="col-lg-4">
       <div class="form-group mg-b-10-force">
        <label class="form-control-label">Sub Category<span class="tx-danger">*</span></label>
        <select class="form-control select2" data-placeholder="Choose country" name="subcategory_id">

        </select>
       </div>
      </div><!-- col-4 -->
      <div class="col-lg-4">
       <div class="form-group mg-b-10-force">
        <label class="form-control-label">Brand<span class="tx-danger">*</span></label>
        <select class="form-control select2" data-placeholder="Choose country" name="brand_id">
         <option label="Choose country"></option>
         <option value="USA">United States of America</option>
         <option value="UK">United Kingdom</option>
         <option value="China">China</option>
         <option value="Japan">Japan</option>
        </select>
       </div>
      </div><!-- col-4 -->
      <div class="col-lg-4">
       <div class="form-group">
        <label class="form-control-label">Product Size<span class="tx-danger">*</span></label>
        <input class="form-control" type="text" name="product_size" id="size" data-role="tagsinput">
       </div>
      </div>
      <div class="col-lg-4">
       <div class="form-group">
        <label class="form-control-label">Product Color<span class="tx-danger">*</span></label>
        <input class="form-control" type="text" name="product_color" id="color" data-role="tagsinput">
       </div>
      </div>
      <div class="col-lg-4">
       <div class="form-group">
        <label class="form-control-label">Selling Price<span class="tx-danger">*</span></label>
        <input class="form-control" type="text" name="selling_price" placeholder="Selling Price">
       </div>
      </div>
      <div class="col-lg-12">
       <div class="form-group">
        <label class="form-control-label">Product Details<span class="tx-danger">*</span></label>
        <input class="form-control" id="summernote" name="product_details">
       </div>
      </div>
      <div class="col-lg-12">
       <div class="form-group">
        <label class="form-control-label">Video Link<span class="tx-danger">*</span></label>
        <input class="form-control" name="video_link" placeholder="Video link">
       </div>
      </div>
      <div class="col-lg-4">
       <div class="form-group">
        <label class="form-control-label">Image 1(Main)<span class="tx-danger">*</span></label>
        <label class="custom-file">
         <input type="file" id="file" class="custom-file-input" name="image_one">
         <span class="custom-file-control"></span>
        </label>
       </div>
      </div>
      <div class="col-lg-4">
       <div class="form-group">
        <label class="form-control-label">Image 2<span class="tx-danger">*</span></label>
        <label class="custom-file">
         <input type="file" id="file" class="custom-file-input" name="image_two">
         <span class="custom-file-control"></span>
        </label>
       </div>
      </div>
      <div class="col-lg-4">
       <div class="form-group">
        <label class="form-control-label">Image 3<span class="tx-danger">*</span></label>
        <label class="custom-file">
         <input type="file" id="file" class="custom-file-input" name="image_three">
         <span class="custom-file-control"></span>
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
        <span>Main Slider</span>
       </label>
      </div>
      <div class="col-lg-4">
       <label class="ckbox">
        <input type="checkbox" name="hot_deal" value="1">
        <span>Hot Deal</span>
       </label>
      </div>
      <div class="col-lg-4">
       <label class="ckbox">
        <input type="checkbox" name="best_rated" value="1">
        <span>Best Rated</span>
       </label>
      </div>
      <div class="col-lg-4">
       <label class="ckbox">
        <input type="checkbox" name="trend" value="1">
        <span>Trend Product</span>
       </label>
      </div>
      <div class="col-lg-4">
       <label class="ckbox">
        <input type="checkbox" name="mid_slider" value="1">
        <span>Mid Slider</span>
       </label>
      </div>
      <div class="col-lg-4">
       <label class="ckbox">
        <input type="checkbox" name="hot_new" value="1">
        <span>Hot New</span>
       </label>
      </div>
     </div>
     <!-- End Checkbox Product -->
     <br><br>

     <div class="form-layout-footer">
      <button class="btn btn-info mg-r-5">Submit Form</button>
      <button class="btn btn-secondary">Cancel</button>
     </div><!-- form-layout-footer -->
    </div><!-- form-layout -->
   </form>

  </div><!-- card -->

 </div><!-- sl-mainpanel -->
 <!-- ########## END: MAIN PANEL ########## -->
 <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/2.2.2/jquery.min.js"></script>
 <script src="https://cdn.jsdelivr.net/bootstrap.tagsinput/0.8.0/bootstrap-tagsinput.min.js"></script>
 @endsection