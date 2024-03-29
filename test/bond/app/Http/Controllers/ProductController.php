<?php

namespace App\Http\Controllers;
use Illuminate\Http\Request;
use App\Models\Product;
use App\Models\Cart;
use Session;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Hash;
class ProductController extends Controller{

    function index(){
        $data=Product::all();
        // return $data;
        return view('product',['products'=>$data]);
    }
    function detail($id){
        $data=Product::find($id);
        return view('detail',['product'=>$data]);
    }
    function addToCart(Request $req){
           if($req->session()->has('user'))
           {
             $cart=new Cart;
             $cart->user_id=$req->session()->get('user')['id'];
             $cart->product_id=$req->product_id;
             $cart->save();
             return redirect('/');
           }
           else{
            return redirect('/login');
           }
           
    }
  static  function cartItem(){
       $userId=Session::get('user')['id'];
       return Cart::where('user_id',$userId)->count();
    }

     function cartlist(){
          $userId=Session::get('user')['id'];
          $products=DB::table('cart')->join('products','cart.product_id','=','products.id')
          ->where('cart.user_id',$userId)
          ->select('products.*','cart.id as cart_id')
          ->get();
          return view('cartlist',['products'=>$products]);
          // echo $products;
       
    }
    
    function removeCart($id){
      Cart::destroy($id);
      return redirect('cartlist');
    }
    

    function ordernow(){
      $userId=Session::get('user')['id'];
        $total= $products=DB::table('cart')->join('products','cart.product_id','=','products.id')
          ->where('cart.user_id',$userId)
          ->sum('products.price');
    }
      // return view('')
}