@extends('admin.admin_layouts')

@section('admin_content')
<!-- ########## START: MAIN PANEL ########## -->
<div class="sl-mainpanel">
    <div class="sl-pagebody">
        <div class="row row-sm">
            <div class="col-sm-6 col-xl-3">
                <div class="card pd-20 bg-primary">
                    <div class="d-flex justify-content-between align-items-center mg-b-10">
                        <h6 class="tx-11 tx-uppercase mg-b-0 tx-spacing-1 tx-white">Bán trong ngày</h6>
                        <a href="" class="tx-white-8 hover-white"><i class="icon ion-android-more-horizontal"></i></a>
                    </div><!-- card-header -->
                    <div class="d-flex align-items-center justify-content-between">
                        <span class="sparkline2">5,3,9,6,5,9,7,3,5,2</span>
                        <h3 class="mg-b-0 tx-white tx-lato tx-bold">850đ</h3>
                    </div><!-- card-body -->
                    <div class="d-flex align-items-center justify-content-between mg-t-15 bd-t bd-white-2 pd-t-10">
                        <div>
                            <span class="tx-11 tx-white-6">Ví dụ vậy</span>
                            <h6 class="tx-white mg-b-0">2,210đ</h6>
                        </div>
                        <div>
                            <span class="tx-11 tx-white-6">Demo</span>
                            <h6 class="tx-white mg-b-0">320đ</h6>
                        </div>
                    </div><!-- -->
                </div><!-- card -->
            </div><!-- col-3 -->
        </div><!-- row -->
    </div><!-- sl-mainpanel -->
    <!-- ########## END: MAIN PANEL ########## -->
    @endsection