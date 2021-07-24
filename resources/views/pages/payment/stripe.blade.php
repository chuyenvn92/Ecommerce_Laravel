@extends('layouts.app')

@section('content')
@include('layouts.menubar')
@php
$setting = DB::table('settings')->first();
$charge = $setting->shipping_charge;
$vat = $setting->vat;
$cart = Cart::Content();
@endphp
<style>
  /**
 * The CSS shown here will not be introduced in the Quickstart guide, but shows
 * how you can use CSS to style your Element's container.
 */
  .StripeElement {
    box-sizing: border-box;

    height: 40px;
    width: 100%;

    padding: 10px 12px;

    border: 1px solid transparent;
    border-radius: 4px;
    background-color: white;

    box-shadow: 0 1px 3px 0 #e6ebf1;
    -webkit-transition: box-shadow 150ms ease;
    transition: box-shadow 150ms ease;
  }

  .StripeElement--focus {
    box-shadow: 0 1px 3px 0 #cfd7df;
  }

  .StripeElement--invalid {
    border-color: #fa755a;
  }

  .StripeElement--webkit-autofill {
    background-color: #fefde5 !important;
  }
</style>

<link rel="stylesheet" type="text/css" href="{{ asset('frontend/styles/contact_styles.css') }}">
<link rel="stylesheet" type="text/css" href="{{ asset('frontend/styles/contact_responsive.css') }}">
<div class="contact_form">
  <div class="container">
    <div class="row">
      <div class="col-lg-7" style="border: 1px solid grey; padding:20px; border-radius: 20px;">
        <div class="contact_form_container">
          <div class="contact_form_title text-center">Sản phẩm</div>
          <div class="cart_items">
            <ul class="cart_list">
              @foreach($cart as $row)
              <li class="cart_item clearfix">
                <div class="cart_item_image text-center"></div>
                <div class="cart_item_info d-flex flex-md-row flex-column justify-content-between">


                  <div class="cart_item_name cart_info_col">
                    <div class="cart_item_title text-center"><b>Ảnh</b></div>
                    <div class="cart_item_text"><img src="{{ asset($row->options->image) }}" alt="" style="width:70px; height:70px;"></div>
                  </div>
                  <div class="cart_item_name cart_info_col">
                    <div class="cart_item_title"><b>Tên sản phẩm</b></div>
                    <div class="cart_item_text">{{ $row->name}}</div>
                  </div>
                  @if($row->options->color == null)

                  @else
                  <div class="cart_item_color cart_info_col">
                    <div class="cart_item_title"><b>Màu sắc</b></div>
                    <div class="cart_item_text">{{ $row->options->color}}</div>
                  </div>
                  @endif
                  @if($row->options->size == null)

                  @else
                  <div class="cart_item_color cart_info_col">
                    <div class="cart_item_title"><b>Kích cỡ</b></div>
                    <div class="cart_item_text">{{ $row->options->size}}</div>
                  </div>
                  @endif

                  <div class="cart_item_quantity cart_info_col">
                    <div class="cart_item_title"><b>Số lượng</b></div>
                    <div class="cart_item_text">{{ $row->qty}}</div>
                  </div>
                  <div class="cart_item_price cart_info_col">
                    <div class="cart_item_title"><b>Giá</b></div>
                    <div class="cart_item_text">{{ number_format($row->price) }} {{ 'VNĐ'}}</div>
                  </div>
                  <div class="cart_item_total cart_info_col">
                    <div class="cart_item_title"><b>Thành tiền</b></div>
                    <div class="cart_item_text">{{ number_format($row->price*$row->qty) }} {{ 'VNĐ'}}</div>
                  </div>
                </div>
              </li>
              @endforeach
            </ul>
          </div>
          <ul class="list-group col-lg-8" style="float: right;">
            @if (Session::has('coupon'))
            <li class="list-group-item">Tổng hàng(chưa thuế): <span style="float: right;">{{ number_format(Session::get('coupon')['balance']) }} {{'VNĐ'}}</span></li>
            <li class="list-group-item">Mã giảm giá: ({{ Session::get('coupon')['name'] }})
              <a href="{{ route('coupon.remove') }}" class="bnt btn-danger btn-sm">x</a>
              <span style="float: right;">{{ number_format(Session::get('coupon')['discount']) }} {{ 'VNĐ'}}</span>
            </li>
            @else
            <li class="list-group-item">Tổng hàng(chưa thuế): <span style="float: right;">{{ number_format(Cart::Subtotal()) }} {{'VNĐ'}}</span></li>
            @endif
            <li class="list-group-item">Phí ship: <span style="float: right;">{{ number_format($charge) }} {{'VNĐ'}}</span></li>
            <li class="list-group-item">VAT: <span style="float: right;">{{ number_format($vat) }} {{'VNĐ'}}</span></li>
            @if (Session::has('coupon'))
            <li class="list-group-item">Tổng tiền: <span style="float: right;">{{ number_format(Session::get('coupon')['balance']+ $charge + $vat) }} {{ 'VNĐ'}}</span></li>
            @else
            <li class="list-group-item">Tổng tiền: <span style="float: right;">{{ number_format(Cart::Subtotal()+ $charge + $vat) }} {{'VNĐ'}}</span></li>
            @endif
          </ul>
        </div>
      </div>
      <div class="col-lg-5" style="border: 1px solid grey; padding:20px; border-radius: 20px;">
        <div class="contact_form_container">
          <div class="contact_form_title text-center">Thông tin thanh toán</div>
          <form action="{{ route('stripe.charge') }}" method="post" id="payment-form">
            @csrf
            <div class="form-row">
              <label for="card-element">
                Credit or debit card
              </label>
              <div id="card-element">
                <!-- A Stripe Element will be inserted here. -->
              </div>
              <!-- Used to display form errors. -->
              <div id="card-errors" role="alert"></div>
            </div><br>

            <input type="hidden" name="shipping" value="{{ $charge }} ">
            <input type="hidden" name="vat" value="{{ $vat }} ">
            <input type="hidden" name="total" value="{{ Cart::Subtotal() + $charge + $vat }} ">

            <input type="hidden" name="ship_name" value="{{ $data['name'] }} ">
            <input type="hidden" name="ship_phone" value="{{ $data['phone'] }} ">
            <input type="hidden" name="ship_email" value="{{ $data['email'] }} ">
            <input type="hidden" name="ship_address" value="{{ $data['address'] }} ">
            <input type="hidden" name="ship_city" value="{{ $data['city'] }} ">
            <input type="hidden" name="payment_type" value="{{ $data['payment'] }} ">




            <button class="btn btn-info">Thanh toán</button>
          </form>
        </div>
      </div>
    </div>
  </div>
  <div class="panel"></div>
