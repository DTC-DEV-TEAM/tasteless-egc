<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateGCListsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('g_c_lists', function (Blueprint $table) {
            $table->id();
            $table->string('name')->nullable();
            $table->string('phone')->nullable();
            $table->string('email')->nullable();
            $table->string('number_of_gcs')->nullable();
            $table->date('redemption_start')->nullable();
            $table->date('redemption_end')->nullable();
            $table->string('gc_description')->nullable();
            $table->integer('gc_value')->nullable();
            $table->string('id_number')->nullable();
            $table->string('id_type')->nullable();
            $table->string('other_id_type')->nullable();
            $table->string('qr_reference_number')->nullable();
            $table->string('invoice_number')->nullable();
            $table->string('redeem')->nullable();
            $table->string('status')->nullable();
            $table->string('cashier_name')->nullable();
            $table->timestamp('cashier_date_transact')->nullable();
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('g_c_lists');
    }
}
