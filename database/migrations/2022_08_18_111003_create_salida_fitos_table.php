<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateSalidaFitosTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('salida_fitos', function (Blueprint $table) {
            $table->id();
            $table->string('ref_producto');
                       $table->float('unidades');
            $table->float('cantidad');
            $table->string('medidas');
                  $table->date('salida');
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
        Schema::dropIfExists('salida_fitos');
    }
}
