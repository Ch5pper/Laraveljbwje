<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class AddReceptenIdToIngredientenTable extends Migration
{
    /**
     * Run the migrations.
     */
    public function up()
    {
        Schema::table('ingredienten', function (Blueprint $table) {
            $table->foreignId('recepten_id')->constrained('recepten');
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down()
    {
        Schema::table('ingredienten', function (Blueprint $table) {
            $table->dropForeign(['recepten_id']);
            $table->dropColumn('recepten_id');
        });
    }
}