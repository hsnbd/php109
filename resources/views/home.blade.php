@extends('master')
@section('content')
<style>
    
    .item-info-product h4 {
	height: 100px; 
    }

</style>

<!-- //banner-top -->
<!-- banner -->
<div class="banner-grid">
    <div id="visual">
        <div class="slide-visual">
            
            <ul class="slide-group">
                <li><img class="img-responsive" src="{{url('/')}}/asset/images/ba1.jpg" alt="Dummy Image" /></li>
                <li><img class="img-responsive" src="{{url('/')}}/asset/images/ba2.jpg" alt="Dummy Image" /></li>
                <li><img class="img-responsive" src="{{url('/')}}/asset/images/ba3.jpg" alt="Dummy Image" /></li>
            </ul>

             
            <div class="script-wrap">
                <ul class="script-group">
                    <li><div class="inner-script"><img class="img-responsive" src="{{url('/')}}/asset/images/baa1.jpg" alt="Dummy Image" /></div></li>
                    <li><div class="inner-script"><img class="img-responsive" src="{{url('/')}}/asset/images/baa2.jpg" alt="Dummy Image" /></div></li>
                    <li><div class="inner-script"><img class="img-responsive" src="{{url('/')}}/asset/images/baa3.jpg" alt="Dummy Image" /></div></li>
                </ul>
                <div class="slide-controller">
                    <a href="#" class="btn-prev"><img src="{{url('/')}}/asset/images/btn_prev.png" alt="Prev Slide" /></a>
                    <a href="#" class="btn-play"><img src="{{url('/')}}/asset/images/btn_play.png" alt="Start Slide" /></a>
                    <a href="#" class="btn-pause"><img src="{{url('/')}}/asset/images/btn_pause.png" alt="Pause Slide" /></a>
                    <a href="#" class="btn-next"><img src="{{url('/')}}/asset/images/btn_next.png" alt="Next Slide" /></a>
                </div>
            </div>
            <div class="clearfix"></div>
        </div>
        <div class="clearfix"></div>
    </div>
    <script type="text/javascript" src="{{url('/')}}/asset/js/pignose.layerslider.js"></script>
    <script type="text/javascript">
//<![CDATA[
$(window).load(function () {
    $('#visual').pignoseLayerSlider({
        play: '.btn-play',
        pause: '.btn-pause',
        next: '.btn-next',
        prev: '.btn-prev'
    });
});
//]]>
    </script>

</div>


<div class="new_arrivals">
    <div class="container">
        <h3><span>new </span>arrivals</h3>
        <p>Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium</p>
        <div class="new_grids">
            <div class="col-md-4 new-gd-left">
                <img src="{{url('/')}}/asset/images/wed1.jpg" alt=" " />
                <div class="wed-brand simpleCart_shelfItem">
                    <h4>Wedding Collections</h4>
                    <h5>Flat 50% Discount</h5>
                    <p><i>$250</i> <span class="item_price">$500</span><a class="item_add hvr-outline-out button2" href="#">add to cart </a></p>
                </div>
            </div>
            <div class="col-md-4 new-gd-middle">
                <div class="new-levis">
                    <div class="mid-img">
                        <img src="{{url('/')}}/asset/images/levis1.png" alt=" " />
                    </div>
                    <div class="mid-text">
                        <h4>up to 40% <span>off</span></h4>
                        <a class="hvr-outline-out button2" href="product.html">Shop now </a>
                    </div>
                    <div class="clearfix"></div>
                </div>
                <div class="new-levis">
                    <div class="mid-text">
                        <h4>up to 50% <span>off</span></h4>
                        <a class="hvr-outline-out button2" href="product.html">Shop now </a>
                    </div>
                    <div class="mid-img">
                        <img src="{{url('/')}}/asset/images/dig.jpg" alt=" " />
                    </div>
                    <div class="clearfix"></div>
                </div>
                <div class="clearfix"></div>
            </div>
            <div class="col-md-4 new-gd-left">
                <img src="{{url('/')}}/asset/images/wed2.jpg" alt=" " />
                <div class="wed-brandtwo simpleCart_shelfItem">
                    <h4>Spring / Summer</h4>
                    <p>Shop Men</p>
                </div>
            </div>
            <div class="clearfix"></div>
        </div>
    </div>
