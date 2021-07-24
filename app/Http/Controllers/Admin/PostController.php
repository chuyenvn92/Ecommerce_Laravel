<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use DB;
use Image;

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

  public function create()
  {
    $blogcategory = DB::table('post_category')->get();
    return view('admin.blog.create', compact('blogcategory'));
  }

  public function store(Request $request)
  {
    $data = array();
    $data['post_title_en'] = $request->post_title_en;
    $data['post_title_vn'] = $request->post_title_vn;
    $data['category_id'] = $request->category_id;
    $data['details_en'] = $request->details_en;
    $data['details_vn'] = $request->details_vn;

    $post_image = $request->file('post_image');
    if ($post_image) {
      $post_image_name = hexdec(uniqid()) . '.' . $post_image->getClientOriginalExtension();
      Image::make($post_image)->resize(400, 200)->save('media/post/' . $post_image_name);
      $data['post_image'] = 'media/post/' . $post_image_name;

      DB::table('posts')->insert($data);
      $notification = array(
        'messege' => 'Tạo bài đăng thành công',
        'alert-type' => 'success'
      );
      return Redirect()->route('add.blog.categorylist')->with($notification);
    } else {
      $data['post_image'] = '';
      DB::table('posts')->insert($data);
      $notification = array(
        'messege' => 'Tạo bài đăng không ảnh',
        'alert-type' => 'success'
      );
      return Redirect()->route('add.blog.categorylist')->with($notification);
    }
  }

  public function index()
  {
    $post = DB::table('posts')
      ->join('post_category', 'posts.category_id', 'post_category.id')
      ->select('posts.*', 'post_category.category_name_en',)
      ->get();

    return view('admin.blog.index', compact('post'));
  }

  public function DeletePost($id)
  {
    $post = DB::table('posts')->where('id', $id)->first();
    $image = $post->post_image;
    unlink($image);

    DB::table('posts')->where('id', $id)->delete();
    $notification = array(
      'messege' => 'Xóa bài đăng thành công',
      'alert-type' => 'success'
    );
    return Redirect()->back()->with($notification);
  }

  public function EditPost($id)
  {
    $post  = DB::table('posts')->where('id', $id)->first();
    return view('admin.blog.edit', compact('post'));
  }

  public function UpdatePost(Request $request, $id)
  {

    $old_image = $request->old_image;

    $data = array();
    $data['post_title_en'] = $request->post_title_en;
    $data['post_title_vn'] = $request->post_title_vn;
    $data['category_id'] = $request->category_id;
    $data['details_en'] = $request->details_en;
    $data['details_vn'] = $request->details_vn;

    $post_image = $request->file('post_image');
    if ($post_image) {
      unlink($old_image);
      $post_image_name = hexdec(uniqid()) . '.' . $post_image->getClientOriginalExtension();
      Image::make($post_image)->resize(400, 200)->save('media/post/' . $post_image_name);
      $data['post_image'] = 'media/post/' . $post_image_name;

      DB::table('posts')->where('id', $id)->update($data);
      $notification = array(
        'messege' => 'Cập nhật bài đăng thành công',
        'alert-type' => 'success'
      );
      return Redirect()->route('all.blogpost')->with($notification);
    } else {
      $data['post_image'] = $old_image;
      DB::table('posts')->where('id', $id)->update($data);
      $notification = array(
        'messege' => 'Không thay đổi ảnh',
        'alert-type' => 'success'
      );
      return Redirect()->route('all.blogpost')->with($notification);
    }
  }
}
