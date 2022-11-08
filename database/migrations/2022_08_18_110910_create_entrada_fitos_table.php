<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateEntradaFitosTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('entrada_fitos', function (Blueprint $table) {
            $table->id();
            $table->string('ref_producto');
            $table->string('nombre');
            $table->string('slug');
            $table->string('composicion');
            $table->string('tipo_producto');
            $table->float('unidades');
            $table->string('cantidad');
            $table->string('medidas');
              $table->date('caducidad');

            $table->date('entrada');
            $table->string('imagen');

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
        Schema::dropIfExists('entrada_fitos');
    }
}