</div>

<script type="text/javascript">
  // Create a Stripe client.
  var stripe = Stripe('pk_test_51HRT3nEifoQgfmALyPincbcfnS3NXjAADkl7Z3d97CSUByBMhGL2TfZbXpZcFdfjS3Iau4mSfvEeGlvMpJTXseTv00vWo7xpF9');

  // Create an instance of Elements.
  var elements = stripe.elements();

  // Custom styling can be passed to options when creating an Element.
  // (Note that this demo uses a wider set of styles than the guide below.)
  var style = {
    base: {
      color: '#32325d',
      fontFamily: '"Helvetica Neue", Helvetica, sans-serif',
      fontSmoothing: 'antialiased',
      fontSize: '16px',
      '::placeholder': {
        color: '#aab7c4'
      }
    },
    invalid: {
      color: '#fa755a',
      iconColor: '#fa755a'
    }
  };

  // Create an instance of the card Element.
  var card = elements.create('card', {
    style: style
  });

  // Add an instance of the card Element into the `card-element` <div>.
  card.mount('#card-element');

  // Handle real-time validation errors from the card Element.
  card.addEventListener('change', function(event) {
    var displayError = document.getElementById('card-errors');
    if (event.error) {
      displayError.textContent = event.error.message;
    } else {
      displayError.textContent = '';
    }
  });

  // Handle form submission.
  var form = document.getElementById('payment-form');
  form.addEventListener('submit', function(event) {
    event.preventDefault();

    stripe.createToken(card).then(function(result) {
      if (result.error) {
        // Inform the user if there was an error.
        var errorElement = document.getElementById('card-errors');
        errorElement.textContent = result.error.message;
      } else {
        // Send the token to your server.
        stripeTokenHandler(result.token);
      }
    });
  });

  // Submit the form with the token ID.
  function stripeTokenHandler(token) {
    // Insert the token ID into the form so it gets submitted to the server
    var form = document.getElementById('payment-form');
    var hiddenInput = document.createElement('input');
    hiddenInput.setAttribute('type', 'hidden');
    hiddenInput.setAttribute('name', 'stripeToken');
    hiddenInput.setAttribute('value', token.id);
    form.appendChild(hiddenInput);

    // Submit the form
    form.submit();
  }
</script>
@endsection