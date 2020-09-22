@extends('admin.admin_layouts')

@section('admin_content')

<!-- ########## START: MAIN PANEL ########## -->
<div class="sl-mainpanel">
 <div class="sl-pagebody">
  <div class="sl-page-title">
   <h5>Đơn hàng chờ xử lý</h5>
  </div><!-- sl-page-title -->

  <div class="card pd-20 pd-sm-40">
   <h6 class="card-body-title">Danh sách</h6>
   <div class="table-wrapper">
    <table id="datatable1" class="table display responsive nowrap">
     <thead>
      <tr>
       <th class="wd-15p">Thanh toán</th>
       <th class="wd-15p">Mã giao dịch</th>
       <th class="wd-15p">Số tiền</th>
       <th class="wd-20p">Phí ship</th>
       <th class="wd-20p">Tổng đơn</th>
       <th class="wd-20p">Ngày</th>
       <th class="wd-20p">Tình trạng</th>
       <th class="wd-20p">Thao tác</th>
      </tr>
     </thead>
     <tbody>
      @foreach($order as $row)
      <tr>
       <td>{{ $row->payment_type }}</td>
       <td>{{ $row->blnc_transection }}</td>
       <td>{{ $row->subtotal }}đ</td>
       <td>{{ $row->shipping }}đ</td>
       <td>{{ $row->total }}đ</td>
       <td>{{ $row->date }}</td>
       <td><span class="badge badge-warning">Chờ xử lí</span></td>
       <td>
        <a href="{{ URL::to('admin/view/order/'.$row->id) }}" class="btn btn-sm btn-info">Xem</a>
       </td>
      </tr>
      @endforeach
     </tbody>
    </table>
   </div><!-- table-wrapper -->
  </div><!-- card -->

 </div><!-- sl-mainpanel -->
 <!-- ########## END: MAIN PANEL ########## -->

 @endsection