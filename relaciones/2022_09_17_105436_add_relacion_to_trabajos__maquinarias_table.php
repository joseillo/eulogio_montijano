<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class AddRelacionToTrabajosMaquinariasTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::table('trabajos__maquinarias', function (Blueprint $table) {
            $table->unsignedBigInteger('vehiculos_id')->nullable()->after('id');
            $table->foreign('vehiculos_id','fk_vehiculos_trabajos')
            ->references('id')->on('vehiculos')
            ->onDelete('set null');
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::table('trabajos__maquinarias', function (Blueprint $table) {
            $table->dropForeign('fk_vehiculos_trabajos');
             $table->dropColumn('vehiculos_id');

        });
    }
}
