<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use DB;
use Auth;

class WishlistController extends Controller
{
   public function addWishlist($id)
   {

      $userid = Auth::id();
      $check = DB::table('wishlists')->where('user_id', $userid)->where('product_id', $id)->first();

      $data = array(
         'user_id' => $userid,
         'product_id' => $id,

      );

      if (Auth::Check()) {

         if ($check) {
            return \Response::json(['error' => 'Sản phẩm đã có trong danh sách ưa thích']);
         } else {
            DB::table('wishlists')->insert($data);
            return \Response::json(['success' => 'Thích thành công']);
         }
      } else {
         return \Response::json(['error' => 'Vui lòng đăng nhập trước']);
      }
   }
}
