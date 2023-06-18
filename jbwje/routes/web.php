<?php

use App\Http\Controllers\ProfileController;
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

Route::get('/recepten/{id}', function ($id) {
    return "Recept " . $id;
})->whereNumber('id');

Route::get('/recepten/{name?}',function ($name = null){

    if($name){
        return "Recept " . $name;
    } else  {
        return "alle recepten";
    }

})->whereAlphaNumeric('name');

require __DIR__.'/auth.php';
