<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateTipoRevisonesTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('tipo__revisones', function (Blueprint $table) {
            $table->id();
            $table->boolean('cambio_aceite');
            $table->float('litros_aceite');
            $table->boolean('filtro_aceite');
            $table->boolean('filtro_aire');
            $table->boolean('filtro_gasoil');
            $table->boolean('filtro_particulas');
            $table->boolean('filtro_hidraulico');
            $table->boolean('hidraulico_delantero');
            $table->float('litros_delantero');
            $table->boolean('hidraulico_trasero');
            $table->float('litros_trasertos');
            $table->boolean('caja_cambios');
            $table->float('litros_cambio');
            $table->boolean('mazas');
            $table->float('litros_mazas');
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
        Schema::dropIfExists('tipo__revisones');
    }
}
