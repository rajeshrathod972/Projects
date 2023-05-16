@extends('master')
@section("content")
<div id="carouselExampleIndicators" class="carousel slide" data-bs-ride="true">
  <div class="carousel-indicators">
    <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="0" class="active" aria-current="true" aria-label="Slide 1"></button>
    <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="1" aria-label="Slide 2"></button>
    <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="2" aria-label="Slide 3"></button>
  </div>
  <div class="carousel-inner">
    @foreach($products as $item)
    <div class="carousel-item {{$item['id']==1?'active':''}}">
    <a href="detail/{{$item['id']}}">
      <img class="slider-img" src="{{$item['gallery']}}" class="d-block w-100" alt="...">
      
      <center><h3>{{$item['name']}}</h3>
      <p>{{$item['description']}}</p></center>
      </a>
    </div>
    @endforeach
    
  </div>
  <button class="carousel-control-prev" type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide="prev">
    <span class="carousel-control-prev-icon" aria-hidden="true"></span>
    <span class="visually-hidden">Previous</span>
  </button>
  <button class="carousel-control-next" type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide="next">
    <span class="carousel-control-next-icon" aria-hidden="true"></span>
    <span class="visually-hidden">Next</span>
  </button>
</div>
<div class="trending-wrapper">
  <h3>Treading Products</h3>
  @foreach($products as $item)
  <div class="trening-item">
  <a href="detail/{{$item['id']}}">
    <img class="trending-image" src="{{$item['gallery']}}">
    <div class="">
      <h3>{{$item['name']}}</h3>
    </div>  
  </a>
  </div>
  @endforeach
</div>  

@endsection