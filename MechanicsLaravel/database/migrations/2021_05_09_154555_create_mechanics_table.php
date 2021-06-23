<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateMechanicsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('mechanics', function (Blueprint $table) {
            $table->increments('id');
            $table->string('image', 120);
            $table->string('name', 60);
            $table->string('lastname', 60);
            $table->integer('document')->unique();
            $table->integer('phone');
            $table->string('email', 80)->unique();
            $table->string('address', 90);
            $table->string('service', 50);
            $table->string('description', 150);
            $table->float('cost', 8, 2);
            $table->float('rating');
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
        Schema::dropIfExists('mechanics');
    }
}