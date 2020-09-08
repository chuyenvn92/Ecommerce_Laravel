<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Auth;
use Illuminate\Support\Facades\Hash;
use App\Admin;

class AdminController extends Controller
{
  /**
   * Create a new controller instance.
   *
   * @return void
   */
  public function __construct()
  {
    $this->middleware('auth:admin');
  }

  /**
   * Show the application dashboard.
   *
   * @return \Illuminate\Http\Response
   */
  public function index()
  {
    return view('admin.home');
  }

  public function ChangePassword()
  {
    return view('admin.auth.passwordchange');
  }

  public function Update_pass(Request $request)
  {
    $password = Auth::user()->password;
    $oldpass = $request->oldpass;
    $newpass = $request->password;
    $confirm = $request->password_confirmation;
    if (Hash::check($oldpass, $password)) {
      if ($newpass === $confirm) {
        $user = Admin::find(Auth::id());
        $user->password = Hash::make($request->password);
        $user->save();
        Auth::logout();
        $notification = array(
          'messege' => 'Thay đổi mật khẩu thành công! Bạn hãy đăng nhập với mật khẩu mới!',
          'alert-type' => 'success'
        );
        return Redirect()->route('admin.login')->with($notification);
      } else {
        $notification = array(
          'messege' => 'Mật khẩu mới và nhập lại không giống nhau!',
          'alert-type' => 'error'
        );
        return Redirect()->back()->with($notification);
      }
    } else {
      $notification = array(
        'messege' => 'Mật khẩu cũ không đúng!',
        'alert-type' => 'error'
      );
      return Redirect()->back()->with($notification);
    }
  }

  public function logout()
  {
    Auth::logout();
    $notification = array(
      'messege' => 'Đăng xuất thành công ',
      'alert-type' => 'success'
    );
    return Redirect()->route('admin.login')->with($notification);
  }
}
