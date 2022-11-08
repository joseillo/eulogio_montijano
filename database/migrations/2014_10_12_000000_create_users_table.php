<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateUsersTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('users', function (Blueprint $table) {
            $table->id();
            $table->string('dni')->unique();
            $table->string('name');
            $table->string('apellidos');
            $table->string('telefono');
            $table->string('email')->unique();
            $table->timestamp('email_verified_at')->nullable();
            $table->string('calle');
            $table->string('numero');
            $table->string('poblacion');
            $table->string('provincia');
            $table->integer('cp');
            $table->string('password');
           // $table->unsignedBigInteger('cualificacion_id')->nullable();
          //  $table->unsignedBigInteger('rol_id')->nullable();
            $table->boolean('activo');
             $table->rememberToken();
            $table->timestamps();
            /*relacion de tablas
            $table->foreignId('cualificacion_id')
            ->references('id')->on('profesions')
            ->onDelete('set null');
            $table->foreignId('rol_id')
            ->references('id')->on('rols')
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
        Schema::dropIfExists('users');
    }
}
