<header class="app-header navbar">
	<button class="navbar-toggler mobile-sidebar-toggler hidden-lg-up" type="button">☰</button>
	<a class="navbar-brand" href="/admin" style="background-image: url('/img/dh/logo.png'); background-size: 100% 100%"></a>
	<ul class="nav navbar-nav hidden-md-down b-r-1">
		<li class="nav-item"><a class="nav-link navbar-toggler sidebar-toggler" href="#">☰</a></li>
	</ul>
    <ul class="nav navbar-nav ml-auto">
        <li class="nav-title text-center">
            <span><strong>${(sysUser.userName)!''}</strong> | <a href="/logout" style="color:#000">注销</a></span>
        </li>
        <li class="nav-item hidden-md-down">
            <!--<a class="nav-link navbar-toggler aside-menu-toggler" href="#">☰</a>-->
            <a class="nav-link navbar-toggler" href="#">☰</a>
        </li>
    </ul>	
</header>