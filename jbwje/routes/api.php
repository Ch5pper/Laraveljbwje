<?php

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;

/*
|--------------------------------------------------------------------------
| API Routes
|--------------------------------------------------------------------------
|
| Here is where you can register API routes for your application. These
| routes are loaded by the RouteServiceProvider and all of them will
| be assigned to the "api" middleware group. Make something great!
|
*/

use App\Http\Controllers\ReceptenController;

Route::get('/recepten', [ReceptenController::class, 'index']);
Route::post('/recepten', [ReceptenController::class, 'store']);
Route::get('/recepten/{id}', [ReceptenController::class, 'show']);
Route::put('/recepten/{id}', [ReceptenController::class, 'update']);
Route::delete('/recepten/{id}', [ReceptenController::class, 'destroy']);


Route::middleware('auth:sanctum')->get('/user', function (Request $request) {
    return $request->user();
});
