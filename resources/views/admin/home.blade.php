@extends('admin.admin_layouts')

@section('admin_content')
@php
$date = date('d-m-y');
$today = DB::table('orders')->where('date', $date)->sum('total');

$month = date('F');
$month = DB::table('orders')->where('month', $month)->sum('total');

$year = date('Y');
$year = DB::table('orders')->where('year', $year)->sum('total');

$delevery = DB::table('orders')->where('date', $date)->where('status', 3)->sum('total');

$product = DB::table('products')->get();
$brand = DB::table('brands')->get();
$user = DB::table('users')->get();

$new_order = DB::table('orders')->where('status', 0)->get();
$success_order = DB::table('orders')->where('status', 3)->get();
$shipping_order = DB::table('orders')->where('status', 2)->get();
@endphp

<!-- ########## START: MAIN PANEL ########## -->
<div class="sl-mainpanel">
  <div class="sl-pagebody">
    <div class="row row-sm">
      <div class="col-sm-6 col-xl-4">
        <div class="card pd-20 bg-primary">
          <div class="d-flex justify-content-between align-items-center mg-b-10">
            <h6 class="tx-11 tx-uppercase mg-b-0 tx-spacing-1 tx-white">Doanh thu trong ngày</h6>
            <a href="" class="tx-white-8 hover-white"><i class="icon ion-android-more-horizontal"></i></a>
          </div><!-- card-header -->
          <div class="d-flex align-items-center justify-content-between">
            <span class="sparkline2">5,3,9,6,5,9,7,3,5,2</span>
            <h5 class="mg-b-0 tx-white tx-lato tx-bold">{{ number_format($today) }} {{ 'VNĐ' }}</h5>
          </div><!-- card-body -->
        </div><!-- card -->
      </div><!-- col-3 -->
      <div class="col-sm-6 col-xl-4">
        <div class="card pd-20 bg-info">
          <div class="d-flex justify-content-between align-items-center mg-b-10">
            <h6 class="tx-11 tx-uppercase mg-b-0 tx-spacing-1 tx-white">Doanh thu trong tháng</h6>
            <a href="" class="tx-white-8 hover-white"><i class="icon ion-android-more-horizontal"></i></a>
          </div><!-- card-header -->
          <div class="d-flex align-items-center justify-content-between">
            <span class="sparkline2">5,3,9,6,5,9,7,3,5,2</span>
            <h5 class="mg-b-0 tx-white tx-lato tx-bold">{{ number_format($month) }} {{ 'VNĐ' }}</h5>
          </div><!-- card-body -->
        </div><!-- card -->
      </div><!-- col-3 -->
      <div class="col-sm-6 col-xl-4">
        <div class="card pd-20 bg-purple">
          <div class="d-flex justify-content-between align-items-center mg-b-10">
            <h6 class="tx-11 tx-uppercase mg-b-0 tx-spacing-1 tx-white">Doanh thu trong năm</h6>
            <a href="" class="tx-white-8 hover-white"><i class="icon ion-android-more-horizontal"></i></a>
          </div><!-- card-header -->
          <div class="d-flex align-items-center justify-content-between">
            <span class="sparkline2">5,3,9,6,5,9,7,3,5,2</span>
            <h5 class="mg-b-0 tx-white tx-lato tx-bold">{{ number_format($year) }} {{ 'VNĐ' }}</h5>
          </div><!-- card-body -->
        </div><!-- card -->
      </div><!-- col-3 -->
    </div><!-- row -->
    <br><br>

    <div class="row row-sm">
      <div class="col-sm-6 col-xl-4">
        <div class="card pd-20 bg-primary">
          <div class="d-flex justify-content-between align-items-center mg-b-10">
            <h6 class="tx-11 tx-uppercase mg-b-0 tx-spacing-1 tx-white">Loại sản phẩm</h6>
            <a href="" class="tx-white-8 hover-white"><i class="icon ion-android-more-horizontal"></i></a>
          </div><!-- card-header -->
          <div class="d-flex align-items-center justify-content-between">
            <span class="sparkline2">5,3,9,6,5,9,7,3,5,2</span>
            <h3 class="mg-b-0 tx-white tx-lato tx-bold">{{count($product) }}</h3>
          </div><!-- card-body -->
        </div><!-- card -->
      </div><!-- col-3 -->
      <div class="col-sm-6 col-xl-4">
        <div class="card pd-20 bg-primary">
          <div class="d-flex justify-content-between align-items-center mg-b-10">
            <h6 class="tx-11 tx-uppercase mg-b-0 tx-spacing-1 tx-white">Thương hiệu</h6>
            <a href="" class="tx-white-8 hover-white"><i class="icon ion-android-more-horizontal"></i></a>
          </div><!-- card-header -->
          <div class="d-flex align-items-center justify-content-between">
            <span class="sparkline2">5,3,9,6,5,9,7,3,5,2</span>
            <h3 class="mg-b-0 tx-white tx-lato tx-bold">{{ count($brand) }}</h3>
          </div><!-- card-body -->
        </div><!-- card -->
      </div><!-- col-3 -->
      <div class="col-sm-6 col-xl-4">
        <div class="card pd-20 bg-primary">
          <div class="d-flex justify-content-between align-items-center mg-b-10">
            <h6 class="tx-11 tx-uppercase mg-b-0 tx-spacing-1 tx-white">Khách hàng</h6>
            <a href="" class="tx-white-8 hover-white"><i class="icon ion-android-more-horizontal"></i></a>
          </div><!-- card-header -->
          <div class="d-flex align-items-center justify-content-between">
            <span class="sparkline2">5,3,9,6,5,9,7,3,5,2</span>
            <h3 class="mg-b-0 tx-white tx-lato tx-bold">{{ count($user) }}</h3>
          </div><!-- card-body -->
        </div><!-- card -->
      </div><!-- col-3 -->
    </div><!-- row -->
    <br><br>

    <div class="row row-sm">
      <div class="col-sm-6 col-xl-4">
        <div class="card pd-20 bg-primary">
          <div class="d-flex justify-content-between align-items-center mg-b-10">
            <h6 class="tx-11 tx-uppercase mg-b-0 tx-spacing-1 tx-white">Đơn hàng mới</h6>
            <a href="" class="tx-white-8 hover-white"><i class="icon ion-android-more-horizontal"></i></a>
          </div><!-- card-header -->
          <div class="d-flex align-items-center justify-content-between">
            <span class="sparkline2">5,3,9,6,5,9,7,3,5,2</span>
            <h3 class="mg-b-0 tx-white tx-lato tx-bold">{{count($new_order) }}</h3>
          </div><!-- card-body -->
        </div><!-- card -->
      </div><!-- col-3 -->
      <div class="col-sm-6 col-xl-4">
        <div class="card pd-20 bg-primary">
          <div class="d-flex justify-content-between align-items-center mg-b-10">
            <h6 class="tx-11 tx-uppercase mg-b-0 tx-spacing-1 tx-white">Đơn hàng đang vận chuyển</h6>
            <a href="" class="tx-white-8 hover-white"><i class="icon ion-android-more-horizontal"></i></a>
          </div><!-- card-header -->
          <div class="d-flex align-items-center justify-content-between">
            <span class="sparkline2">5,3,9,6,5,9,7,3,5,2</span>
            <h3 class="mg-b-0 tx-white tx-lato tx-bold">{{ count($shipping_order) }}</h3>
          </div><!-- card-body -->
        </div><!-- card -->
      </div><!-- col-3 -->
      <div class="col-sm-6 col-xl-4">
        <div class="card pd-20 bg-primary">
          <div class="d-flex justify-content-between align-items-center mg-b-10">
            <h6 class="tx-11 tx-uppercase mg-b-0 tx-spacing-1 tx-white">Đơn hàng thành công</h6>
            <a href="" class="tx-white-8 hover-white"><i class="icon ion-android-more-horizontal"></i></a>
          </div><!-- card-header -->
          <div class="d-flex align-items-center justify-content-between">
            <span class="sparkline2">5,3,9,6,5,9,7,3,5,2</span>
            <h3 class="mg-b-0 tx-white tx-lato tx-bold">{{ count($success_order) }}</h3>
          </div><!-- card-body -->
        </div><!-- card -->
      </div><!-- col-3 -->
    </div><!-- row -->
  </div><!-- sl-mainpanel -->
</div>
<!-- ########## END: MAIN PANEL ########## -->
@endsection