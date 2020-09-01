<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use DB;
use Auth;

class WishListController extends Controller
{
    public function addWishList($id)
    {
        $userid = Auth::id();
        $check = DB::table('wishlists')->where('user_id', $userid)->where('product_id', $id)->first();
        $data = array(
            'user_id' => $userid,
            'product_id' => $id,
        );
        if (Auth::check()) {
            if ($check) {
                return \Response::json(['error' => 'Đã có trong Wishlist rồi!!!']);
            } else {
                DB::table('wishlists')->insert($data);
                return \Response::json(['success' => 'Thêm vào Wishlist thành công']);
            }
        } else {
            return \Response::json(['error' => 'Vui lòng Đăng nhập trước']);
        }
    }
}
