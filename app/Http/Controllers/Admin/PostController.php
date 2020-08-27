<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use DB;

class PostController extends Controller
{
    public function __construct()
    {
        $this->middleware('auth:admin');
    }

    public function blogCatlist()
    {
        $blogcat = DB::table('post_category')->get();
        return view('admin.blog.category.index', compact('blogcat'));
    }

    public function blogCatstore(Request $request)
    {
        $validateData = $request->validate([
            'category_name_en' => 'required|max:255',
            'category_name_vn' => 'required|max:255',
        ]);

        $data = array();
        $data['category_name_en'] = $request->category_name_en;
        $data['category_name_vn'] = $request->category_name_vn;
        DB::table('post_category')->insert($data);
        $notification = array(
            'messege' => 'Thêm danh mục bài đăng thành công',
            'alert-type' => 'success'
        );
        return Redirect()->back()->with($notification);
    }

    public function DeleteBlogcategory($id)
    {
        DB::table('post_category')->where('id', $id)->delete();
        $notification = array(
            'messege' => 'Xóa danh mục bài đăng thành công',
            'alert-type' => 'success'
        );
        return Redirect()->back()->with($notification);
    }

    public function EditBlogcategory($id)
    {
        $blogCatEdit = DB::table('post_category')->where('id', $id)->first();
        return view('admin.blog.category.edit', compact('blogCatEdit'));
    }

    public function UpdateBlogcategory(Request $request, $id)
    {
        $data = array();
        $data['category_name_en'] = $request->category_name_en;
        $data['category_name_vn'] = $request->category_name_vn;
        DB::table('post_category')->where('id', $id)->update($data);
        $notification = array(
            'messege' => 'Cập nhật danh mục bài đăng thành công',
            'alert-type' => 'success'
        );
        return Redirect()->route('add.blog.categorylist')->with($notification);
    }
}
