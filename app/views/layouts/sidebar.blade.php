<div class="sidebar">
	<div class="box">
		<div class="top-box">
			<h3 class="title-box">Danh Mục Sản Phẩm</h3>
		</div>
		<div class="content-box">
			<ul class="list-danhmuc">
				@if(!empty(Cache::get('danhmuc_sidebar')))
					@foreach($danhmuc as $item_danhmuc)
					<li><a href="{{route('user.sanpham.danhmuc',$item_danhmuc->slug)}}"><i class="fa fa-angle-double-right"></i> {{$item_danhmuc->title}} </a></li>
					@endforeach
				@endif
			</ul>
		</div>
	</div>	<!--end box -->

	<div class="box">
		<div class="top-box">
			<h3 class="title-box">Hỗ Trợ khách hàng</h3>
		</div>
		<div class="content-box">
			<div class="wrap-hotro">
				<div class="block-hotro">
					<p><i class="fa fa-user"></i> Hỗ Trợ 1</p>
					<p class="phone">0123 456 789</p>
				</div>
				<div class="block-hotro">
					<p><i class="fa fa-user"></i> Hỗ Trợ 2</p>
					<p class="phone">0123 999 888</p>
				</div>
			</div>	<!-- end hotro -->
		</div>
	</div>	<!--end box -->

	<div class="box">
		<div class="top-box">
			<h3 class="title-box">Thông tin khuyến mãi</h3>
		</div>
		<div class="content-box">
			<div class="wrap-khuyenmai">
				<i class="ic-hot"><img src="{{Assets::img('ic-hot.png')}}" class="img-responsive"></i>
				<img src="{{Assets::img('sp/sp-khuyenmai.jpg')}}" class="img-responsive" alt="">
			</div>	<!-- end wrap-khuyenmai-->
		</div>
	</div>	<!--end box -->
</div>	<!-- end sidebar -->