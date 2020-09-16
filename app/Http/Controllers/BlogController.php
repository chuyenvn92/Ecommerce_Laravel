<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use DB;
use Session;

class BlogController extends Controller
{
	public function blog()
	{
		$post = DB::table('posts')->join('post_category', 'posts.category_id', 'post_category.id')
			->select('posts.*', 'post_category.category_name_vn', 'post_category.category_name_en')->get();
		return view('pages.blog', compact('post'));
	}

	public function english()
	{
		Session::get('lang');
		Session()->forget('lang');
		Session::put('lang', 'english');
		return redirect()->back();
	}

	public function vietnam()
	{
		Session::get('lang');
		Session()->forget('lang');
		Session::put('lang', 'vietnam');
		return redirect()->back();
	}

	public function blogSingle($id)
	{
		$posts = DB::table('posts')->where('id', $id)->get();
		return view('pages.blog_single', compact('posts'));
	}
}
