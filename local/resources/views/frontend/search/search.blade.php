@extends('frontend.master')
@section('title')
@stop
@section('description')
    {{--Thế Giới Đèn Led. ☎ Hotline: 0914 348 131--}}
@stop
@section('container')
    <div id="fe-search" class="col-md-12">
        <div class="row">
            <div class="col-md-12">
                <div class="row">
                    <div class="container">
                        <div class="row">
                            <div class="fe-search-top col-md-12">
                                <div class="row">
                                    <div class="col-md-4">
                                        @include('frontend.common.sidebar.category')
                                    </div>
                                    <div class="col-md-8">
                                        <div class="row">
                                            <div class="title-top">
                                                <h3 class="header-title">
                                                    <span>KẾT QUẢ TÌM KIẾM</span>
                                                </h3>
                                            </div>
                                            <div class="list-item col-md-12">
                                                <div class="row">
                                                    @foreach($searches as $key=>$data)
                                                        <a href="{{URL::to($data->path)}}">
                                                            <div class="one-item col-md-3 col-xs-6">
                                                                <div class="row">
                                                                    {{ Html::image($data->image,'',array('class'=>'no-style')) }}
                                                                    <div class="item-detail">
                                                                        <span class="title">{{$data->name}}</span>
                                                                        @if($data->price!=0)
                                                                            <span class="price-sale">{{$data->price}}
                                                                                VND
                                                                                @if($data->sale!=0)
                                                                                    <span class="discount">{{$data->sale}}</span>
                                                                                @endif
                                        </span>
                                                                            @if($data->sale!=0)
                                                                                <span class="price-saving">{{$data->final_price}}
                                                                                    VND</span>
                                                                            @endif
                                                                        @else
                                                                            <span class="price-contact">Liên Hệ</span>
                                                                        @endif
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </a>
                                                    @endforeach
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="fe-search-bottom col-md-12">
                                @include('frontend.homepage.hp-bottom')
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
@stop