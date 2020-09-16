<?php

namespace App\Http\Controllers\admin\Category;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use DB;

class SubCategoryController extends Controller
{
  public function __construct()
  {
    $this->middleware('auth:admin');
  }

  public function subcategories()
  {
    $category = DB::table('categories')->get();
    $subcat = DB::table('subcategories')->join('categories', 'subcategories.category_id', 'categories.id')
      ->select('subcategories.*', 'categories.category_name')->get();
    return view('admin.category.subcategory', compact('category', 'subcat'));
  }

  public function storesubcat(Request $request)
  {
    $validateData = $request->validate([
      'category_id' => 'required',
      'subcategory_name' => 'required',
    ]);

    $data = array();
    $data['category_id'] = $request->category_id;
    $data['subcategory_name'] = $request->subcategory_name;
    DB::table('subcategories')->insert($data);
    $notification = array(
      'messege' => 'Thêm Loại sản phẩm thành công',
      'alert-type' => 'success'
    );
    return Redirect()->back()->with($notification);
  }

  public function Deletesubcat($id)
  {
    DB::table('subcategories')->where('id', $id)->delete();
    $notification = array(
      'messege' => 'Xóa loại sản phẩm thành công',
      'alert-type' => 'success'
    );
    return Redirect()->back()->with($notification);
  }

  public function Editsubcat($id)
  {
    $subcat = DB::table('subcategories')->where('id', $id)->first();
    $category = DB::table('categories')->get();
    return view('admin.category.edit_subcat', compact('subcat', 'category'));
  }

  public function Updatesubcat(Request $request, $id)
  {
    $data = array();
    $data['category_id'] = $request->category_id;
    $data['subcategory_name'] = $request->subcategory_name;
    DB::table('subcategories')->where('id', $id)->update($data);
    $notification = array(
      'messege' => 'Cập nhật loại sản phẩm thành công',
      'alert-type' => 'success'
    );
    return Redirect()->route('sub.categories')->with($notification);
  }
}
