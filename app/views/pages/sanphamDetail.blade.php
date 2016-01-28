@extends('layouts.default')

@section('content')
<div class="content">
	<div class="detail-page">
		<div class="block">
			<h2 class="title-block"><span>Sản phẩm </span></h2>
		</div>
		<div class="wrap wrap-sp">
			<div class="row">
				<div class="col-md-4 col-sm-5">
					<img src="{{$sanpham->image_path}}" class="img-responsive" alt="">
				</div>
				<div class="col-md-8 col-sm-7">
					<h4 class="title-sp">{{$sanpham->name}}</h4>
					<p><b>Chất liệu:</b> {{$sanpham->chatlieu}}</p>
					<p><b>Kiểu dáng:</b> {{$sanpham->style}}</p>
					<p><b>Size:</b> {{$sanpham->size}}</p>
				</div>
			</div>
		</div>	<!-- end wrap- sp-->
		@if($sanpham->mota !== null)
		<div class=" wrap detail">
			<ul class="nav nav-tabs ">
				<li role="presentation" class="active">Mô tả sản phẩm</li>
			</ul>
			<div class="mota">
				<p>{{$sanpham->mota}}</p>
			</div>
		</div>
		@endif
		<div class=" wrap wrap-relate">
			<div class="block">
				<h2 class="title-block"><span>Sản phẩm cùng loại</span></h2>
			</div>
			<ul>
				<li><a href="#"></a></li>
			</ul>
		</div>
	</div>	<!-- detail-page-->
</div>	<!-- end content -->
@stop
