<?php

use App\Http\Controllers\AdminGCListsController;
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
    return view('welcome');
});

Route::get('admin/g_c_lists/scan_qr', [AdminGCListsController::class, 'getScanQR'])->name('scan_qr');
Route::post('admin/g_c_list/edit/redeem_code', [AdminGCListsController::class, 'redeemCode'])->name('redeem_code');
Route::post('admin/g_c_list/edit/save_invoice_number', [AdminGCListsController::class, 'inputInvoice'])->name('input_invoice');
