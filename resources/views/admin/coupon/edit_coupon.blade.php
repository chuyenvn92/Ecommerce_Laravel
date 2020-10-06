@extends('admin.admin_layouts')

@section('admin_content')

<!-- ########## START: MAIN PANEL ########## -->
<div class="sl-mainpanel">
  <div class="sl-pagebody">
    <div class="sl-page-title">
      <h5>Cập nhật mã giảm giá</h5>
    </div><!-- sl-page-title -->

    <div class="card pd-20 pd-sm-40">
      <h6 class="card-body-title">Cập nhật</h6>

      <div class="table-wrapper">
        @if ($errors->any())
        <div class="alert alert-danger">
          <ul>
            @foreach ($errors->all() as $error)
            <li>{{ $error }}</li>
            @endforeach
          </ul>
        </div>
        @endif
        <form action="{{ url('update/coupon/'.$coupon->id) }}" method="POST">
          @csrf
          <div class="modal-body pd-20">
            <div class="form-group">
              <label for="exampleInputEmail1">Mã giảm giá</label>
              <input type="text" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" value="{{ $coupon->coupon }}" name="coupon">
            </div>
            <div class="form-group">
              <label for="exampleInputEmail1">Số tiền</label>
              <input type="text" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" value="{{ $coupon->discount }}" name="discount">
            </div>
            <!-- modal-body -->
            <div class="modal-footer">
              <button type="submit" class="btn btn-info pd-x-20">Cập nhật</button>
            </div>
        </form>
      </div><!-- table-wrapper -->
    </div><!-- card -->

  </div><!-- sl-mainpanel -->
  <!-- ########## END: MAIN PANEL ########## -->

  @endsection