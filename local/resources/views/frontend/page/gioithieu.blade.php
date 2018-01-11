@extends('frontend.master')
@section('title')
    {{--{{$category->seo_title}}--}}
@stop
@section('description')
    {{--Thế Giới Đèn Led. ☎ Hotline: 0914 348 131--}}
    {{--{!! $category->seo_description !!}--}}
@stop
@section('container')
    <div id="fe-page" class="col-md-12">
        <div class="row">
            <div class="col-md-12">
                <div class="row">
                    <div class="container">
                        <div class="row">
                            <div class="category-top col-md-12">
                                <div class="row">
                                    <div class="col-md-12">
                                        <div class="row">
                                            <div class="title-top">
                                                <h3 class="header-title">
                                                    <span>{{$page->name}}</span>
                                                </h3>
                                                <p class="description">
                                                    {!! $page->description !!}
                                                </p>
                                            </div>
                                            <div class="list-item col-md-12">
                                                <div class="row">
                                                   {!! $page->content !!}
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