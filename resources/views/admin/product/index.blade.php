@extends('admin.admin_layouts')

@section('admin_content')

<!-- ########## START: MAIN PANEL ########## -->
<div class="sl-mainpanel">
 <div class="sl-pagebody">
  <div class="sl-page-title">
   <h5>Danh sách sản phẩm</h5>
  </div><!-- sl-page-title -->

  <div class="card pd-20 pd-sm-40">
   <h6 class="card-body-title">Danh sách sản phẩm
    <a href="{{ route('add.product')}}" class="btn btn-sm btn-warning" style="float: right;">Add New</a>
   </h6>

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
       <th class="wd-20p">Thao tác</th>
      </tr>
     </thead>
     <tbody>
      @foreach($product as $row)
      <tr>
       <td>{{ $row->product_code }}</td>
       <td>{{ $row->product_name }}</td>
       <td><img src="{{ URL::to($row->image_one) }}" height="50px;" width="50px;"></td>
       <td>{{ $row->category_name }}</td>
       <td>{{ $row->brand_name }}</td>
       <td>{{ $row->product_quantity }}</td>
       <td>
        @if($row->status == 1)
        <span class="badge badge-success">Kích hoạt</span>
        @else
        <span class="badge badge-danger">Ngừng bán</span>
        @endif
       </td>
       <td>
        <a href="{{ URL::to('edit/product/'.$row->id) }}" class="btn btn-sm btn-info" title="Edit"><i class="fa fa-edit"></i></a>
        <a href="{{ URL::to('delete/product/'.$row->id) }}" class="btn btn-sm btn-danger" id="delete" title="Delete"><i class="fa fa-trash"></i></a>
        <a href="{{ URL::to('view/product/'.$row->id) }}" class="btn btn-sm btn-warning" title="Show"><i class="fa fa-eye"></i></a>
        @if($row->status == 1)
        <a href="{{ URL::to('inactive/product/'.$row->id) }}" class="btn btn-sm btn-danger" title="Inactive"><i class="fa fa-thumbs-down"></i></a>
        @else
        <a href="{{ URL::to('active/product/'.$row->id) }}" class="btn btn-sm btn-primary" title="Active"><i class="fa fa-thumbs-up"></i></a>
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