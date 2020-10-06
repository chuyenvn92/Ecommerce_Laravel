@extends('admin.admin_layouts')

@section('admin_content')

<!-- ########## START: MAIN PANEL ########## -->
<div class="sl-mainpanel">
 <div class="sl-pagebody">
  <div class="sl-page-title">
   <h5>Đơn hàng trả lại</h5>
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
       <th class="wd-20p">Trả hàng</th>
       <th class="wd-20p">Thao tác</th>
      </tr>
     </thead>
     <tbody>
      @foreach($order as $row)
      <tr>
       <td>{{ $row->payment_type }}</td>
       <td>{{ $row->blnc_transection }}</td>
       <td>{{ number_format($row->subtotal) }} {{ 'VNĐ' }}</td>
       <td>{{ number_format($row->shipping) }} {{ 'VNĐ' }}</td>
       <td>{{ number_format($row->total) }} {{ 'VNĐ' }}</td>
       <td>{{ $row->date }}</td>
       <td>
        @if($row->return_order == 1)
        <span class="badge badge-info">Chờ xử lí</span>
        @elseif($row->return_order == 2)
        <span class="badge badge-success">Thành công</span>
        @endif
       </td>
       <td>
        <a href="{{ URL::to('admin/approve/return/'.$row->id) }}" class="btn btn-sm btn-info">Chấp nhận</a>
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