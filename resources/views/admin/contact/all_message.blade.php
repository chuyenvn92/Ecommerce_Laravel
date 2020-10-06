@extends('admin.admin_layouts')

@section('admin_content')

<!-- ########## START: MAIN PANEL ########## -->
<div class="sl-mainpanel">
 <div class="sl-pagebody">
  <div class="sl-page-title">
   <h5>Tin nhắn người dùng</h5>
  </div><!-- sl-page-title -->

  <div class="card pd-20 pd-sm-40">
   <h6 class="card-body-title">Danh sách</h6>
   <div class="table-wrapper">
    <table id="datatable1" class="table display responsive nowrap">
     <thead>
      <tr>
       <th class="wd-15p">Tên</th>
       <th class="wd-15p">Email</th>
       <th class="wd-15p">Điện thoại</th>
       <th class="wd-20p">Tin nhắn</th>
       <th class="wd-20p">Thao tác</th>
      </tr>
     </thead>
     <tbody>
      @foreach($message as $row)
      <tr>
       <td>{{ $row->name }}</td>
       <td>{{ $row->email }}</td>
       <td>{{ $row->phone }}</td>
       <td>{{ $row->message }}</td>
       <td>
        <a href="" class="btn btn-sm btn-info">Xem</a>
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