@extends('admin.admin_layouts')

@section('admin_content')

<!-- ########## START: MAIN PANEL ########## -->
<div class="sl-mainpanel">
 <div class="sl-pagebody">
  <div class="sl-page-title">
   <h5>Kho</h5>
  </div><!-- sl-page-title -->

  <div class="card pd-20 pd-sm-40">
   <h6 class="card-body-title">Kho</h6>
   <div class="table-wrapper">
    <table id="datatable1" class="table display responsive nowrap">
     <thead>
      <tr>
       <th class="wd-15p">Mã sản phẩm</th>
       <th class="wd-15p">Tên sản phẩm</th>
       <th class="wd-15p">Hình ảnh</th>
       <th class="wd-15p">Danh mục</th>
       <th class="wd-15p">Thương hiệu</th>
       <th class="wd-15p">Số lượng</th>
       <th class="wd-15p">Tình trạng</th>
      </tr>
     </thead>
     <tbody>
      @foreach($product as $row)
      <tr>
       <td>{{ $row->product_code }}</td>
       <td>{{ str_limit($row->product_name, $limit = 20) }}</td>
       <td><img src="{{ URL::to($row->image_one) }}" height="50px;" width="50px;"></td>
       <td>{{ $row->category_name }}</td>
       <td>{{ $row->brand_name }}</td>
       <td>{{ $row->product_quantity }}</td>
       <td>
        @if($row->status == 1)
        <span class="badge badge-success">Đang bán</span>
        @else
        <span class="badge badge-danger">Ngừng bán</span>
        @endif
       </td>
      </tr>
      @endforeach
     </tbody>
    </table>
   </div><!-- table-wrapper -->
  </div><!-- card -->

 </div><!-- sl-mainpanel -->
</div>
<!-- ########## END: MAIN PANEL ########## -->

@endsection