<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\HomeController;
use App\Events\FormSubmited;

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/

Route::get('/counter', function () {
    return view('counter');
});
Route::get('/senderr', function () {
    return view('sender');
});
Route::post('/sender', function () {
    // this is a post
    $text = request()->text;
    event(new FormSubmited($text));
});

Route::get('/home', [HomeController::class, 'index'])->name('home');
