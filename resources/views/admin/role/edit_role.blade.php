@extends('admin.admin_layouts')

@section('admin_content')
<!-- ########## START: MAIN PANEL ########## -->
<div class="sl-mainpanel">
 <div class="sl-pagebody">
  <div class="card pd-20 pd-sm-40">
   <h6 class="card-body-title">Thêm quyền</h6>
   <p class="mg-b-20 mg-sm-b-30">Thêm quyền cho User</p>
   <form method="POST" action="{{ route('update.admin') }}">
    @csrf
    <input type="hidden" name="id" value="{{ $user->id }}">
    <div class="form-layout">
     <div class="row mg-b-25">
      <div class="col-lg-6">
       <div class="form-group">
        <label class="form-control-label">Tên<span class="tx-danger"> *</span></label>
        <input class="form-control" type="text" name="name" value="{{ $user->name }}" required="">
       </div>
      </div><!-- col-6 -->
      <div class="col-lg-6">
       <div class="form-group">
        <label class="form-control-label">Số điện thoại<span class="tx-danger"> *</span></label>
        <input class="form-control" type="text" name="phone" value="{{ $user->phone }}" required="">
       </div>
      </div><!-- col-6 -->
      <div class="col-lg-6">
       <div class="form-group">
        <label class="form-control-label">Email<span class="tx-danger"> *</span></label>
        <input class="form-control" type="text" name="email" value="{{ $user->email }}" required="">
       </div>
      </div><!-- col-6 -->
     </div><!-- row -->
     <hr>
     <br><br>
     <!-- Check box Product  -->
     <div class="row">
      <div class="col-lg-4">
       <label class="ckbox">
        <input type="checkbox" name="category" value="1" <?php if ($user->category == 1) {
                                                          echo "checked";
                                                         } ?>>
        <span>Danh mục</span>
       </label>
      </div>
      <div class="col-lg-4">
       <label class="ckbox">
        <input type="checkbox" name="coupon" value="1" <?php if ($user->coupon == 1) {
                                                        echo "checked";
                                                       } ?>>
        <span>Mã giảm giá</span>
       </label>
      </div>
      <div class="col-lg-4">
       <label class="ckbox">
        <input type="checkbox" name="product" value="1" <?php if ($user->product == 1) {
                                                         echo "checked";
                                                        } ?>>
        <span>Sản phẩm</span>
       </label>
      </div>
      <div class="col-lg-4">
       <label class="ckbox">
        <input type="checkbox" name="blog" value="1" <?php if ($user->blog == 1) {
                                                      echo "checked";
                                                     } ?>>
        <span>Bài đăng</span>
       </label>
      </div>
      <div class="col-lg-4">
       <label class="ckbox">
        <input type="checkbox" name="order" value="1" <?php if ($user->order == 1) {
                                                       echo "checked";
                                                      } ?>>
        <span>Đơn hàng</span>
       </label>
      </div>
      <div class="col-lg-4">
       <label class="ckbox">
        <input type="checkbox" name="report" value="1" <?php if ($user->report == 1) {
                                                        echo "checked";
                                                       } ?>>
        <span>Báo cáo</span>
       </label>
      </div>
      <div class="col-lg-4">
       <label class="ckbox">
        <input type="checkbox" name="role" value="1" <?php if ($user->role == 1) {
                                                      echo "checked";
                                                     } ?>>
        <span>Phân quyền</span>
       </label>
      </div>
      <div class="col-lg-4">
       <label class="ckbox">
        <input type="checkbox" name="return" value="1" <?php if ($user->return == 1) {
                                                        echo "checked";
                                                       } ?>>
        <span>Trả hàng</span>
       </label>
      </div>
      <div class="col-lg-4">
       <label class="ckbox">
        <input type="checkbox" name="contact" value="1" <?php if ($user->contact == 1) {
                                                         echo "checked";
                                                        } ?>>
        <span>Liên hệ</span>
       </label>
      </div>
      <div class="col-lg-4">
       <label class="ckbox">
        <input type="checkbox" name="comment" value="1" <?php if ($user->comment == 1) {
                                                         echo "checked";
                                                        } ?>>
        <span>Bình luận</span>
       </label>
      </div>
      <div class="col-lg-4">
       <label class="ckbox">
        <input type="checkbox" name="setting" value="1" <?php if ($user->setting == 1) {
                                                         echo "checked";
                                                        } ?>>
        <span>Cài đặt</span>
       </label>
      </div>
      <div class="col-lg-4">
       <label class="ckbox">
        <input type="checkbox" name="stock" value="1" <?php if ($user->stock == 1) {
                                                       echo "checked";
                                                      } ?>>
        <span>Kho</span>
       </label>
      </div>
     </div>
     <!-- End Checkbox Product -->
     <br><br>

     <div class="form-layout-footer">
      <button type="submit" class="btn btn-info mg-r-5">Sửa</button>
     </div><!-- form-layout-footer -->
    </div><!-- form-layout -->
   </form>
  </div><!-- card -->

 </div><!-- sl-mainpanel -->
 @endsection