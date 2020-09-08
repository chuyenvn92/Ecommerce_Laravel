@extends('admin.admin_layouts')

@section('admin_content')

<!-- ########## START: MAIN PANEL ########## -->
<div class="sl-mainpanel">
  <div class="sl-pagebody">
    <div class="sl-page-title">
      <h5>Cập nhật loại sản phẩm</h5>
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
        <form action="{{ url('update/subcategory/'.$subcat->id) }}" method="POST">
          @csrf
          <div class="modal-body pd-20">
            <div class="form-group">
              <label for="exampleInputEmail1">Tên loại sản phẩm</label>
              <input type="text" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" value="{{ $subcat->subcategory_name }}" name="subcategory_name">
            </div>
            <div class="form-group">
              <label for="exampleInputEmail1">Danh mục</label>
              <select class="form-control" name="category_id">
                @foreach($category as $row)
                <option value="{{ $row->id }}" <?php if ($row->id == $subcat->category_id) {
                                                  echo "selected";
                                                } ?>> {{ $row->category_name }}</option>
                @endforeach
              </select>
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