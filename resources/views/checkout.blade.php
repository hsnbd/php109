@extends('master')
@section('content')


<!-- //banner-top -->
<!-- banner -->
<div class="page-head">
    <div class="container">
        <h3>Check Out</h3>
    </div>
</div>
<!-- //banner -->
<!-- check out -->
<div class="checkout">
    <div class="container">
        <h3>My Shopping Bag</h3>
        <div class="table-responsive checkout-right animated wow slideInUp" data-wow-delay=".5s">
            <table class="timetable_sub">
                <thead>
                    <tr>
                        <th>Remove</th>
                        <th>Product</th>
                        <th>Quantity</th>
                        <th>Product Name</th>
                        <th>Price</th>
                    </tr>
                </thead>
                @foreach($selPdt as $pdt)
                
                <tr class="rem1">
                    
                    <input type="hidden" id="cid" value="{{$pdt->id}}" />
                    
                    <td class="invert-closeb">
                        <div class="rem">
                            <div class="close1" id="close-{{$pdt->id}}"> </div>
                        </div>
                    </td>
                    <td class="invert-image"><a href="{{url('/')}}/single">
                        
                        @if($pdt->default_picture == "1" && file_exists("images/product/product-1-{$pdt->id}.{$pdt->picture1}"))
                    <img style="width:50px;"   src="{{url('/')}}/images/product/product-1-{{$pdt->id}}.{{$pdt->picture1}}"  />
                    @elseif($pdt->default_picture == "2" && file_exists("images/product/product-1-{$pdt->id}.{$pdt->picture2}"))
                    <img style="width:50px;"   src="{{url('/')}}/images/product/product-2-{{$pdt->id}}.{{$pdt->picture2}}"  />
                    @elseif($pdt->default_picture == "3" && file_exists("images/product/product-1-{$pdt->id}.{$pdt->picture3}"))
                    <img  style="width:50px;"  src="{{url('/')}}/images/product/product-3-{{$pdt->id}}.{{$pdt->picture3}}"  />
                    @elseif(file_exists("images/product/product-1-{$pdt->id}.{$pdt->picture1}"))
                    <img style="width:50px;"  src="{{url('/')}}/images/product/product-1-{{$pdt->id}}.{{$pdt->picture1}}"  />
                    @elseif(file_exists("images/product/product-2-{$pdt->id}.{$pdt->picture2}"))
                    <img style="width:50px;"   src="{{url('/')}}/images/product/product-2-{{$pdt->id}}.{{$pdt->picture2}}"  />
                    @elseif(file_exists("images/product/product-3-{$pdt->id}.{$pdt->picture3}"))
                    <img  style="width:50px;"  src="{{url('/')}}/images/product/product-3-{{$pdt->id}}.{{$pdt->picture3}}"  />
                    @else
                    <img  style="width:50px;"  src="{{url('/')}}/images/no-images.jpg"  />
                    @endif
                      
                      </a></td>
                    <td class="invert">
                        <div class="quantity"> 
                            <div class="quantity-select">                           
                                <div class="entry value-minus">&nbsp;</div>
                                <div id="entry" class="entry value"><span>
                                    @php 
                                    $spdtid = Session::get('pdtid');
                                    $sqty = Session::get('qtyid');
                                    $index = array_search($pdt->id, $spdtid);
                                     echo $sqty[$index];
                                    @endphp
                                    </span>
                                
                                </div>
                                
                                
                                
                                
                                <div class="entry value-plus active">&nbsp;</div>
                                <div id="update-{{$pdt->id}}"  class="btn btn-warning cart-update">Update</div>
                            </div>
                        </div>
                    </td>
                    <td class="invert">{{$pdt->title}}</td>
                    <td class="invert">{{PriceCal($pdt->price,$pdt->vat,$pdt->discount)}}
                      <br />
                      <p>Discount: {{$pdt->discount}}</p>
                      <p>Vat: {{$pdt->vat}}</p>
                    </td>
                </tr>
                @endforeach
                <!--quantity-->
                


            </table>
        </div>
        <div class="checkout-left">	

            <div class="checkout-right-basket animated wow slideInRight" data-wow-delay=".5s">
                
                <a href="{{url('/')}}/mens"><span class="glyphicon glyphicon-menu-left" aria-hidden="true"></span>Back To Shopping</a>
                
            </div>
            
            
            <div class="checkout-right-basket animated wow slideInRight" data-wow-delay=".5s">
                
                {{csrf_field()}}
                
                <a  href="{{url('/')}}/user/register">Continue Checkout <span class="glyphicon glyphicon-menu-right pdt-r" aria-hidden="true"></span></a>
            </div>
            
            <div class="checkout-left-basket animated wow slideInLeft" data-wow-delay=".5s">
                <h4>Shopping basket</h4>
                <ul>
                    <li>Hand Bag <i>-</i> <span>$45.99</span></li>
                    <li>Watches <i>-</i> <span>$45.99</span></li>
                    <li>Sandals <i>-</i> <span>$45.99</span></li>
                    <li>Wedges <i>-</i> <span>$45.99</span></li>
                    <li>Total <i>-</i> <span>$183.96</span></li>
                </ul>
            </div>
            <div class="clearfix"> </div>
        </div>
    </div>
