@extends('admin.admin_layouts')

@section('admin_content')

<!-- ########## START: MAIN PANEL ########## -->
<div class="sl-mainpanel">
  <div class="sl-pagebody">
    <div class="sl-page-title">
      <h5>BẢNG PHÂN LOẠI SẢN PHẨM</h5>
    </div><!-- sl-page-title -->

    <div class="card pd-20 pd-sm-40">
      <h6 class="card-body-title">Danh sách loại sản phẩm
        <a href="#" class="btn btn-sm btn-warning" style="float: right;" data-toggle="modal" data-target="#addCategory">Thêm mới</a>
      </h6>

      <div class="table-wrapper">
        <table id="datatable1" class="table display responsive nowrap">
          <thead>
            <tr>
              <th class="wd-15p">STT</th>
              <th class="wd-15p">Tên loại sản phẩm</th>
              <th class="wd-15p">Danh mục</th>
              <th class="wd-20p">Hành động</th>
            </tr>
          </thead>
          <tbody>
            @foreach($subcat as $key=>$row)
            <tr>
              <td>{{ $key + 1 }}</td>
              <td>{{ $row->subcategory_name }}</td>
              <td>{{ $row->category_name }}</td>
              <td>
                <a href="{{ URL::to('edit/subcategory/'.$row->id) }}" class="btn btn-sm btn-info">Sửa</a>
                <a href="{{ URL::to('delete/subcategory/'.$row->id) }}" class="btn btn-sm btn-danger" id="delete">Xóa</a>
              </td>
            </tr>
            @endforeach
          </tbody>
        </table>
      </div><!-- table-wrapper -->
    </div><!-- card -->

  </div><!-- sl-mainpanel -->
  <!-- ########## END: MAIN PANEL ########## -->


  <!-- LARGE MODAL -->
  <div id="addCategory" class="modal fade">
    <div class="modal-dialog modal-lg" role="document">
      <div class="modal-content tx-size-sm">
        <div class="modal-header pd-x-20">
          <h6 class="tx-14 mg-b-0 tx-uppercase tx-inverse tx-bold">Thêm loại sản phẩm</h6>
          <button type="button" class="close" data-dismiss="modal" aria-label="Close">
            <span aria-hidden="true">&times;</span>
          </button>
        </div>
        <!-- Validate Input Category -->
        @if ($errors->any())
        <div class="alert alert-danger">
          <ul>
            @foreach ($errors->all() as $error)
            <li>{{ $error }}</li>
            @endforeach
          </ul>
        </div>
        @endif
        <form action="{{ route('store.subcategory') }}" method="POST">
          @csrf
          <div class="modal-body pd-20">
            <div class="form-group">
              <label for="exampleInputEmail1">Tên loại</label>
              <input type="text" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" placeholder="Nhập tên loại sản phẩm" name="subcategory_name">
            </div>
            <div class="form-group">
              <label for="exampleInputEmail1">Danh mục</label>
              <select class="form-control" name="category_id">

                @foreach($category as $row)
                <option value="{{$row->id}}"> {{ $row->category_name }}</option>
                @endforeach

              </select>
            </div><!-- modal-body -->
            <div class="modal-footer">
              <button type="submit" class="btn btn-info pd-x-20">Thêm</button>
              <button type="button" class="btn btn-secondary pd-x-20" data-dismiss="modal">Đóng</button>
            </div>
        </form>
      </div>
    </div><!-- modal-dialog -->
  </div><!-- modal -->

  @endsection