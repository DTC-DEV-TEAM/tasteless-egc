<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class AddCreatedByToGCLists extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::table('g_c_lists', function (Blueprint $table) {
            $table->integer('created_by')->unsigned()->length(10)->nullable()->after('cashier_date_transact');
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::table('g_c_lists', function (Blueprint $table) {
            $table->dropColumn('created_by');
        });
    }
}
