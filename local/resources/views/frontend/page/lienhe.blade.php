@extends('frontend.master')
@section('title')
    {{--{{$category->seo_title}}--}}
    Liên Hệ
@stop
@section('description')
    {{--Thế Giới Đèn Led. ☎ Hotline: 0914 348 131--}}
    {{--{!! $category->seo_description !!}--}}
@stop
@section('container')
    <div id="lien-he" class="col-md-12">
        <div class="row">
            <div class="col-md-12">
                <div class="row">
                    <div class="container">
                        <div class="row">
                            {{--<div class="category-breadcrumb">--}}
                                {{--<div class="col-md-12">--}}
                                    {{--<ul>--}}
                                        {{--<li><a href="#">Trang Chủ ></a></li>--}}
                                        {{--<li><a href="#">Liên Hệ</a></li>--}}
                                    {{--</ul>--}}
                                {{--</div>--}}
                            {{--</div>--}}
                            <div class="category-top col-md-12">
                                <div class="row">
                                    <div class="col-md-4">
                                        @include('frontend.common.sidebar.category')
                                    </div>
                                    <div class="col-md-8">
                                        <div class="row">
                                            <div class="col-md-12 lh-info">
                                                <div class="row">
                                                    <h1 style="font-weight:  bold;color:  #0c4294;font-size: 18px;">CÔNG TY TNHH THIẾT BỊ GIÁO DỤC VÀ KHOA HỌC KỸ THUẬT NGÂN GIA</h1>
                                                    <ul>
                                                        <li><span class="lh-info-txt">Địa Chỉ:</span>22 Nguyễn Thị Rư, Tổ 6, Khu Phố 7, Thị Trấn Củ Chi, Huyện Củ Chi, TPHCM</li>
                                                        <li><span class="lh-info-txt">Văn Phòng:</span>49/24/10 Bùi Quang Là, Phường 12, Quận Gò Vấp, TPHCM</li>
                                                        <li><span class="lh-info-txt">MST:</span>0313794015</li>
                                                        <li><span class="lh-info-txt">Điện Thoại:</span> (028) 66547111</li>
                                                        <li><span class="lh-info-txt">Fax:</span>02866547111</li>
                                                        <li><span class="lh-info-txt">Email:</span> sales@ngangia.com.vn</li>
                                                    </ul>
                                                    <div class="col-md-12 lh-map">
                                                        <div class="row">
                                                            <iframe
                                                                    width="100%"
                                                                    height="450"
                                                                    frameborder="0" style="border:0"
                                                                    src="https://www.google.com/maps/embed/v1/place?key=AIzaSyCz9f8H5wjJIac5LrePbowoDN8Vp2FEEZ8
    &q=10.835553,106.638352&zoom=17" allowfullscreen>
                                                            </iframe>

                                                        </div>
                                                    </div>
                                                </div>
                                            </div>

                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="category-bottom col-md-12">
                                @include('frontend.homepage.hp-bottom')
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
@stop