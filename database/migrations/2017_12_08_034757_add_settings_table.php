<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;
use Illuminate\Support\Facades\DB;

class AddSettingsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('settings', function (Blueprint $table) {
            $table->integer('next_user_id');
            $table->integer('next_p13_ordinal_id');
            $table->timestamps();
        });
        
        // Initialize settings
        DB::table('settings')->insert(
                array(
                    'next_user_id' => 1, 
                    'next_p13_ordinal_id' => 1
                )
        );
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('settings');
    }
}
