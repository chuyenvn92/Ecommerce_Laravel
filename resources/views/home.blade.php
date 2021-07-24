@extends('layouts.app')
@section('content')

@php
$order = DB::table('orders')->where('user_id',Auth::id())->orderBy('id','DESC')->limit(10)->get();
@endphp
<div class="contact_form">
  <div class="container">
    <div class="row">
      <div class="col-8 card">
        <table class="table">
          <thead>
            <tr>
              <th scope="col">Thanh toán</th>
              <th scope="col">Mã giao dịch</th>
              <th scope="col">Tổng</th>
              <th scope="col">Ngày</th>
              <th scope="col">Mã</th>
              <th scope="col">Trạng thái</th>
            </tr>
          </thead>
          <tbody>
            @foreach($order as $row)
            <tr>
              <th>{{ $row->payment_type }}</th>
              <td>{{ $row->payment_id }}</td>
              <td>{{ number_format($row->total) }} {{ 'VNĐ'}}</td>
              <td>{{ $row->date }}</td>
              <td>{{ $row->status_code }}</td>
              <td>
                @if($row->status == 0)
                <span class="badge badge-warning">Chờ xử lí</span>
                @elseif($row->status == 1)
                <span class="badge badge-info">Đã xử lí</span>
                @elseif($row->status == 2)
                <span class="badge badge-warning">Đang vận chuyển</span>
                @elseif($row->status == 3)
                <span class="badge badge-success">Đã giao hàng</span>
                @else
                <span class="badge badge-danger">Đã hủy</span>
                @endif
              </td>
              
            </tr>
            @endforeach
          </tbody>
        </table>
      </div>
      <div class="col-4">
        <div class="card">
          <img src=" {{ asset('frontend/images/chuyen.jpg') }}" class="card-img-top" style="height: 90px; width: 90px; margin-left: 34%;">
        </div>
        <div class="card-body">
          <h5 class="text-center">{{ Auth::user()->name }}</h5>
        </div>
        <ul class="list-group list-group-flush">
          <li class="list-group-item"><a href="{{ route('password.change') }}">Thay đổi mật khẩu</a></li>
          <li class="list-group-item"><a href="{{ route('password.change') }}">Chỉnh sửa thông tin</a></li>
          <li class="list-group-item"><a href="{{ route('success.orderlist') }}">Trả hàng</a></li>
        </ul>
        <div class="card-body">
          <a href="{{ route('user.logout') }}" class="btn btn-danger btn-sm btn-block">Đăng xuất</a>
        </div>
      </div>
    </div>
  </div>
</div>
@endsection