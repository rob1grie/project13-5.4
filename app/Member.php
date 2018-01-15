<?php

namespace App;

use App\Http\Libraries\Datagrid;
use DB, Illuminate\Database\Eloquent\Model;

use Illuminate\Notifications\Notifiable;

class Member extends Model
{
    use Notifiable;

    /**
     * The attributes that are mass assignable.
     *
     * @var array
     */
    protected $fillable = [
        'username', 'email', 'password', 'first_name', 'last_name', 'organization_id', 'project13_id',
    ];

    /**
     * The attributes that should be hidden for arrays.
     *
     * @var array
     */
    protected $hidden = [
        'password', 'remember_token',
    ];
	
	public function organization() {
		return $this->belongsTo('App\Organization');
	}
	
    public function getJson($input)
    {
    	$table 	= 'members as m';
    	$select = 'm.*';

    	$replace_field 	= [
    	    ['old_name' => 'first_name', 'new_name' => 'a.first_name'],
    	    ['old_name' => 'last_name', 'new_name' => 'a.last_name'],
    	    ['old_name' => 'username', 'new_name' => 'a.username'],
    	    ['old_name' => 'email', 'new_name' => 'a.email']
    	];

    	$param = [
    	    'input' 		=> $input,
    	    'select' 		=> $select,
    	    'table' 		=> $table,
    	    'replace_field' => $replace_field
    	];

    	$datagrid = new Datagrid;
    	$data = $datagrid->query($param, function($data) use ($input) {
    		if (!empty($input['start_date'])) {
    			$data->where('created_at', '>=', date_format(date_create($input['start_date']), "Y-m-d"));
    		}

    		if (!empty($input['until_date'])) {
    			$data->where('created_at', '<=', date_format(date_create($input['until_date']), "Y-m-d"));
    		}

    		return $data;
    	});

    	return $data;
    }

}
