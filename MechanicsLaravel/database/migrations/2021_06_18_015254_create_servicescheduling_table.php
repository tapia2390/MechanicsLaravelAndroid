<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateServiceschedulingTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('servicescheduling', function (Blueprint $table) {
            $table->increments('id');
            $table->date('createDateService');
            $table->date('estimatedDateClient');
            $table->integer('deleteCodeService');
            $table->string('mechanicCommentService');
            $table->string('clientCommentService');
            $table->double('mechanicReputationService');
            $table->double('clientReputationService');
            $table->integer('client_id');
            $table->integer('serviceList_id');
            $table->integer('statusService_id');
            $table->integer('payment_id');

            $table->foreign('client_id')->references('id')->on('client');
            $table->foreign('serviceList_id')->references('id')->on('servicelist');
            $table->foreign('statusService_id')->references('id')->on('statusservicescheduling');
            $table->foreign('payment_id')->references('id')->on('payment');
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
        Schema::dropIfExists('servicescheduling');
    }
}