</div>


<div class="content-bottom">
    <div class="col-md-7 content-lgrid">
        <div class="col-sm-6 content-img-left text-center">
            <div class="content-grid-effect slow-zoom vertical">
                <div class="img-box"><img src="{{url('/')}}/asset/images/p1.jpg" alt="image" class="img-responsive zoom-img"></div>
                <div class="info-box">
                    <div class="info-content simpleCart_shelfItem">
                        <h4>Mobiles</h4>
                        <span class="separator"></span>
                        <p><span class="item_price">$500</span></p>
                        <span class="separator"></span>
                        <a class="item_add hvr-outline-out button2" href="#">add to cart </a>
                    </div>
                </div>
            </div>
        </div>
        <div class="col-sm-6 content-img-right">
            <h3>Special Offers and 50%<span>Discount On</span> Mobiles</h3>
        </div>

        <div class="col-sm-6 content-img-right">
            <h3>Buy 1 get 1  free on <span> Branded</span> Watches</h3>
        </div>
        <div class="col-sm-6 content-img-left text-center">
            <div class="content-grid-effect slow-zoom vertical">
                <div class="img-box"><img src="{{url('/')}}/asset/images/p2.jpg" alt="image" class="img-responsive zoom-img"></div>
                <div class="info-box">
                    <div class="info-content simpleCart_shelfItem">
                        <h4>Watches</h4>
                        <span class="separator"></span>
                        <p><span class="item_price">$250</span></p>
                        <span class="separator"></span>
                        <a class="item_add hvr-outline-out button2" href="#">add to cart </a>
                    </div>
                </div>
            </div>
        </div>
        <div class="clearfix"></div>
    </div>
    <div class="col-md-5 content-rgrid text-center">
        <div class="content-grid-effect slow-zoom vertical">
            <div class="img-box"><img src="{{url('/')}}/asset/images/p4.jpg" alt="image" class="img-responsive zoom-img"></div>
            <div class="info-box">
                <div class="info-content simpleCart_shelfItem">
                    <h4>Shoes</h4>
                    <span class="separator"></span>
                    <p><span class="item_price">$150</span></p>
                    <span class="separator"></span>
                    <a class="item_add hvr-outline-out button2" href="#">add to cart </a>
                </div>
            </div>
        </div>
    </div>
    <div class="clearfix"></div>
</div>
<!-- content-bottom -->
<!-- product-nav -->

<div class="product-easy">
    <div class="container">

        <script src="{{url('/')}}/asset/js/easyResponsiveTabs.js" type="text/javascript"></script>
        <script type="text/javascript">
