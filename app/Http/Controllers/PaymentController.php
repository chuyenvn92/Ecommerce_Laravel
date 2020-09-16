<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

class PaymentController extends Controller
{
  public function Payment(Request $request)
  {
    $data = array();
    $data['name'] = $request->name;
    $data['phone'] = $request->phone;
    $data['email'] = $request->email;
    $data['address'] = $request->address;
    $data['city'] = $request->city;
    $data['payment'] = $request->payment;
    // dd($data);
    if ($request->payment == 'stripe') {
      return view('pages.payment.stripe', compact('data'));
    } elseif ($request->payment == 'paypal') {
      echo "Chức năng đang hoàn thiện";
    } elseif ($request->payment == 'ideal') {
      echo "Chức năng đang hoàn thiện";
    } else {
      echo "Cash on Delivery (Thanh toán khi nhận hàng)";
    }
  }
  public function stripeCharge(Request $request)
  {
    // Set your secret key. Remember to switch to your live secret key in production!
    // See your keys here: https://dashboard.stripe.com/account/apikeys
    \Stripe\Stripe::setApiKey('sk_test_51HRT3nEifoQgfmALCjipnSyJr6zFoLcNUQ4ILjVqKqltPTQ4iR7yGStSaW5K0Mz2gaiLDtKT8ciPNs5ktXFbK9iu00vLNktYKG');

    // Token is created using Checkout or Elements!
    // Get the payment token ID submitted by the form:
    $token = $_POST['stripeToken'];

    $charge = \Stripe\Charge::create([
      'amount' => 999 * 100,
      'currency' => 'usd',
      'description' => 'Chuyen Test Thanh Toan',
      'source' => $token,
      'metadata' => ['order_id' => uniqid()],
    ]);
    dd($charge);
  }
}
