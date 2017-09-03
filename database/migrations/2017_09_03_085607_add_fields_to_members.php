<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class AddFieldsToMembers extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::table('members', function (Blueprint $table) {
			$table->renameColumn('name', 'username');
			
			$table->string('first_name', 32);
			$table->string('last_name', 32);
			$table->string('phone', 16);
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::table('members', function (Blueprint $table) {
			$table->dropColumn('phone');
			$table->dropColumn('last_name');
			$table->dropColumn('first_name');

			$table->renameColumn('username', 'name');
        });
    }
}
