<div id="footer" class="col-md-12">
    <div class="row">
        <div class="footer-top">
            <div class="container">
                <div class="col-md-3">
                    <h3>Danh Sách Sản Phẩm</h3>
                    <ul>
                        @foreach($menu_horizon as $key=>$data)
                            <li><a href="{{URL::to('danh-muc/'.$data->path)}}">{{$data->name}}</a></li>
                        @endforeach
                        {{--<li><a href="#">Đèn Gian Bếp</a></li>--}}
                        {{--<li><a href="#">Đèn Hành Lang</a></li>--}}
                        {{--<li><a href="#">Đèn Showroom - Nhà Hàng</a></li>--}}
                        {{--<li><a href="#">Thiết Bị Khác</a></li>--}}
                    </ul>
                </div>
                <div class="col-md-3">
                    <h3>Giới Thiệu</h3>
                    <ul>
                        <li><a href="{{URL::to('trang/gioi-thieu')}}">Về Chúng Tôi</a></li>
                        <li><a href="{{URL::to('trang/lien-he')}}">Liên Hệ</a></li>
                    </ul>
                </div>
                <div class="col-md-3">
                    <h3>Ngân Gia</h3>
                    <ul>

                        <li><a href="#"><i class="fa fa-home" aria-hidden="true"></i><span>Địa Chỉ: 22 Nguyễn Thị Rư, Tổ 6, Thị Trấn Củ Chi, Huyện Củ Chi, TPHCM</span></a></li>
                        <li><a href="#"><i class="fa fa-home" aria-hidden="true"></i><span>VP: 49/24/10 Bùi Quang Là, Phường 12, Quận Gò Vấp, TPHCM</span></a></li>
                        <li><a href="#"><span>MST: 0313794015</span></a></li>
                        <li><a href="#"><span>ĐT: (028) 66547111</span></a></li>
                        <li><a href="#"><span>Fax: 02866547111</span></a></li>
                        <li><a href="#"><span>sales@ngangia.com.vn</span></a></li>
                    </ul>
                </div>
                <div class="col-md-3">
                    <h3>Facebook</h3>
                </div>
            </div>
        </div>
        <div class="footer-bottom">
            <div class="container">
                <span>Designed by Smartlinks.vn</span>
            </div>
        </div>
    </div>
</div>