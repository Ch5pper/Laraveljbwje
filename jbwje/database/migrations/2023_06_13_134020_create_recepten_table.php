<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

return new class extends Migration
{
    /**
     * Run the migrations.
     */
    public function up(): void
    {
        Schema::create('recepten', function (Blueprint $table) {
            $table->id();
            $table->string('name');
            $table->string('categorie');
            $table->longText('bereidingswijze')->nullable();
            $table->string('bereidingstijd')->nullable();
            $table->string('aantalpersonen')->nullable();
            $table->string('rating')->nullable();
            $table->string('Herkomtrecept')->nullable();
            $table->timestamps();
            
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('recepten');
    }
};
