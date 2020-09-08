@extends('admin.admin_layouts')

@section('admin_content')

<!-- ########## START: MAIN PANEL ########## -->
<div class="sl-mainpanel">
  <div class="sl-pagebody">
    <div class="sl-page-title">
      <h5>Cập nhật thương hiệu</h5>
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
        <form action="{{ url('update/brand/'.$brand->id) }}" method="POST" enctype="multipart/form-data">
          @csrf
          <div class="modal-body pd-20">
            <div class="form-group">
              <label for="exampleInputEmail1">Tên</label>
              <input type="text" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" value="{{ $brand->brand_name }}" name="brand_name">
            </div>
            <div class="form-group">
              <label for="exampleInputEmail1">Logo</label>
              <input type="file" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" value="{{ $brand->brand_name }}" name="brand_logo">
            </div>
            <div class="form-group">
              <label for="exampleInputEmail1">Logo Cũ</label>
              <img src="{{ URL::to($brand->brand_logo) }}" height="70px;" width="80px;">
              <input type="hidden" name="old_logo" value="{{ $brand->brand_logo }}">
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