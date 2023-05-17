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

// Scan QR
Route::get('admin/g_c_lists/scan_qr', [AdminGCListsController::class, 'getScanQR'])->name('scan_qr');
// Upload File
Route::get('admin/g_c_lists/upload_gc_list', [AdminGCListsController::class, 'uploadGCList'])->name('upload_file');
Route::post('admin/g_c_lists/upload_gc_list/excel', [AdminGCListsController::class, 'uploadGCListPost'])->name('import_file');
// Get Edit
Route::get('admin/g_c_lists/edit/{id}', [AdminGCListsController::class, 'getEdit'])->name('edit_redeem_code');
// Export File
Route::get('admin/g_c_lists/upload_gc_list/dowload_template', [AdminGCListsController::class, 'exportGCListTemplate'])->name('export_file');
// Redeeming Code
Route::post('admin/g_c_list/edit/redeem_code', [AdminGCListsController::class, 'redeemCode'])->name('redeem_code');
Route::post('admin/g_c_list/edit/save_invoice_number', [AdminGCListsController::class, 'inputInvoice'])->name('input_invoice');
// Email
Route::get('admin/g_c_lists/email', function(){
    return view('/redeem_qr.sendemail');
});
