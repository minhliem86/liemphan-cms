 	<header>
	<section class="logo clearfix">
		<a href="{{URL::to('/')}}" class="logo-link"><img src="{{Assets::img('logo.png')}}" height="120" width="120" alt="Lienhoafashion"></a>
		<div class="right-header">
			<div class="diachi">
				<p><i class="fa fa-home"></i> {{$diachi->address}}</p>
				<p><i class="fa fa-envelope"></i> {{$diachi->email}}</p>
			</div>	<!-- end diachi -->

		</div>	<!-- left-header-->
	</section>
	<nav>
		<div class="navigation-bar">
			<div class="navbar-header">
				<span class="navbar-brand visible-xs">Menu</span>
				 <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1" aria-expanded="false">
					<span class="icon-bar"></span>
					<span class="icon-bar"></span>
					<span class="icon-bar"></span>
				</button>
			</div>
			<div class="collapse navbar-collapse">
				<ul class="main-menu">
					<li><a href="{{url('/')}}">Trang Chủ</a></li>
					<li><a href="{{route('user.gioithieu')}}">Giới Thiệu</a></li>
					<li><a href="{{route('user.sanpham')}}">Sản Phẩm</a></li>
					<li><a href="{{route('user.tintuc')}}">Tin Tức</a></li>
					<li><a href="{{route('user.lienhe')}}">Liên Hệ</a></li>

				</ul>
			</div>
		</div>

		{{Form::open(array('route'=>'user.search', 'id'=>'search-form','method'=>'GET'))}}
			<div class="input-group">
				<input type="text" class="form-control" name="key" />
				<span class="input-group-addon">
					<i class="fa fa-search"></i>
				</span>
			</div>
		{{Form::close()}}
	</nav>
</header>