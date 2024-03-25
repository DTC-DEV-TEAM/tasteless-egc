<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class AddTotalRowToQrCreations extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::table('qr_creations', function (Blueprint $table) {
            $table->integer('total_row')->default(0)->nullable()->after('batch_number');
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::table('qr_creations', function (Blueprint $table) {
            $table->dropColumn('total_row');
        });
    }
}
