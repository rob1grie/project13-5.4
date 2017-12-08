<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class MakeProject13AdminNullable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::table('project13s', function (Blueprint $table) {
            $table->integer('org_admin_id')->nullable()->change();
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::table('project13s', function (Blueprint $table) {
            // TODO This doesn't appear to work, it won't make the field not nullable
            $table->integer('org_admin_id')->nullable('false')->change();
        });
    }
}
