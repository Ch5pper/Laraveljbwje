<?php

use App\Http\Controllers\ActivityController;
use App\Http\Controllers\IngredientenController;
use App\Http\Controllers\ProfileController;
use App\Http\Controllers\ReceptenController;
use App\Http\Controllers\TagController;
use App\Http\Controllers\TaskController;
use Illuminate\Support\Facades\Route;

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

Route::get('/', function () {

    $html = "
    
    <h1>Recepten app<h1>
    <div>
        <a href='" . route('recepten.index') . "'>Alle recepten</a>

    ";

    return $html;
});

Route::get('/dashboard', function () {
    return view('dashboard');
})->middleware(['auth', 'verified'])->name('dashboard');

Route::middleware('auth')->group(function () {
    Route::get('/profile', [ProfileController::class, 'edit'])->name('profile.edit');
    Route::patch('/profile', [ProfileController::class, 'update'])->name('profile.update');
    Route::delete('/profile', [ProfileController::class, 'destroy'])->name('profile.destroy');
});

Route::get('/recepten', function () {
    return "<h1>Alle recepten<h1>";
})->name('recepten.index');

Route::get('/recepten', [ReceptenController::class, 'create'] )->name('recepten.index');
Route::get('/recepten/create', [ReceptenController::class, 'create'] )->name('recepten.create');
Route::get('/recepten/{id}', [ReceptenController::class, 'create'] )->name('recepten.show');
Route::resource('/ingredienten', IngredientenController::class);
Route::resources([
    '/tags' => TagController::class,
    '/tasks' => TaskController::class
]);
Route::resource('/activities', ActivityController::class)->only([
    'create', 'store', 'edit', 'update', 'destroy'
]);
require __DIR__.'/auth.php';
