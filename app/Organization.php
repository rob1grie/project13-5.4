<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Validation\Rule;
use Validator;

class Organization extends Model
{
    protected $table = 'organizations';
	
	protected $fillable = [
            'name', 'address1', 'address2', 'city', 'state', 'zipcode', 'database_file', 'phone_main', 'phone_alt'];
	
	protected $hidden = [];

	public function users() {
		return $this->hasMany('App\User');
	}
	
	public function project13s() {
		return $this->hasMany('App\Project13');
	}
    
    public static function validate($input) {
        $nameRule = '';
        if (array_key_exists('id', $input)) {
            $nameRule = ['required', Rule::unique('organizations')->ignore($input['id']), 'max:191'];
        } else {
            $nameRule = ['required', Rule::unique('organizations'), 'max:191'];
        }
        
        $rules = array(
            'name' => $nameRule,
            'address1' => 'required|max:128',
            'city' => 'required|max:128',
            'state' => 'required',
            'zipcode' => 'required|min:5|max:32',
            'main_phone' => 'required'
        );
        return Validator::make($input, $rules);

    }
}
