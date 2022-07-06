<?php

use Illuminate\Support\Facades\Route;
use App\Events\FormSubmited;
use App\Http\Controllers\ConversationController;

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
Route::get('/', function () {
    return view('welcome');
});
Route::get('/counter', function () {
    return view('counter');
});
// Route::get('/', function () {
//     return view('chatbox');
// });

Route::get('/all/user', [ConversationController::class, 'index']);
Route::get('/logout', [ConversationController::class, 'logout']);
Route::get('/chat/view/{id}', [ConversationController::class, 'chatView']);
Route::get('/detail/{use_id}', [ConversationController::class, 'conservation']);
Route::get('/all/conversations', [ConversationController::class, 'AllConverse'])->name('all.convers');

// Route::get('/chat/view/conversation/{con_id}/user/{use_id}', [ConversationController::class, 'conservation']);
Route::post('/cendrr/{id}', [ConversationController::class, 'testSender']);



Route::get('/sender', function () {
    return view('sender');
});
Route::get('/listen', function () {
    return view('listener');
});
Route::post('/senderr', function () {
   //
   $text = request()->text;
   event(new FormSubmited($text));
});

Route::middleware([
    'auth:sanctum',
    config('jetstream.auth_session'),
    'verified'
])->group(function () {
    Route::get('/dashboard', function () {
        return view('dashboard');
    })->name('dashboard');
});
