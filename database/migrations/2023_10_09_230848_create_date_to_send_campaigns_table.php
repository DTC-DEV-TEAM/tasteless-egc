<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateDateToSendCampaignsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('date_to_send_campaigns', function (Blueprint $table) {
            $table->id();
            $table->string('campaign_id')->nullable();
            $table->string('date_to_send')->nullable();
            $table->enum('status', ['ACTIVE', 'INACTIVE'])->default('ACTIVE')->nullable();
            $table->integer('created_by')->unsigned()->length(10)->nullable();
            $table->integer('updated_by')->unsigned()->length(10)->nullable();
            $table->timestamps();
            $table->softDeletes();
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('date_to_send_campaigns');
    }
}
