<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class DropP13OrdinalId extends Migration {

    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up() {
        // Remove the ordinal_id from the project13s table
        // The autoincremented id field will suffice
        Schema::table('project13s', function (Blueprint $table) {
            $table->dropColumn('ordinal_id');
        });

        // Drop the settings table. The next_user_id field will be replaced with the member->id field
        Schema::drop('settings');
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down() {
        Schema::table('project13s', function (Blueprint $table) {
            $table->integer('ordinal_id')->unsigned();
        });

        Schema::create('settings', function (Blueprint $table) {
            $table->integer('next_user_id');
            $table->integer('next_p13_ordinal_id');
            $table->timestamps();
        });
        
        // Initialize settings table
        DB::table('settings')->insert(
                array(
                    'next_user_id' => 1, 
                    'next_p13_ordinal_id' => 1
                )
        );        
    }

}
