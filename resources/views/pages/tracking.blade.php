@extends('layouts.app')

@section('content')

<div class="contact_form">
 <div class="container">
  <div class="row">
   <div class="col-5 offset-lg-1">
    <div class="contact_form_title">
     <h4>Trạng thái đơn hàng của bạn</h4>
    </div>
    <div class="progress">

     @if($track->status == 0)
     <div class="progress-bar bg-danger" role="progressbar" style="width: 15%" aria-valuenow="15" aria-valuemin="0" aria-valuemax="100"></div>
     @elseif($track->status == 1)
     <div class="progress-bar bg-danger" role="progressbar" style="width: 15%" aria-valuenow="15" aria-valuemin="0" aria-valuemax="100"></div>
     <div class="progress-bar bg-primary" role="progressbar" style="width: 30%" aria-valuenow="30" aria-valuemin="0" aria-valuemax="100"></div>
     @elseif($track->status == 2)
     <div class="progress-bar bg-danger" role="progressbar" style="width: 15%" aria-valuenow="15" aria-valuemin="0" aria-valuemax="100"></div>
     <div class="progress-bar bg-primary" role="progressbar" style="width: 30%" aria-valuenow="30" aria-valuemin="0" aria-valuemax="100"></div>
     <div class="progress-bar bg-info" role="progressbar" style="width: 20%" aria-valuenow="20" aria-valuemin="0" aria-valuemax="100"></div>
     @elseif($track->status == 3)
     <div class="progress-bar bg-danger" role="progressbar" style="width: 15%" aria-valuenow="15" aria-valuemin="0" aria-valuemax="100"></div>
     <div class="progress-bar bg-primary" role="progressbar" style="width: 30%" aria-valuenow="30" aria-valuemin="0" aria-valuemax="100"></div>
     <div class="progress-bar bg-info" role="progressbar" style="width: 20%" aria-valuenow="20" aria-valuemin="0" aria-valuemax="100"></div>
     <div class="progress-bar bg-success" role="progressbar" style="width: 35%" aria-valuenow="20" aria-valuemin="0" aria-valuemax="100"></div>
     @else
     <div class="progress-bar bg-danger" role="progressbar" style="width: 100%" aria-valuenow="15" aria-valuemin="0" aria-valuemax="100"></div>
     @endif
    </div><br>
    @if($track->status == 0)
    <h6>Đơn hàng của bạn đã được duyệt</h6>
    @elseif($track->status == 1)
    <h6>Đơn hàng của bạn đang được giao cho bên vận chuyển</h6>
    @elseif($track->status == 2)
    <h6>Đơn hàng của bạn đang được vận chuyển</h6>
    @elseif($track->status == 3)
    <h6>Đơn hàng của bạn đã vận chuyển thành công</h6>
    @else
    <h6>Đơn hàng không được chấp nhận</h6>
    @endif
   </div>
   <div class="col-5 offset-lg-1">
    <div class="contact_form_title">
     <h4>Chi tiết đơn hàng</h4>
    </div>
    <ul class="list-group col-lg-12">
     <li class="list-group-item"><b>Thanh toán:</b> {{ $track->payment_type}}</li>
     <li class="list-group-item"><b>Mã giao dịch:</b> {{ $track->payment_id}}</li>
     <li class="list-group-item"><b>Mã thẻ:</b> {{ $track->blnc_transection}}</li>
     <li class="list-group-item"><b>Tổng:</b> {{ number_format($track->subtotal)}} {{'VNĐ'}}</li>
     <li class="list-group-item"><b>Phí ship:</b> {{ number_format($track->shipping)}} {{'VNĐ'}}</li>
     <li class="list-group-item"><b>Tổng tiền:</b> {{ number_format($track->total)}} {{ 'VNĐ'}}</li>
     <li class="list-group-item"><b>Tháng:</b> {{ $track->month}}</li>
     <li class="list-group-item"><b>Ngày:</b> {{ $track->date}}</li>
     <li class="list-group-item"><b>Năm:</b> {{ $track->year}}</li>
    </ul>
   </div>
  </div>
 </div>
</div>
</div>
@endsection