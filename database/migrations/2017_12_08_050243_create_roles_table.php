<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateRolesTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('roles', function (Blueprint $table) {
            $table->increments('id');
            $table->string('name');
            $table->string('display_name');
            $table->timestamps();
        });
        
        DB::table('roles')->insert([
			['name' => 'none', 'display_name' => '[None]'],
			['name' => 'district_admin', 'display_name' => 'District Administrator'],
			['name' => 'org_admin', 'display_name' => 'Organization Administrator'],
			['name' => 'gold_hat', 'display_name' => 'Gold Hat'],
			['name' => 'white_hat', 'display_name' => 'White Hat'],
			['name' => 'blue_hat', 'display_name' => 'Blue Hat'],
			['name' => 'yellow_hat', 'display_name' => 'Yellow Hat']
		]);        
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('roles');
    }
}
