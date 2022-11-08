<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateProductosFitosTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('productos_fitos', function (Blueprint $table) {
            $table->id();
            $table->string('name');
            $table->text('referencia')->unique();
           // $table->unsignedBigInteger('composicion_id')->nullable();
           /* $table->foreign('composicion_id')
            ->references('id')->on('composicion_fitos')
            ->onDelete('set null');*/
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
        Schema::dropIfExists('productos_fitos');
    }
}
