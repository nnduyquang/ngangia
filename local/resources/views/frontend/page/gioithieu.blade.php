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

                                                </h3>
                                                <p class="description">
                                                    {{--{!! $page->description !!}--}}
                                                </p>
                                            </div>
                                            <div class="list-item col-md-12">
                                                <div class="row">
                                                    <h1 style="font-weight: bold;line-height:  3.5;font-size: 21px;text-align: center;color: #0c4294;">
                                                        CÔNG TY TNHH THIẾT
                                                        BỊ GIÁO DỤC VÀ KHOA HỌC KỸ THUẬT NGÂN GIA</h1>
                                                    <p style="line-height:  1.5;">
                                                        Được thành lập theo giấy chứng nhận đăng ký kinh doanh Số:
                                                        0313794015 do Sở Kế hoạch và Đầu tư Thành Phố Hồ Chí Minh cấp
                                                        tháng 5/2016
                                                        Công ty hoạt động kinh doanh, thực hiện dự án trong các lĩnh vực
                                                        chính:
                                                    </p>
                                                    <ul style="list-style-type:  disc;margin-left: 20px;line-height: 1.5;">
                                                        <li>Phân phối thiết bị văn phòng, thiết bị giáo dục, thiết bị
                                                            dạy nghề.
                                                        </li>
                                                        <li>Tư vấn giải pháp, thiết kế, lắp đặt thư viện điện tử, thư
                                                            viện số.
                                                        </li>
                                                        <li>Thiết bị khoa học kỹ thuật, thiết bị phòng thí nghiệm bộ
                                                            môn.
                                                        </li>
                                                        <li>Cung cấp vật tư y tế, y khoa, nha khoa.</li>
                                                    </ul>
                                                    <h3 style="font-weight: bold;line-height:  3.5;font-size: 21px;text-align: center;color: #0c4294;">SƠ ĐỒ TỔ CHỨC</h3>
                                                    {{ Html::image('images/uploads/images/tochuc.PNG','',array('class'=>'no-style','style'=>'width:100%')) }}
                                                    <h2 style="font-weight: bold;line-height:  3.5;font-size: 16px;color: #0c4294;">
                                                        CHIẾN LƯỢC VÀ PHÁT TRIỂN</h2>
                                                    <p style="line-height:  1.5;">
                                                        Chiến lược xây dựng hình ảnh thương hiệu: Từng bước thực hiện
                                                        chiến lược quảng bá thương hiệu sản phẩm, dịch vụ, chất lượng và
                                                        giá cả phù hợp đến Quý khách hàng. Mục tiêu đến năm 2018 công ty
                                                        sẽ trở thành thương hiệu tin cậy với Khách Hàng.</p></br>
                                                    <p style="line-height:  1.5;">
                                                        Chiến lược khách hàng: Xây dựng các quy trình phục vụ nhanh
                                                        chóng, chuyên nghiệp, trong công tác phục vụ khách hàng. Luôn
                                                        đáp ứng yêu cầu và thảo mãn nhu cầu của khách hàng nhưng phải
                                                        tuân thủ chặt chẽ tiêu chuẩn đạo đức nghề nghiệp. Xây dựng chính
                                                        sách khách hàng phù hợp với định hướng luôn luôn đổi mới đáp ứng
                                                        được chiến lược giáo giục của nhà nước.</p></br>
                                                    <p style="line-height:  1.5;">
                                                        Chiến lược xây dựng và phát triển nhân lực: Đào tạo và xây dựng
                                                        đội ngũ lao động có kỹ thuật cao, cán bộ có trình độ chuyên môn
                                                        cao, có trách nhiệm, chủ động và sáng tạo trong công việc. Đảm
                                                        bảo chính sách đãi ngộ công bằng, hợp lý với cán bộ nhân viên
                                                        công ty.</p></br>
                                                    <p style="line-height:  1.5;">
                                                        Chiến lược sản phẩm và dịch vụ: Luôn Xây dựng các sản phẩm nền
                                                        tảng, và sản phẩm thương hiệu chất lượng và đi đầu công nghệ
                                                        lĩnh vực giáo dục. Đầu tư nhân lực, tài chính cho hoạt động kinh
                                                        doanh tối đa. Từ đó cho ra đời các sản phẩm theo công nghệ nhằm
                                                        đa dạng hoá các sản phẩm, dịch vụ của công ty từng bước đáp ứng
                                                        tất cả yêu cầu Khách Hàng.</p></br>
                                                    </p>
                                                    <h2 style="font-weight: bold;line-height:  3.5;font-size: 16px;color: #0c4294;">SỨ MỆNH</h2>
                                                    <ul style="list-style-type:  disc;margin-left: 20px;line-height: 1.5; margin-bottom: 20px">
                                                        <li>Với phương châm: Nền tảng giáo dục – phát triển tương lai.
                                                        </li>
                                                        <li>Xây dựng đội ngũ lao động, chuyên viên có trình độ chuyên
                                                            môn cao, chuyên nghiệp, yêu nghề và hết lòng trong sự nghiệp
                                                            giáo dục.
                                                        </li>
                                                        <li>Hoạt động theo mục tiêu tối đa hóa thỏa mãn nhu cầu sản phẩm
                                                            và dịch vụ của khách hàng, tạo uy tín vững mạnh
                                                        </li>
                                                    </ul>
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