<?php
use App\Http\Controllers\ProductController;
$total=0;
if(Session::has('user'))
{
  $total=ProductController::cartItem();
}

?>


<nav class="navbar navbar-expand-lg bg-body-tertiary">
  <div class="container-fluid">
   
    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="navbarSupportedContent">
      <ul class="navbar-nav me-auto mb-2 mb-lg-0">
      <li class="nav-item">
          <a class="nav-link" href="/">E-Comm</a>
         
        </li>
        <li class="nav-item">
          <a class="nav-link" href="/">Home</a>
         
        </li>
        <li class="nav-item">
         
          <a class="nav-link" href="#">Orders</a>
        </li>
       
      </ul>
      <form class="d-flex" role="search">
        <input class="form-control me-2" type="search" placeholder="Search" aria-label="Search">
        <button class="btn btn-outline-success" type="submit">Submit</button>
      </form>
      <ul class="nav navbar-nav navbar-right">
        <li>
            <a href="/cartlist">Cart{{$total}}</a>
        </li>
        @if(Session::has('user'))
        <li class="nav-item dropdown">
          <a class="nav-link dropdown-toggle" href="#" id="navbarScrollingDropdown" role="button" data-bs-toggle="dropdown" aria-expanded="false">
            {{Session::get('user')['name']}}
          </a>
          <ul class="dropdown-menu" aria-labelledby="navbarScrollingDropdown">
            <li><a class="dropdown-item" href="/logout">logout</a></li>
            
          </ul>
        </li>
        @else
        <li><a href="/login">login</a>
        @endif
      </ul>
    </div>
  </div>
</nav>