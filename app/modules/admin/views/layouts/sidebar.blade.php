  <aside class="main-sidebar">

    <!-- sidebar: style can be found in sidebar.less -->
    <section class="sidebar">

      <!-- Sidebar user panel (optional) -->
      <div class="user-panel">
        <div class="pull-left image">
          <img src="{{asset('public/backend')}}/img/user2-160x160.jpg" class="img-circle" alt="User Image">
        </div>
        <div class="pull-left info">
          <p>Alexander Pierce</p>
          <!-- Status -->
          <span><i class="fa fa-circle text-success"></i> Online</span>
        </div>
      </div>
      <!-- Sidebar Menu -->
      <ul class="sidebar-menu">
        <li class="header">MAIN NAVIGATION</li>
        <!-- Optionally, you can add icons to the links -->
        <li class="{{\Active::setActive(2,'album')}}"><a href="{{route('admin.album.index')}}"><i class="fa fa-photo"></i> <span>Albums</span></a></li>
        <li class="{{\Active::setActive(2,'contact')}}"><a href="{{route('admin.contact')}}"><i class="fa fa-home"></i> <span>Thông tin liên hệ</span></a></li>
        <li class="{{\Active::setActive(2,'tintuc')}}"><a href="{{route('admin.tintuc.index')}}"><i class="fa fa-home"></i> <span>Tin Tức</span></a></li>
        <li class="treeview">
          <a href="#"><i class="fa fa-link"></i> <span>Multilevel</span> <i class="fa fa-angle-left pull-right"></i></a>
          <ul class="treeview-menu">
            <li><a href="#">Link in level 2</a></li>
            <li><a href="#">Link in level 2</a></li>
          </ul>
        </li>
      </ul>
      <!-- /.sidebar-menu -->
    </section>
    <!-- /.sidebar -->
  </aside>