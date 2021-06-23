<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateServicelistTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('servicelist', function (Blueprint $table) {
            $table->increments('id');
            $table->double('cost');
            $table->string('previewImageService');
            $table->integer('statusService_id');
            $table->integer('mechanic_id');
            $table->integer('service_id');
            $table->integer('servicescheduling_id');

            $table->foreign('mechanic_id')->references('id')->on('mechanic');
            $table->foreign('service_id')->references('id')->on('service');
            $table->foreign('servicescheduling_id')->references('id')->on('servicescheduling');
            $table->foreign('statusService_id')->references('id')->on('statusservicescheduling');

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
        Schema::dropIfExists('servicelist');
    }
}