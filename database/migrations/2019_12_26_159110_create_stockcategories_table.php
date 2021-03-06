<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateStockcategoriesTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('stockcategories', function (Blueprint $table) {
            $table->increments('idstockcategories');
            $table->string('name');
            $table->string('description')->nullable();
            $table->integer('vendor_id');
            $table->foreign('vendor_id')->references('idvendors')->on('vendors');
            $table->string('icon')->nullable();
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
        Schema::dropIfExists('stockcategories');
    }
}
