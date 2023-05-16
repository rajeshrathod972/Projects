@extends('master')
@section("content")
<a class="btn btn-success" href="ordernow">Order now</a>
@foreach($products as $product)

<div class="container">
    <div class="row">
        <div class="col-sm-6">
        <img class="detail-img" src="{{$product->gallery}}" alt="">
        </div>
        <div class="col-sm-6">
            <a href="/">Go back</a>
        <h2>{{$product->name}}</h2>
        <h3>Price : {{$product->description}}</h3>
        <h4>Category: {{$product->category}}</h4>
        <br><br>
        <form action="/removecart/{{$product->cart_id}}" method="POST">
            @csrf
            <input type="hidden" name="product_id" value={{$product->id}}>
        <button class="btn btn-primary">Remove to Cart</button>
        </form>
        <br><br>
       
        </div>

    </div>

</div>
@endforeach
<a class="btn btn-success" href="ordernow">Order now</a>

@endsection