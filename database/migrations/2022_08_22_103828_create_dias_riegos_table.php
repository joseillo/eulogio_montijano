<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateDiasRiegosTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('dias_riegos', function (Blueprint $table) {
            $table->id();
            $table->unsignedBigInteger('lugar_id')->nullable();
            $table->date('dia_inicio');
            $table->date('dia_final');
            $table->float('lectura_inicio');
            $table->float('lectura_final');
            $table->float('consumo');
            $table->timestamps();
            // Relaciones
          /*  $table->foreignId('lugar_id')
            ->references('id')->on('riegos')
            ->onDelete('set null');*/
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('dias_riegos');
    }
}
