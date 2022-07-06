<?php
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;
use App\Events\MessageEvent;


// Route::middleware('auth:sanctum')->get('/user', function (Request $request) {
//     return $request->user();
// });
// 1
Route::post('new-message', function (Request $request) {
// 2
event(new MessageEvent($request->user, $request->message));
return 'ok';
});
