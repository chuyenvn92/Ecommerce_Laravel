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
                $notification = array(
                    'messege' => 'Đã có trong Wishlist rồi ha',
                    'alert-type' => 'error'
                );
                return Redirect()->back()->with($notification);
            } else {
                DB::table('wishlists')->insert($data);
                $notification = array(
                    'messege' => 'Thêm vào Wishlist thành công',
                    'alert-type' => 'success'
                );
                return Redirect()->back()->with($notification);
            }
        } else {
            $notification = array(
                'messege' => 'Vui lòng đăng nhập trước',
                'alert-type' => 'warning'
            );
            return Redirect()->back()->with($notification);
        }
    }
}
