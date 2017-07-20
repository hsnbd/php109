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
                    <td class="invert-closeb">
                        <div class="rem">
                            <div class="close1"> </div>
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
                                <div class="entry value"><span>
                                    @php 
                                    $spdtid = Session::get('pdtid');
                                    $sqty = Session::get('qtyid');
                                    $index = array_search($pdt->id, $spdtid);
                                     echo $sqty[$index];
                                    @endphp
                                    </span>
                                
                                </div>
                                <div class="entry value-plus active">&nbsp;</div>
                                <div id="pdt-{{$pdt->id}}" class="btn btn-warning cart-update">Update</div>
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
                <script>
                    $('.value-plus').on('click', function () {
                        var divUpd = $(this).parent().find('.value'), newVal = parseInt(divUpd.text(), 10) + 1;
                        divUpd.text(newVal);
                    });

                    $('.value-minus').on('click', function () {
                        var divUpd = $(this).parent().find('.value'), newVal = parseInt(divUpd.text(), 10) - 1;
                        if (newVal >= 1)
                            divUpd.text(newVal);
                    });
                </script>
                <!--quantity-->
            </table>
        </div>
        <div class="checkout-left">	

            <div class="checkout-right-basket animated wow slideInRight" data-wow-delay=".5s">
                <a href="{{url('/')}}/mens"><span class="glyphicon glyphicon-menu-left" aria-hidden="true"></span>Back To Shopping</a>
            </div>
            <div class="checkout-right-basket animated wow slideInRight" data-wow-delay=".5s">
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
    $(".cart-update").click(function(){
        var ids = $(this).attr("id");
        alert(ids);
    });
  })
</script>

@endsection