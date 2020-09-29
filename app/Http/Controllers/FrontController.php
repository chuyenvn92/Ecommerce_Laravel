<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use DB;

class FrontendController extends Controller
{
  public function storenewslater(Request $request)
  {
    $validateData = $request->validate([
      'email' => 'required|unique:newslaters|max:55',
    ]);

    $data = array();
    $data['email'] = $request->email;
    DB::table('newslaters')->insert($data);
    $notification = array(
      'messege' => 'Cảm ơn bạn đã đăng kí nhớ!',
      'alert-type' => 'success'
    );
    return Redirect()->back()->with($notification);
  }

  public function orderTracking(Request $request)
  {
    $code = $request->code;
    $track = DB::table('orders')->where('status_code', $code)->first();
    if ($track) {
      return view('pages.tracking',compact('track'));
     } else {
      $notification = array(
        'messege' => 'Mã không đúng',
        'alert-type' => 'error'
      );
      return Redirect()->back()->with($notification);
    }
  }
}
