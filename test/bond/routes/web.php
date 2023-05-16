<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\UserController;
use App\Http\Controllers\ProductController;
use App\Http\Controllers\BlogController;

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider and all of them will
| be assigned to the "web" middleware group. Make something great!
|
*/

// Route::get('/welcome', function () {
//     return view('welcome');
// });
// Route::get('/test', function () {
//     return view('task');
// });
// Route::get('/login', function () {
//     return view('login');
// });
// Route::get('/logout', function () {
//     Session::forget('user');
//     return view('login');
// });
// Route::get('/dbconn', function () {
//     return view('dbconn');
// });
// Route::post("/login",[UserController::class,'login']);

// Route::get("/",[ProductController::class,'index']);
// Route::get("detail/{id}",[ProductController::class,'detail']);
// Route::post("add_to_cart",[ProductController::class,'addToCart']);
// Route::post("removecart/{id}",[ProductController::class,'removeCart']);
// Route::get("cartlist",[ProductController::class,'cartlist']);
// Route::get("ordernow",[ProductController::class,'ordernow']);
// Route::get('blogs', [BlogController::class,]);