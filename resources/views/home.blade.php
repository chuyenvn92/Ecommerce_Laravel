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
              <th scope="col">Mã trạng thái</th>
              <th scope="col">Thao tác</th>
            </tr>
          </thead>
          <tbody>
            @foreach($order as $row)
            <tr>
              <th>{{ $row->payment_type }}</th>
              <td>{{ $row->payment_id }}</td>
              <td>{{ $row->total }} đ</td>
              <td>{{ $row->date }}</td>
              <td>{{ $row->status_code }}</td>
              <td>
                <a href="" class="btn btn-info">Xem</a>
              </td>
            </tr>
            @endforeach
          </tbody>
        </table>
      </div>
      <div class="col-4">
        <div class="card">
          <img src=" {{ asset('public/frontend/images/chuyen.jpg') }}" class="card-img-top" style="height: 90px; width: 90px; margin-left: 34%;">
        </div>
        <div class="card-body">
          <h5 class="text-center">{{ Auth::user()->name }}</h5>
        </div>
        <ul class="list-group list-group-flush">
          <li class="list-group-item"><a href="{{ route('password.change') }}">Thay đổi mật khẩu</a></li>
          <li class="list-group-item">2</li>
          <li class="list-group-item">3</li>
        </ul>
        <div class="card-body">
          <a href="{{ route('user.logout') }}" class="btn btn-danger btn-sm btn-block">Đăng xuất</a>
        </div>
      </div>
    </div>
  </div>
</div>
@endsection