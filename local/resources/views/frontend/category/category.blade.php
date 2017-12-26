@extends('frontend.master')
@section('title')
    {{$category->seo_title}}
@stop
@section('description')
    {{--Thế Giới Đèn Led. ☎ Hotline: 0914 348 131--}}
    {!! $category->seo_description !!}
@stop
@section('container')
    <div id="category" class="col-md-12">
        <div class="row">
            <div class="col-md-12">
                <div class="container">
                    <div class="category-breadcrumb">
                        <div class="col-md-12">
                            <ul>
                                <li><a href="#">Trang Chủ ></a></li>
                                <li><a href="#">{{$category->name}}</a></li>
                            </ul>
                        </div>
                    </div>
                    <div class="category-top">
                        <div class="col-md-4">
                            @include('frontend.common.sidebar.category')
                        </div>
                        <div class="col-md-8">
                            <div class="title-top">
                                <h3 class="header-title">
                                    <span>{{$category->name}}</span>
                                </h3>
                                <p class="description">
                                    {{--Kiến trúc biệt thự cổ điển nổi bật là biệt thự Pháp ở Việt Nam được biết đến với các--}}
                                    {{--khái niệm như: Biệt thự cổ điển, biệt thự tân cổ điển, biệt thự phong cách Pháp,--}}
                                    {{--biệt thự kiểu Pháp hay biệt thự phong cách Châu Âu. Trong 5 năm trở lại đây Kiến--}}
                                    {{--Trúc Á Đông được biết đến với thương hiệu thiết kế kiến trúc cổ điển và biệt thự tân--}}
                                    {{--cổ điển dành cho người đẳng cấp. Với niềm cảm hứng bất tận từ kiến trúc Châu Âu--}}
                                    {{--chúng tôi đã mang tới cho khách hàng ở Việt Nam những mẫu biệt thự cổ điển đẳng cấp--}}
                                    {{--- hoành tráng - sang trọng - vĩnh cửu. Xin mời quý khách hàng khám phá các mẫu thiết--}}
                                    {{--kế biệt thự tân cổ điển kiểu Pháp: 2 tầng, 3 tầng, 4 tầng, 5 tầng mới nhất.--}}
                                    {{--<br>Ưu đãi lớn: Tặng 5 chuyến du lịch Nha Trang cho 5 chủ nhân may đăng ký thiết kế--}}
                                    {{--biệt thự tháng 12 Xem tại đây--}}
                                    {!! $category->description !!}
                                </p>
                            </div>
                            @if($sub_Category)
                                <div id="list-category" class="col-md-12">
                                    <div class="row">
                                        @foreach($sub_Category as $key=>$data)
                                            <div class="col-md-3">
                                                <a href="{{URL::to('danh-muc/'.$data->path)}}">{{ Html::image($data->image,'',array('class'=>'no-style')) }}</a>
                                            </div>
                                        @endforeach
                                    </div>
                                </div>
                            @endif
                            <div class="list-item col-md-12">
                                @foreach($list_product as $key=>$data)
                                    <a href="{{URL::to($data->path)}}">
                                        <div class="one-item col-md-3 col-xs-6">
                                            {{ Html::image($data->image,'',array('class'=>'no-style')) }}
                                            <div class="item-detail">
                                                <span class="title">{{$data->name}}</span>
                                                <p class="price">1.000.000</p>
                                            </div>
                                        </div>
                                    </a>
                                @endforeach
                            </div>
                        </div>
                    </div>
                    <div class="category-bottom">
                        @include('frontend.homepage.hp-bottom')
                    </div>
                </div>
            </div>
        </div>
    </div>
@stop