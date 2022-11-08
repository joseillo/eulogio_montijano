<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateProximaRevisionesTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('proxima_revisiones', function (Blueprint $table) {
            $table->id();
            $table->boolean('cambio_aceite');

            $table->boolean('filtro_aceite');
            $table->boolean('filtro_aire');
            $table->boolean('filtro_gasoil');
            $table->boolean('filtro_particulas');
            $table->boolean('filtro_hidraulico');
            $table->boolean('hidraulico_delantero');

            $table->boolean('hidraulico_trasero');

            $table->boolean('caja_cambios');

            $table->boolean('mazas');

           $table->longText('observaciones');

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
        Schema::dropIfExists('proxima_revisiones');
    }
}