$(document).ready(function () {
    $('#horizontalTab').easyResponsiveTabs({
        type: 'default', //Types: default, vertical, accordion           
        width: 'auto', //auto or any width like 600px
        fit: true   // 100% fit in a container
    });
});

        </script>
        <div class="sap_tabs">
            <div id="horizontalTab" style="display: block; width: 100%; margin: 0px;">
                <ul class="resp-tabs-list">
                    <li class="resp-tab-item" aria-controls="tab_item-0" role="tab"><span>Latest Designs</span></li> 
                    <li class="resp-tab-item" aria-controls="tab_item-1" role="tab"><span>Special Offers</span></li> 
                    <li class="resp-tab-item" aria-controls="tab_item-2" role="tab"><span>Collections</span></li> 
                </ul>				  	 
                <div class="resp-tabs-container">
                    <div class="tab-1 resp-tab-content" aria-labelledby="tab_item-0">
                        @php $c=1  @endphp
                        @foreach($alldata[3] as $pdt)
                        @php 
                        $realprice = PriceCal($pdt->price, $pdt->vat, 0) ;
                        $discountprice = PriceCal($pdt->price, $pdt->vat, $pdt->discount) ;
                        
                        @endphp
                        @if($c%4==1)
                        <div class="row">
                        @endif
                        <div class="col-md-3 product-men yes-marg">
                            <div class="men-pro-item simpleCart_shelfItem">
                                <div class="men-thumb-item">
                                    
                                  @if($pdt->default_picture == "1" && file_exists("images/product/product-1-{$pdt->id}.{$pdt->picture1}"))
                    <img  class="pro-image-front" src="{{url('/')}}/images/product/product-1-{{$pdt->id}}.{{$pdt->picture1}}"  />
                    @elseif($pdt->default_picture == "2" && file_exists("images/product/product-1-{$pdt->id}.{$pdt->picture2}"))
                    <img  class="pro-image-front" src="{{url('/')}}/images/product/product-2-{{$pdt->id}}.{{$pdt->picture2}}"  />
                    @elseif($pdt->default_picture == "3" && file_exists("images/product/product-1-{$pdt->id}.{$pdt->picture3}"))
                    <img  class="pro-image-front" src="{{url('/')}}/images/product/product-3-{{$pdt->id}}.{{$pdt->picture3}}"  />
                    @elseif(file_exists("images/product/product-1-{$pdt->id}.{$pdt->picture1}"))
                    <img  class="pro-image-front" src="{{url('/')}}/images/product/product-1-{{$pdt->id}}.{{$pdt->picture1}}"  />
                    @elseif(file_exists("images/product/product-2-{$pdt->id}.{$pdt->picture2}"))
                    <img  class="pro-image-front" src="{{url('/')}}/images/product/product-2-{{$pdt->id}}.{{$pdt->picture2}}"  />
                    @elseif(file_exists("images/product/product-3-{$pdt->id}.{$pdt->picture3}"))
                    <img  class="pro-image-front" src="{{url('/')}}/images/product/product-3-{{$pdt->id}}.{{$pdt->picture3}}"  />
                    @else
                    <img  class="pro-image-front" src="{{url('/')}}/images/no-images.jpg"  />
                    @endif

                    @if($pdt->default_picture == "1" && file_exists("images/product/product-1-{$pdt->id}.{$pdt->picture1}"))
                    <img  class="pro-image-back" src="{{url('/')}}/images/product/product-1-{{$pdt->id}}.{{$pdt->picture1}}"  />
                    @elseif($pdt->default_picture == "2" && file_exists("images/product/product-1-{$pdt->id}.{$pdt->picture2}"))
                    <img  class="pro-image-back" src="{{url('/')}}/images/product/product-2-{{$pdt->id}}.{{$pdt->picture2}}"  />
                    @elseif($pdt->default_picture == "3" && file_exists("images/product/product-1-{$pdt->id}.{$pdt->picture3}"))
                    <img  class="pro-image-back" src="{{url('/')}}/images/product/product-3-{{$pdt->id}}.{{$pdt->picture3}}"  />
                    @elseif(file_exists("images/product/product-1-{$pdt->id}.{$pdt->picture1}"))
                    <img  class="pro-image-back" src="{{url('/')}}/images/product/product-1-{{$pdt->id}}.{{$pdt->picture1}}"  />
                    @elseif(file_exists("images/product/product-2-{$pdt->id}.{$pdt->picture2}"))
                    <img  class="pro-image-back" src="{{url('/')}}/images/product/product-2-{{$pdt->id}}.{{$pdt->picture2}}"  />
                    @elseif(file_exists("images/product/product-3-{$pdt->id}.{$pdt->picture3}"))
                    <img  class="pro-image-back" src="{{url('/')}}/images/product/product-3-{{$pdt->id}}.{{$pdt->picture3}}"  />
                    @else
                    <img  class="pro-image-back" src="{{url('/')}}/images/no-images.jpg"  />
                    @endif

                                    
                                    
                                    
                                    <div class="men-cart-pro">
                                        <div class="inner-men-cart-pro">
                                            <a href="{{url('/')}}/{{Replace($pdt->cname)}}/{{Replace($pdt->scname)}}/{{$pdt->id}}/{{Replace($pdt->title)}}" class="link-product-add-cart">Quick View</a>
                                        </div>
                                    </div>
                                    <span class="product-new-top">New</span>

                                </div>
                                <div class="item-info-product ">
                                    <h4><a href="{{url('/')}}/{{Replace($pdt->cname)}}/{{Replace($pdt->scname)}}/{{$pdt->id}}/{{Replace($pdt->title)}}">{{$pdt->title}}</a></h4>
                                    <div class="info-product-price">
                                        <span class="item_price">৳ @php echo $discountprice  @endphp</span>
                                        @if ($discountprice != $realprice )
                                        <del>৳ @php echo $realprice @endphp</del>
                                        @endif
                                    </div>
                                    <a href="#" class="item_add single-item hvr-outline-out button2">Add to cart</a>									
                                </div>
                            </div>
                        </div>
                        @if($c%4==0)
                        </div>
                        @endif
                        @php $c++; @endphp
                        @endforeach
                        <div class="clearfix"></div>
                       
                    </div>
                    <div class="tab-1 resp-tab-content" aria-labelledby="tab_item-1">
                         @php $c=1 @endphp
                        @foreach($alldata[4] as $pdt)
                        @if($c%4==1)
                        <div class="row">
                        @endif
                        <div class="col-md-3 product-men yes-marg">
                            <div class="men-pro-item simpleCart_shelfItem">
                                <div class="men-thumb-item">
                                    
                                  @if($pdt->default_picture == "1" && file_exists("images/product/product-1-{$pdt->id}.{$pdt->picture1}"))
                    <img  class="pro-image-front" src="{{url('/')}}/images/product/product-1-{{$pdt->id}}.{{$pdt->picture1}}"  />
                    @elseif($pdt->default_picture == "2" && file_exists("images/product/product-1-{$pdt->id}.{$pdt->picture2}"))
                    <img  class="pro-image-front" src="{{url('/')}}/images/product/product-2-{{$pdt->id}}.{{$pdt->picture2}}"  />
                    @elseif($pdt->default_picture == "3" && file_exists("images/product/product-1-{$pdt->id}.{$pdt->picture3}"))
                    <img  class="pro-image-front" src="{{url('/')}}/images/product/product-3-{{$pdt->id}}.{{$pdt->picture3}}"  />
                    @elseif(file_exists("images/product/product-1-{$pdt->id}.{$pdt->picture1}"))
                    <img  class="pro-image-front" src="{{url('/')}}/images/product/product-1-{{$pdt->id}}.{{$pdt->picture1}}"  />
                    @elseif(file_exists("images/product/product-2-{$pdt->id}.{$pdt->picture2}"))
                    <img  class="pro-image-front" src="{{url('/')}}/images/product/product-2-{{$pdt->id}}.{{$pdt->picture2}}"  />
                    @elseif(file_exists("images/product/product-3-{$pdt->id}.{$pdt->picture3}"))
                    <img  class="pro-image-front" src="{{url('/')}}/images/product/product-3-{{$pdt->id}}.{{$pdt->picture3}}"  />
                    @else
                    <img  class="pro-image-front" src="{{url('/')}}/images/no-images.jpg"  />
                    @endif

                    @if($pdt->default_picture == "1" && file_exists("images/product/product-1-{$pdt->id}.{$pdt->picture1}"))
                    <img  class="pro-image-back" src="{{url('/')}}/images/product/product-1-{{$pdt->id}}.{{$pdt->picture1}}"  />
                    @elseif($pdt->default_picture == "2" && file_exists("images/product/product-1-{$pdt->id}.{$pdt->picture2}"))
                    <img  class="pro-image-back" src="{{url('/')}}/images/product/product-2-{{$pdt->id}}.{{$pdt->picture2}}"  />
                    @elseif($pdt->default_picture == "3" && file_exists("images/product/product-1-{$pdt->id}.{$pdt->picture3}"))
                    <img  class="pro-image-back" src="{{url('/')}}/images/product/product-3-{{$pdt->id}}.{{$pdt->picture3}}"  />
                    @elseif(file_exists("images/product/product-1-{$pdt->id}.{$pdt->picture1}"))
                    <img  class="pro-image-back" src="{{url('/')}}/images/product/product-1-{{$pdt->id}}.{{$pdt->picture1}}"  />
                    @elseif(file_exists("images/product/product-2-{$pdt->id}.{$pdt->picture2}"))
                    <img  class="pro-image-back" src="{{url('/')}}/images/product/product-2-{{$pdt->id}}.{{$pdt->picture2}}"  />
                    @elseif(file_exists("images/product/product-3-{$pdt->id}.{$pdt->picture3}"))
                    <img  class="pro-image-back" src="{{url('/')}}/images/product/product-3-{{$pdt->id}}.{{$pdt->picture3}}"  />
                    @else
                    <img  class="pro-image-back" src="{{url('/')}}/images/no-images.jpg"  />
                    @endif

                                    
                                    
                                    
                                    <div class="men-cart-pro">
                                        <div class="#" class="link-product-add-cart">Quick View</a>
                                        </div>
                                    </div>
                                    <span class="product-new-top">New</span>

                                </div>
                                <div class="item-info-product ">
                                    <h4><a href="#">{{$pdt->title}}</a></h4>
                                    <div class="info-product-price">
                                        <span class="item_price">৳ @php echo PriceCal($pdt->price, $pdt->vat, $pdt->discount) @endphp</span>
                                        
                                        <del>৳ @php echo PriceCal($pdt->price, $pdt->vat, 0) @endphp</del>
                                        
                                    </div>
                                    <a href="#" class="item_add single-item hvr-outline-out button2">Add to cart</a>									
                                </div>
                            </div>
                        </div>
                        @if($c%4==0)
                        </div>
                        @endif
                        @php $c++; @endphp
                        @endforeach

                        <div class="clearfix"></div>						
                    </div>
                    <div class="tab-1 resp-tab-content" aria-labelledby="tab_item-2">
                        <div class="col-md-3 product-men">
                            <div class="men-pro-item simpleCart_shelfItem">
                                <div class="men-thumb-item">
                                    <img src="{{url('/')}}/asset/images/g1.png" alt="" class="pro-image-front">
                                    <img src="{{url('/')}}/asset/images/g1.png" alt="" class="pro-image-back">
                                    <div class="men-cart-pro">
                                        <div class="inner-men-cart-pro">
                                            <a href="single.html" class="link-product-add-cart">Quick View</a>
                                        </div>
                                    </div>
                                    <span class="product-new-top">New</span>

                                </div>
                                <div class="item-info-product ">
                                    <h4><a href="single.html">Dresses</a></h4>
                                    <div class="info-product-price">
                                        <span class="item_price">$45.99</span>
                                        <del>$69.71</del>
                                    </div>
                                    <a href="#" class="item_add single-item hvr-outline-out button2">Add to cart</a>									
                                </div>
                            </div>
                        </div>
                        <div class="col-md-3 product-men">
                            <div class="men-pro-item simpleCart_shelfItem">
                                <div class="men-thumb-item">
                                    <img src="{{url('/')}}/asset/images/g2.png" alt="" class="pro-image-front">
                                    <img src="{{url('/')}}/asset/images/g2.png" alt="" class="pro-image-back">
                                    <div class="men-cart-pro">
                                        <div class="inner-men-cart-pro">
                                            <a href="single.html" class="link-product-add-cart">Quick View</a>
                                        </div>
                                    </div>
                                    <span class="product-new-top">New</span>

                                </div>
                                <div class="item-info-product ">
                                    <h4><a href="single.html"> Shirts</a></h4>
                                    <div class="info-product-price">
                                        <span class="item_price">$45.99</span>
                                        <del>$69.71</del>
                                    </div>
                                    <a href="#" class="item_add single-item hvr-outline-out button2">Add to cart</a>									
                                </div>
                            </div>
                        </div>
                        <div class="col-md-3 product-men">
                            <div class="men-pro-item simpleCart_shelfItem">
                                <div class="men-thumb-item">
                                    <img src="{{url('/')}}/asset/images/g3.png" alt="" class="pro-image-front">
                                    <img src="{{url('/')}}/asset/images/g3.png" alt="" class="pro-image-back">
                                    <div class="men-cart-pro">
                                        <div class="inner-men-cart-pro">
                                            <a href="single.html" class="link-product-add-cart">Quick View</a>
                                        </div>
                                    </div>
                                    <span class="product-new-top">New</span>

                                </div>
                                <div class="item-info-product ">
                                    <h4><a href="single.html">Shirts</a></h4>
                                    <div class="info-product-price">
                                        <span class="item_price">$45.99</span>
                                        <del>$69.71</del>
                                    </div>
                                    <a href="#" class="item_add single-item hvr-outline-out button2">Add to cart</a>									
                                </div>
                            </div>
                        </div>
                        <div class="col-md-3 product-men">
                            <div class="men-pro-item simpleCart_shelfItem">
                                <div class="men-thumb-item">
                                    <img src="{{url('/')}}/asset/images/mw2.png" alt="" class="pro-image-front">
                                    <img src="{{url('/')}}/asset/images/mw2.png" alt="" class="pro-image-back">
                                    <div class="men-cart-pro">
                                        <div class="inner-men-cart-pro">
                                            <a href="single.html" class="link-product-add-cart">Quick View</a>
                                        </div>
                                    </div>
                                    <span class="product-new-top">New</span>

                                </div>
                                <div class="item-info-product ">
                                    <h4><a href="single.html">T shirts</a></h4>
                                    <div class="info-product-price">
                                        <span class="item_price">$45.99</span>
                                        <del>$69.71</del>
                                    </div>
                                    <a href="#" class="item_add single-item hvr-outline-out button2">Add to cart</a>									
                                </div>
                            </div>
                        </div>
                        <div class="col-md-3 product-men yes-marg">
                            <div class="men-pro-item simpleCart_shelfItem">
                                <div class="men-thumb-item">
                                    <img src="{{url('/')}}/asset/images/w4.png" alt="" class="pro-image-front">
                                    <img src="{{url('/')}}/asset/images/w4.png" alt="" class="pro-image-back">
                                    <div class="men-cart-pro">
                                        <div class="inner-men-cart-pro">
                                            <a href="single.html" class="link-product-add-cart">Quick View</a>
                                        </div>
                                    </div>
                                    <span class="product-new-top">New</span>

                                </div>
                                <div class="item-info-product ">
                                    <h4><a href="single.html">Air Tshirt Black Domyos</a></h4>
                                    <div class="info-product-price">
                                        <span class="item_price">$45.99</span>
                                        <del>$69.71</del>
                                    </div>
                                    <a href="#" class="item_add single-item hvr-outline-out button2">Add to cart</a>									
                                </div>
                            </div>
                        </div>
                        <div class="col-md-3 product-men yes-marg">
                            <div class="men-pro-item simpleCart_shelfItem">
                                <div class="men-thumb-item">
                                    <img src="{{url('/')}}/asset/images/w3.png" alt="" class="pro-image-front">
                                    <img src="{{url('/')}}/asset/images/w3.png" alt="" class="pro-image-back">
                                    <div class="men-cart-pro">
                                        <div class="inner-men-cart-pro">
                                            <a href="single.html" class="link-product-add-cart">Quick View</a>
                                        </div>
                                    </div>
                                    <span class="product-new-top">New</span>

                                </div>
                                <div class="item-info-product ">
                                    <h4><a href="single.html">Hand Bags</a></h4>
                                    <div class="info-product-price">
                                        <span class="item_price">$45.99</span>
                                        <del>$69.71</del>
                                    </div>
                                    <a href="#" class="item_add single-item hvr-outline-out button2">Add to cart</a>									
                                </div>
                            </div>
                        </div>
                        <div class="clearfix"></div>		
                    </div>	
                </div>	
            </div>
        </div>
    </div>
</div>
@endsection