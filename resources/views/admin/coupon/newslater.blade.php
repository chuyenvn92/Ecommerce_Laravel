@extends('admin.admin_layouts')

@section('admin_content')

<!-- ########## START: MAIN PANEL ########## -->
<div class="sl-mainpanel">
  <div class="sl-pagebody">
    <div class="sl-page-title">
      <h5>Danh sách người đăng kí</h5>
    </div><!-- sl-page-title -->

    <div class="card pd-20 pd-sm-40">
      <h6 class="card-body-title">Danh sách</h6>
      <div class="table-wrapper">
        <table id="datatable1" class="table display responsive nowrap">
          <thead>
            <tr>
              <th class="wd-15p">STT</th>
              <th class="wd-15p">Email</th>
              <th class="wd-15p">Thời gian</th>
              <th class="wd-20p">Hành động</th>
            </tr>
          </thead>
          <tbody>
            @foreach($sub as $key=>$row)
            <tr>
              <td><input type="checkbox">{{ $key + 1 }}</td>
              <td>{{ $row->email }}</td>
              <td>{{ \Carbon\Carbon::parse($row->created_at)->diffForhumans() }}</td>
              <td>
                <a href="{{ URL::to('delete/sub/'.$row->id) }}" class="btn btn-sm btn-danger" id="delete">Xóa</a>
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