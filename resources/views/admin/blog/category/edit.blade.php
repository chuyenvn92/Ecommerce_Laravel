@extends('admin.admin_layouts')

@section('admin_content')

<!-- ########## START: MAIN PANEL ########## -->
<div class="sl-mainpanel">
 <div class="sl-pagebody">
  <div class="sl-page-title">
   <h5>Blog Category Update</h5>
  </div><!-- sl-page-title -->

  <div class="card pd-20 pd-sm-40">
   <h6 class="card-body-title">Blog Category Update</h6>

   <div class="table-wrapper">
    @if ($errors->any())
    <div class="alert alert-danger">
     <ul>
      @foreach ($errors->all() as $error)
      <li>{{ $error }}</li>
      @endforeach
     </ul>
    </div>
    @endif
    <form action="{{ url('update/blogcategory/'.$blogCatEdit->id) }}" method="POST">
     @csrf
     <div class="modal-body pd-20">
      <div class="form-group">
       <label for="exampleInputEmail1">Category Name EN</label>
       <input type="text" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" value="{{ $blogCatEdit->category_name_en }}" name="category_name_en">
      </div><!-- modal-body -->
      <div class="form-group">
       <label for="exampleInputEmail1">Category Name VN</label>
       <input type="text" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" value="{{ $blogCatEdit->category_name_vn }}" name="category_name_vn">
      </div><!-- modal-body -->
      <div class="modal-footer">
       <button type="submit" class="btn btn-info pd-x-20">Update</button>
      </div>
    </form>
   </div><!-- table-wrapper -->
  </div><!-- card -->

 </div><!-- sl-mainpanel -->
 <!-- ########## END: MAIN PANEL ########## -->

 @endsection