@extends('admin.admin_layouts')

@section('admin_content')
<!-- ########## START: MAIN PANEL ########## -->
<div class="sl-mainpanel">
 <div class="sl-pagebody">
  <div class="card pd-20 pd-sm-40">
   <h6 class="card-body-title">Cài đặt</h6>
   <p class="mg-b-20 mg-sm-b-30">Cài đặt Website</p>
   <form method="POST" action="{{ route('update.sitesetting') }}">
    @csrf
    <input type="hidden" name="id" value="{{ $setting->id }}">
    <div class="form-layout">
     <div class="row mg-b-25">
      <div class="col-lg-4">
       <div class="form-group">
        <label class="form-control-label">Phone 1<span class="tx-danger"> *</span></label>
        <input class="form-control" type="text" name="phone_one" value="{{ $setting->phone_one }}" required="">
       </div>
      </div><!-- col-6 -->
      <div class="col-lg-4">
       <div class="form-group">
        <label class="form-control-label">Phone 2<span class="tx-danger"> *</span></label>
        <input class="form-control" type="text" name="phone_two" value="{{ $setting->phone_two }}" required="">
       </div>
      </div><!-- col-6 -->
      <div class="col-lg-4">
       <div class="form-group">
        <label class="form-control-label">Email<span class="tx-danger"> *</span></label>
        <input class="form-control" type="text" name="email" value="{{ $setting->email }}" required="">
       </div>
      </div><!-- col-6 -->
      <div class="col-lg-4">
       <div class="form-group">
        <label class="form-control-label">Công ty<span class="tx-danger"> *</span></label>
        <input class="form-control" type="text" name="company_name" value="{{ $setting->company_name }}" required="">
       </div>
      </div><!-- col-6 -->
      <div class="col-lg-4">
       <div class="form-group">
        <label class="form-control-label">Địa chỉ<span class="tx-danger"> *</span></label>
        <input class="form-control" type="text" name="company_address" value="{{ $setting->company_address }}" required="">
       </div>
      </div><!-- col-6 -->
      <div class="col-lg-4">
       <div class="form-group">
        <label class="form-control-label">Facebook<span class="tx-danger"> *</span></label>
        <input class="form-control" type="text" name="facebook" value="{{ $setting->facebook }}" required="">
       </div>
      </div><!-- col-6 -->
      <div class="col-lg-4">
       <div class="form-group">
        <label class="form-control-label">Youtube<span class="tx-danger"> *</span></label>
        <input class="form-control" type="text" name="youtube" value="{{ $setting->youtube }}" required="">
       </div>
      </div><!-- col-6 -->
      <div class="col-lg-4">
       <div class="form-group">
        <label class="form-control-label">Instagram<span class="tx-danger"> *</span></label>
        <input class="form-control" type="text" name="instagram" value="{{ $setting->instagram }}" required="">
       </div>
      </div><!-- col-6 -->
      <div class="col-lg-4">
       <div class="form-group">
        <label class="form-control-label">Twitter<span class="tx-danger"> *</span></label>
        <input class="form-control" type="text" name="twitter" value="{{ $setting->twitter }}" required="">
       </div>
      </div><!-- col-6 -->
     </div><!-- row -->
     <!-- End Checkbox Product -->
     <br><br>

     <div class="form-layout-footer">
      <button type="submit" class="btn btn-info mg-r-5">Cập nhật</button>
     </div><!-- form-layout-footer -->
    </div><!-- form-layout -->
   </form>
  </div><!-- card -->

 </div><!-- sl-mainpanel -->
 @endsection