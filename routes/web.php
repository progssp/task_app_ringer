<?php

use Illuminate\Support\Facades\Route;
use \App\Http\Controllers\LoginController;
use \App\Http\Controllers\UserController;

Route::get('/',[LoginController::class, 'login_view'])->name('login');
Route::post('/',[LoginController::class, 'login']);


Route::middleware('auth')->get('/dashboard',[UserController::class, 'dashboard_view']);
Route::get('/logout',[LoginController::class, 'logout']);



Route::get('/load_books',[UserController::class, 'load_books']);
