<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class AddProject13IdToMembers extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::table('members', function (Blueprint $table) {
			$table->integer('project13_id')->unsigned()->nullable();
			$table->foreign('project13_id')->references('id')->on('project13s');
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
			$table->dropForeign(['project13_id']);
			$table->dropColumn('projectd13_id');
        });
    }
}
