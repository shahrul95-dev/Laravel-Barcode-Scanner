<?php

use Illuminate\Support\Facades\Route;

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
    return view('auth.login');
});

Route::get('barcode', 'BarcodeController@barcode');

// Route::get('/scan_result/{id}', 'App\Http\Controllers\BarcodeController@scan');

// Route::get('/membership', 'App\Http\Controllers\MembershipController@show');

Route::middleware(['auth:sanctum', 'verified'])->get('/dashboard', function () {
    return view('dashboard');
})->name('dashboard');

Route::middleware(['auth:sanctum', 'verified'])->get('/membership', 'App\Http\Controllers\MembershipController@show', function () {
    return view('membership');
})->name('membership');

Route::middleware(['auth:sanctum', 'verified'])->get('/membership_log/{id}', 'App\Http\Controllers\BarcodeController@show_log', function () {
    return view('membership_log');
})->name('membership_log');

Route::middleware(['auth:sanctum', 'verified'])->get('/scan', 'App\Http\Controllers\BarcodeController@show', function () {
    return view('scan');
})->name('scan');


Route::middleware(['auth:sanctum', 'verified'])->any('/scan_result/{id}', 'App\Http\Controllers\BarcodeController@scan')->name('scan_result');

Route::middleware(['auth:sanctum', 'verified'])->any('/scan_result/insert/{id}', 'App\Http\Controllers\BarcodeController@insert_log');