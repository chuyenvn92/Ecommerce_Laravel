@extends('admin.admin_layouts')

@section('admin_content')
<div class="sl-mainpanel">
  <div class="sl-pagebody">
    <d class="card pd-20 pd-sm-40">
      <h6 class="card-body-title">Chi tiết đơn hàng</h6>

      <div class="row">
        <div class="col-md-6">
          <div class="card">
            <div class="card-header"><strong>Thông tin</strong> Đơn hàng</div>
            <div class="card-body">
              <table class="table">
                <tr>
                  <th>Tên:</th>
                  <th>{{ $order->name}}</th>
                </tr>
                <tr>
                  <th>Điện thoại:</th>
                  <th>{{ $order->phone}}</th>
                </tr>
                <tr>
                  <th>Phương thức thanh toán:</th>
                  <th>{{ $order->payment_type}}</th>
                </tr>
                <tr>
                  <th>Mã giao dịch:</th>
                  <th>{{ $order->payment_id}}</th>
                </tr>
                <tr>
                  <th>Tổng đơn hàng:</th>
                  <th>{{ number_format($order->total) }} {{'VNĐ'}}</th>
                </tr>
                <tr>
                  <th>Tháng</th>
                  <th>{{ $order->month}}</th>
                </tr>
                <tr>
                  <th>Ngày</th>
                  <th>{{ $order->date}}</th>
                </tr>
              </table>
            </div>
          </div>
        </div>
        <div class="col-md-6">
          <div class="card">
            <div class="card-header"><strong>Thông tin</strong> Ship hàng</div>
            <div class="card-body">
              <table class="table">
                <tr>
                  <th>Tên:</th>
                  <th>{{ $shipping->ship_name }}</th>
                </tr>
                <tr>
                  <th>Điện thoại:</th>
                  <th>{{ $shipping->ship_phone}}</th>
                </tr>
                <tr>
                  <th>Email</th>
                  <th>{{ $shipping->ship_email}}</th>
                </tr>
                <tr>
                  <th>Địa chỉ</th>
                  <th>{{ $shipping->ship_address}}</th>
                </tr>
                <tr>
                  <th>Thành Phố</th>
                  <th>{{ $shipping->ship_city}}</th>
                </tr>
                <tr>
                  <th>Tình trạng</th>
                  <th>
                    @if($order->status == 0)
                    <span class="badge badge-warning">Chờ xử lí</span>
                    @elseif($order->status == 1)
                    <span class="badge badge-info">Đã xử lí</span>
                    @elseif($order->status == 2)
                    <span class="badge badge-warning">Đang vận chuyển</span>
                    @elseif($order->status == 3)
                    <span class="badge badge-success">Đã giao hàng</span>
                    @else
                    <span class="badge badge-danger">Đã hủy</span>
                    @endif
                  </th>
                </tr>
              </table>
            </div>
          </div>
        </div>
      </div>

      <div class="row">
        <div class="card pd-20 pd-sm-40 col-lg-12">
          <h6 class="card-body-title">Chi tiết đơn hàng</h6>

          <div class="table-wrapper">
            <table class="table display responsive nowrap">
              <thead>
                <tr>
                  <th class="wd-15p">Mã sản phẩm</th>
                  <th class="wd-15p">Tên sản phẩm</th>
                  <th class="wd-15p">Hình ảnh</th>
                  <th class="wd-15p">Màu</th>
                  <th class="wd-15p">Size</th>
                  <th class="wd-15p">Số lượng</th>
                  <th class="wd-20p">Giá</th>
                  <th class="wd-15p">Tổng đơn hàng</th>
                </tr>
              </thead>
              <tbody>
                @foreach($details as $row)
                <tr>
                  <td>{{ $row->product_code }}</td>
                  <td>{{ $row->product_name }}</td>
                  <td><img src="{{ URL::to($row->image_one) }}" height="50px;" width="50px;"></td>
                  <td>{{ $row->color }}</td>
                  <td>{{ $row->size }}</td>
                  <td>{{ $row->quantity }}</td>
                  <td>{{ number_format($row->singleprice) }} {{ 'VNĐ' }}</td>
                  <td>{{ number_format($row->totalprice) }} {{ 'VNĐ' }}</td>
                </tr>
                @endforeach
              </tbody>
            </table>
          </div><!-- table-wrapper -->
        </div>
      </div>
      @if($order->status == 0)
      <a href="{{ url('admin/payment/accept/'.$order->id) }}" class="btn btn-info">Chấp nhận đơn hàng</a>
      <a href="{{ url('admin/payment/cancel/'.$order->id) }}" class="btn btn-danger mt-2">Hủy đơn hàng</a>
      @elseif($order->status == 1)
      <a href="{{ url('admin/delevery/process/'.$order->id) }}" class="btn btn-info">Chuyển cho bên giao hàng</a>
      @elseif($order->status == 2)
      <a href="{{ url('admin/delevery/done/'.$order->id) }}" class="btn btn-success">Giao hàng thành công</a>
      @elseif($order->status == 4)
      <strong class="text-danger text-center">Đơn hàng này không hợp lệ</strong>
      @else
      <strong class="text-success text-center">Sản phẩm đã được giao cho khách hàng</strong>
      @endif
  </div>
  @endsection