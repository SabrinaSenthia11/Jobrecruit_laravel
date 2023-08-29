<div class="navbar" style="color: green;"></div>
<nav class="navbar navbar-expand-lg main-navbar">
    <form class="form-inline mr-auto">
        <ul class="navbar-nav mr-3">
            <li><a href="#" data-toggle="sidebar" class="nav-link nav-link-lg" style="color: green;"><i class="fas fa-bars"></i></a></li>
            <li><a href="#" data-toggle="search" class="nav-link nav-link-lg d-sm-none" ><i class="fas fa-search"></i></a></li>
        </ul>
    </form>
    <ul class="navbar-nav navbar-right w-100-p justify-content-end">
        <li class="nav-link">
            <a href="{{ route('home') }}" target="_blank" class="btn btn-success">Front End</a>
        </li>
        <li class="nav-item dropdown">
            <a class="nav-link dropdown-toggle" href="#" role="button" data-bs-toggle="dropdown" aria-expanded="false" style="color: green;">
                <img alt="image" src="{{ asset('uploads/'.Auth::guard('admin')->user()->photo) }}" class="rounded-circle-custom">
                <div class="d-sm-none d-lg-inline-block" style="color: green;">{{ Auth::guard('admin')->user()->name }}</div>
            </a>
            <ul class="dropdown-menu">
                <li><a class="dropdown-item" href="{{ route('admin_profile') }}" style="color: green;"><i class="far fa-user"></i> Edit Profile</a></li>
                <li><a class="dropdown-item" href="{{ route('admin_logout') }}" style="color: green;"><i class="fas fa-sign-out-alt"></i> Logout</a></li>
            </ul>
        </li>
    </ul>
</nav>

