@extends('admin.admin_layouts')

@section('admin_content')

<!-- ########## START: MAIN PANEL ########## -->
<div class="sl-mainpanel">
 <div class="sl-pagebody">
  <div class="sl-page-title">
   <h5>BẢNG ADMIN</h5>
  </div><!-- sl-page-title -->

  <div class="card pd-20 pd-sm-40">
   <h6 class="card-body-title">Danh sách Quản trị
    <a href="{{ route('create.admin') }}" class="btn btn-sm btn-warning" style="float: right;">Thêm mới</a>
   </h6>
   <div class="table-wrapper">
    <table id="datatable1" class="table display responsive nowrap">
     <thead>
      <tr>
       <th class="wd-15p">Tên</th>
       <th class="wd-15p">Số điện thoại</th>
       <th class="wd-20p">Quyền</th>
       <th class="wd-20p">Thao tác</th>
      </tr>
     </thead>
     <tbody>
      @foreach($user as $row)
      <tr>
       <td>{{ $row->name }}</td>
       <td>{{ $row->phone }}</td>
       <td>
        @if($row->category == 1)
        <span class="badge btn-primary">Danh mục</span>
        @else
        @endif
        @if($row->coupon == 1)
        <span class="badge btn-primary">Mã giảm giá</span>
        @else
        @endif
        @if($row->product == 1)
        <span class="badge btn-primary">Sản phẩm</span>
        @else
        @endif
        @if($row->blog == 1)
        <span class="badge btn-primary">Bài đăng</span>
        @else
        @endif
        @if($row->order == 1)
        <span class="badge btn-primary">Đơn hàng</span>
        @else
        @endif
        @if($row->report == 1)
        <span class="badge btn-primary">Báo cáo</span>
        @else
        @endif
        @if($row->role == 1)
        <span class="badge btn-primary">Phân quyền</span>
        @else
        @endif
        @if($row->return == 1)
        <span class="badge btn-primary">Trả hàng</span>
        @else
        @endif
        @if($row->contact == 1)
        <span class="badge btn-primary">Liên hệ</span>
        @else
        @endif
        @if($row->comment == 1)
        <span class="badge btn-primary">Bình luận</span>
        @else
        @endif
        @if($row->setting == 1)
        <span class="badge btn-primary">Cài đặt</span>
        @else
        @endif
        @if($row->stock == 1)
        <span class="badge btn-primary">Kho</span>
        @else
        @endif
       </td>
       <td>
        <a href="{{ URL::to('edit/admin/'.$row->id) }}" class="btn btn-sm btn-info">Sửa</a>
        <a href="{{ URL::to('delete/admin/'.$row->id) }}" class="btn btn-sm btn-danger">Xóa</a>
       </td>
      </tr>
      @endforeach
     </tbody>
    </table>
   </div><!-- table-wrapper -->
  </div><!-- card -->

 </div><!-- sl-mainpanel -->
 @endsection