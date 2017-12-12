<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Role extends Model
{
	public function members() {
		return $this->hasMany('App\Member');
	}
	
	public static function getRoleId($role) {
		$roles = Role::where('display_name', $role)->get();
		$roleId = 0;
		
		foreach($roles as $r) {
			$roleId = $r->id;
		}
		
		return $roleId;
	}

}
