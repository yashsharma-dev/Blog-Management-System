<?php

use App\Http\Controllers\AuthController;
use App\Http\Controllers\Category;
use App\Http\Controllers\PostController;
use Illuminate\Support\Facades\Route;

Route::get('/', function () {
    return "hello";
});


Route::get('home',[PostController::class,'home'])->name('home');

Route::get('single_product/{id}',[PostController::class,'single_product'])->name('single_product');

Route::get('category_product/{id}',[PostController::class,'category_product'])->name('category_product');







///////////////////////////////////////////////////////


Route::get('user_dashbored',[PostController::class,'user_dashbored'])->name('user_dashbored');

Route::get('single_post/{id}',[PostController::class,'single_post'])->name('single_post');

Route::get('insert',[PostController::class,'insert'])->name('insert');

Route::post('do_insert',[PostController::class,'do_insert'])->name('do_insert');

Route::get('edit/{id}',[PostController::class,'edit'])->name('edit');

Route::patch('do_edit/{id}',[PostController::class,'do_edit'])->name('do_edit');

Route::delete('delete/{id}',[PostController::class,'delete'])->name('delete');


Route::get('productsByCategory/{id}',[Category::class,'productsByCategory'])->name('productsByCategory');


// Authentication // 

Route::get('login',[AuthController::class,'login'])->name('login');

Route::post('do_login',[AuthController::class,'do_login'])->name('do_login');

Route::get('register',[AuthController::class,'register'])->name('register');

Route::post('do_register',[AuthController::class,'do_register'])->name('do_register');

Route::get('logout',[AuthController::class,'logout'])->name('logout');









