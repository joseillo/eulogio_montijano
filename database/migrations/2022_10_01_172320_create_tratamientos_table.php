<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateTratamientosTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('tratamientos', function (Blueprint $table) {
            $table->id();
            $table->integer('numero_tratamiento');
            $table->string('referencia');
            $table->text('motivo_del_tratamiento');

            $table->float('cantidad_1');
            $table->float('cantidad_2');
            $table->float('cantidad_3');
            $table->float('cantidad_4');
            $table->float('hectareas');
            $table->text('observaciones');
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
        Schema::dropIfExists('tratamientos');
    }
}