</div>	
<!-- //check out -->
<!-- //product-nav -->

<script>
  $(document).ready(function(){

    $('.value-plus').on('click', function () {
        var divUpd = $(this).parent().find('.value'), newVal = parseInt(divUpd.text(), 10) + 1;
        divUpd.text(newVal);
    });

    $('.value-minus').on('click', function () {
        var divUpd = $(this).parent().find('.value'), newVal = parseInt(divUpd.text(), 10) - 1;
        if (newVal >= 1)
            divUpd.text(newVal);
    });
    
    
    
    
     $(document).on('click', '.close-btn', function() {
        var closeId = $(this).attr("id");
        var ids = closeId.substr(10);
        

        $.ajax({
          type: 'POST',
          url: "{{route('cart.remove')}}",
          data: {
            'pid': ids,
            '_token': $('input[name=_token]').val()
          },
          
          success: function(data) {
            if (data > 0) {
              $("#totalAmount").text(data);
              var items = parseInt($('#simpleCart_quantity').text());

              items--; //minus an items
              $('#simpleCart_quantity').text(items);
            }
            else {
                $("#totalAmount").text(0);
                $('#simpleCart_quantity').text(0);
            }
            
            
            $("#cid").val(ids).parent().hide();
          }
        });
      });
     
     
     $(document).on('click', '.close1', function() {
       var closeId = $(this).attr("id");
       var ids = closeId.substr(6);

        $.ajax({
          type: 'POST',
          url: "{{route('cart.remove')}}",
          data: {
            'pid': ids,
            '_token': $('input[name=_token]').val()
          },
          
          success: function(data) {
            if (data > 0) {
              $("#totalAmount").text(data);
              var items = parseInt($('#simpleCart_quantity').text());

              items--; //minus an items
              $('#simpleCart_quantity').text(items);
            }
            else {
                $("#totalAmount").text(0);
                $('#simpleCart_quantity').text(0);
            }
            
            
            $("#" + closeId).parent().parent().parent().hide();
          }
        });
      });
     
     
     
     
     
     
    
    $(document).on('click', '.cart-update', function() {
        var ids = $(this).attr("id").substr(7);
        var qty = $(this).siblings('#entry').text();
        $.ajax({
          type: 'POST',
          url: "{{route('cart.add')}}",
          data: {
            'pid': ids,
            'qty': qty,
            '_token': $('input[name=_token]').val()
          },

          success: function(data) {
            alert(data['msg']);
            if (data['status'] == 1) {
              var items = parseInt($('#simpleCart_quantity').text());
              items++;
              $('#simpleCart_quantity').text(items);
//              var cartItems = "<div class='single-cart-item'>"
//              cartItems += "<div class='pdt-image'><img src=\"{{url('/')}}/images/product/" + data['picture'] + "\"/></div>";
//              cartItems += "<div class='pdt-text'><h4>" + data['title'] + "</h4></div>";
//              cartItems += "<i id='item-close" + ids + "' class='glyphicon glyphicon-remove pull-right close'></i>";
//              cartItems += "<span id='qty-" + ids + "' class='qntity'></span>X";
//              cartItems += "<span class='qntity'>" + data['price'] + "</span>";
//
//              cartItems += "</div>";
//              $(".cart-product-item").append(cartItems);
            }
            $('#qty-' + ids).text(qty);
            $('#totalAmount').text(data['Total']);
          }
        });
        return false;
      });
  });
  
  
  
</script>

@endsection