@extends('backend.master')
@section('styles')
    {{ Html::style('css/be.product.css') }}
    {{ Html::style('css/bootstrap-toggle.min.css') }}
@stop
@section('scripts')
    {{ Html::script('js/bootstrap-toggle.min.js',array('async' => 'async') ) }}
    {{ Html::script('js/ulti.js',array('async' => 'async') ) }}
    {{ Html::script('js/be.product.js',array('async' => 'async') ) }}
@stop
@section('container')
    <div class="row">
        <div class="col-lg-12 margin-tb">
            <div class="pull-left">
                <h2>Chỉnh Sửa Loại Sản Phẩm</h2>
            </div>
            <div class="pull-right">
                <a class="btn btn-primary" href="{{ route('product.index') }}"> Back</a>
            </div>
        </div>
    </div>
    @if (count($errors) > 0)
        <div class="alert alert-danger">
            <strong>Whoops!</strong> There were some problems with your input.<br><br>
            <ul>
                @foreach ($errors->all() as $error)
                    <li>{{ $error }}</li>
                @endforeach
            </ul>
        </div>
    @endif
    {!! Form::model($product,array('route' => ['product.update',$product->id],'method'=>'PATCH')) !!}
    <div class="col-md-12">
        <div class="row">
            <div class="col-md-6">
                <div class="form-group">
                    <strong>Tên Sản Phẩm:</strong>
                    {!! Form::text('name',null, array('placeholder' => 'Tên','class' => 'form-control')) !!}
                </div>
                <div class="form-group">
                    <strong>Mô Tả Sản Phẩm:</strong>
                    {!! Form::textarea('description',null,array('placeholder' => '','id'=>'description-product','class' => 'form-control','rows'=>'10','style'=>'resize:none')) !!}
                </div>
                <div class="line-break"></div>
                <h3>SEO</h3>
                <div class="form-group">
                    <strong>Tiêu Đề (title):</strong>
                    {!! Form::text('seo_title',null, array('placeholder' => 'Tên','class' => 'form-control')) !!}
                </div>
                <div class="form-group">
                    <strong>Mô Tả (description):</strong>
                    {!! Form::textarea('seo_description',null,array('placeholder' => '','id'=>'seo-description-product','class' => 'form-control','rows'=>'10','style'=>'resize:none')) !!}
                </div>
                <div class="form-group">
                    <strong>Kích Hoạt:</strong>
                    <input {{$product->isActive==1?'checked':''}}  name="product_is_active" data-on="Có"
                           data-off="Không"
                           type="checkbox" data-toggle="toggle">
                </div>
                <div class="form-group">
                    <div class="form-inline">
                        <strong>Thứ tự:</strong>
                        {!! Form::text('order', $product->order, array('placeholder' => 'Thứ Tự','class' => 'form-control')) !!}
                    </div>
                </div>
            </div>
            <div class="col-md-6">
                <div class="form-group">
                    <strong>Hình Đại Diện: </strong>
                    {!! Form::text('image', url('/').'/'.$product->image, array('class' => 'form-control','id'=>'pathImageSanPham')) !!}
                    <br>
                    {!! Form::button('Tìm', array('id' => 'btnBrowseImageSanPham','class'=>'btn btn-primary')) !!}
                </div>
                <div class="form-group">
                    {{ Html::image($product->image,'',array('id'=>'showHinhSanPham','class'=>'show-image'))}}
                </div>
                <div class="form-group">
                    <strong>Loại Sản Phẩm</strong>
                    <select class="form-control" name="category">'
                        @foreach($dd_categories as $key=>$data) {
                        @if($data['index']===$product->category_id)
                            <option value="{{$data['index']}}" selected>{{$data['value']}}</option>
                        @else
                            <option value="{{$data['index']}}">{{$data['value']}}</option>
                        @endif
                        @endforeach
                    </select>
                </div>
                <div class="col-md-6">
                    <div class="row">
                        <div class="form-group">
                            <strong>Giá: </strong>
                            {!! Form::text('price',null, array('placeholder' => 'Tên','class' => 'form-control')) !!}
                        </div>
                    </div>
                </div>
                <div class="col-md-6">
                    <div class="row">
                        <div class="form-group">
                            <strong>% Giảm Giá: </strong>
                            {!! Form::text('sale',null, array('placeholder' => 'Tên','class' => 'form-control')) !!}
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-md-12" style="text-align:  center;">
                <button id="btnDanhMuc" type="submit" class="btn btn-primary">Cập Nhật Sản Phẩm</button>
            </div>
        </div>
    </div>
    {!! Form::close() !!}
@stop
