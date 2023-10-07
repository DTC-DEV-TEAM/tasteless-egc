<?php

use App\Http\Controllers\AdminGCListsController;
use App\Http\Controllers\AdminQrCreationsController;
use App\Http\Controllers\AdminEmailTestingsController;
use Illuminate\Support\Facades\Route;
use App\EmailTesting;

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
    return redirect('/admin/login');
});

// Scan QR
Route::get('admin/g_c_lists/scan_qr', [AdminGCListsController::class, 'getScanQR'])->name('scan_qr');
// Upload File
Route::get('admin/qr_creations/edit/{id}', [AdminQrCreationsController::class, 'getEdit'])->name('qr_creations_edit');
Route::get('admin/qr_creations/upload_gc_list', [AdminQrCreationsController::class, 'uploadGCList'])->name('upload_file');
Route::post('admin/qr_creations/upload_gc_list/excel', [AdminQrCreationsController::class, 'uploadGCListPost'])->name('import_file');
// Email Testing
Route::post('/admin/qr_creations/email_testing', [AdminQrCreationsController::class, 'EmailTesting'])->name('emailtesting');
// Back
Route::get('admin/qr_creations/back_to_email_template/{id}', [AdminQrCreationsController::class, 'backToEmailTemplate'])->name('email_template');
// Export File
Route::get('admin/g_c_lists/upload_gc_list/dowload_template', [AdminQrCreationsController::class, 'exportGCListTemplate'])->name('export_file');
// Get Edit
Route::get('admin/g_c_lists/edit/{id}', [AdminGCListsController::class, 'getEdit'])->name('edit_redeem_code');
// Redeeming Code
Route::post('admin/g_c_list/edit/redeem_code', [AdminGCListsController::class, 'redeemCode'])->name('redeem_code');
Route::post('admin/g_c_list/edit/save_invoice_number', [AdminGCListsController::class, 'inputInvoice'])->name('input_invoice');
// Redemption Period Ended
Route::post('admin/g_c_list/edit/close_transaction', [AdminGCListsController::class, 'closeTransaction'])->name('close_transaction');

Route::get(config('crudbooster.ADMIN_PATH').'email_testings/add-template', [AdminEmailTestingsController::class, 'getAddTemplate'])->name('add-template');
Route::post(config('crudbooster.ADMIN_PATH').'delete-images', [AdminEmailTestingsController::class, 'deleteImages'])->name('delete-images');

Route::post(config('crudbooster.ADMIN_PATH').'/selectedHeader',[AdminEmailTestingsController::class, 'selectedHeader'])->name('selected-header');