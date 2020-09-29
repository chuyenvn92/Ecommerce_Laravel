@extends('admin.admin_layouts')

@section('admin_content')

<!-- ########## START: MAIN PANEL ########## -->
<div class="sl-mainpanel">
  <div class="sl-pagebody">
    <div class="sl-page-title">
      <h5>Tìm kiếm báo cáo</h5>
    </div><!-- sl-page-title -->

    <div class="row">
      <div class="col-lg-4">
        <div class="card pd-20 pd-sm-40">
          <div class="table-wrapper">
            <form action="{{ route('search.by.date') }}" method="POST">
              @csrf
              <div class="modal-body pd-20">
                <div class="form-group">
                  <label for="exampleInputEmail1">Theo ngày</label>
                  <input type="date" class="form-control" id="exampleInputEmail1" value="" name="date">
                </div>
                <div class="modal-footer">
                  <button type="submit" class="btn btn-info pd-x-20">Tìm</button>
                </div>
            </form>
          </div>
        </div>
      </div>
    </div>
    <div class="col-lg-4">
      <div class="card pd-20 pd-sm-40">
        <div class="table-wrapper">
          <form action="{{ route('search.by.month') }}" method="POST">
            @csrf
            <div class="modal-body pd-20">
              <div class="form-group">
                <label for="exampleInputEmail1">Theo tháng</label>
                <select class="form-control" name="month">
                  <option value="January">Tháng 1</option>
                  <option value="February">Tháng 2</option>
                  <option value="March">Tháng 3</option>
                  <option value="April">Tháng 4</option>
                  <option value="May">Tháng 5</option>
                  <option value="Jun">Tháng 6</option>
                  <option value="July">Tháng 7</option>
                  <option value="August">Tháng 8</option>
                  <option value="September">Tháng 9</option>
                  <option value="October">Tháng 10</option>
                  <option value="November">Tháng 12</option>
                  <option value="December">Tháng 12</option>
                </select>
              </div>
              <div class="modal-footer">
                <button type="submit" class="btn btn-info pd-x-20">Tìm</button>
              </div>
          </form>
        </div>
      </div>
    </div>
  </div>
  <div class="col-lg-4">
    <div class="card pd-20 pd-sm-40">
      <div class="table-wrapper">
        <form action="{{ route('search.by.year') }}" method="POST">
          @csrf
          <div class="modal-body pd-20">
            <div class="form-group">
              <label for="exampleInputEmail1">Theo năm</label>
              <select class="form-control" name="year">
                <option value="2020">2020</option>
                <option value="2021">2021</option>
                <option value="2022">2022</option>
                <option value="2023">2023</option>
              </select>
            </div>
            <div class="modal-footer">
              <button type="submit" class="btn btn-info pd-x-20">Tìm</button>
            </div>
        </form>
      </div>
    </div>
  </div>
</div>
</div>
@endsection