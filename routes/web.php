<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\StoryController;
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

Route::group(['middleware' => ['auth']], function () {
    Route::get('/story',[StoryController::class,'index']);
    Route::post('/story',[StoryController::class,'post_story']);

    Route::get('/like',[StoryController::class,'like']);
});
Auth::routes();

Route::get('/home', [App\Http\Controllers\HomeController::class, 'index'])->name('home');
