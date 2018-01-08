<div id="hp-content-list-product2" class="col-md-12">
    <div class="row">
        <div class="container">
            <div class="row">
                @foreach($final_array as $key=>$data)
                    <div class="one-category col-md-12">
                        <div class="row">
                            <div class="title-top">
                                <h3 class="header-title">
                                    <span><a href="{{URL::to('danh-muc/'.$data[0]['category']->path)}}">{{$data[0]['category']->name}}</a></span>
                                </h3>
                            </div>
                            <div id="list-product-content" class="col-md-12">
                                <div class="row">
                                    <div class="demo-flex">
                                        <div class="list-category col-md-4 hidden-sm hidden-xs">
                                            <div class="row">
                                                {{ Html::image($data[0]['category']->image,'',array('class'=>'image-category')) }}
                                                @foreach($data[0]['list_subMenu'] as $key2=>$data2)
                                                    <div class="col-md-6">
                                                        <div class="row">
                                                            <a href="{{URL::to('danh-muc/'.$data2->path)}}">{{$data2->name}}</a>
                                                        </div>
                                                    </div>
                                                @endforeach
                                                <div class="col-md-6">
                                                    <div class="row"><a class="view-all" href="#">Xem Tất Cả</a></div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="list-item col-md-8">
                                            <div class="row">
                                                <dic class="m-list-product col-xs-12 hidden-md hidden-lg">
                                                    <div class="row">
                                                        @foreach($data[0]['list_subMenu'] as $key2=>$data2)
                                                            <div class="col-xs-6">
                                                                <div class="row">
                                                                    <a href="{{URL::to('danh-muc/'.$data2->path)}}">{{$data2->name}}</a>
                                                                </div>
                                                            </div>
                                                        @endforeach
                                                    </div>
                                                </dic>
                                                <div class="wrap-flex">
                                                    @foreach($data[0]['list_product'] as $key2=>$data2)
                                                        <div class="one-item col-md-3 col-xs-6">
                                                            <a href="{{URL::to($data2->path)}}">
                                                                {{ Html::image($data2->image,'',array('class'=>'no-style')) }}
                                                                {{--<div class="item-detail">--}}
                                                                    <span class="title">{{$data2->name}}</span>
                                                                    @if($data2->price!=0)
                                                                        <span class="price-sale">{{$data2->final_price}}
                                                                            VND
                                                                            @if($data2->sale!=0)
                                                                                <span class="discount">- {{$data2->sale}}
                                                                                    %</span>
                                                                            @endif
                                        </span>
                                                                        @if($data2->sale!=0)
                                                                            <span class="price-saving">{{$data2->price}}
                                                                                VND</span>
                                                                        @endif
                                                                    @else
                                                                        <span class="price-contact">Liên Hệ</span>
                                                                    @endif
                                                                {{--</div>--}}
                                                            </a>
                                                        </div>
                                                    @endforeach
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                @endforeach
            </div>
        </div>
    </div>
</div>

