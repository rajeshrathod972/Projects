<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-KK94CHFLLe+nY2dmCWGMq91rCGa5gtU4mk92HdvYe+M/SXH301p5ILy+dN9+nJOZ" crossorigin="anonymous">
    <script src="https://code.jquery.com/jquery-3.6.4.min.js" integrity="sha256-oP6HI9z1XaZNBrJURtCoUT5SUnxFr8s3BzRl+cbzUq8=" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ENjdO4Dr2bkBIFxQpeoTz1HIcje39Wm4jDKdf19U8gI4ddQ3GYNS7NTKfAdVQSZe" crossorigin="anonymous"></script>
  
  
    <title>E-comm Project</title>
</head>
<body>
    {{View::make('header')}}
    @yield('content')
    {{View::make('footer')}}
    
</body>
<style>
    .custom-login{
        height:500px;
        padding-top: 100px;
        
        
    }
   .carousel-inner{
    
    
    
   }
   img.slider-img{
    height:800px
   }
   .trending-image{
    height:100px;
   }
   .trening-item{
    float:left;
    width:16%;


   }
   .trending-wrapper{
    margin:30px;
   }
   .detail-img{
    height:200px;
   }
</style>

</html>

