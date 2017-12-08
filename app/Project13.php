<?php
namespace App;

use Illuminate\Database\Eloquent\Model;

class Project13 extends Model {

    protected $fillable = ['organization_id', 'ordinal_id', 'org_admin_id'];
    protected $hidden = [];

    public function organization() {
        return $this->belongsTo('App\Organization', 'organization_id');
    }

    public function members() {
        return $this->hasMany('App\Member')->orderBy('blue_hat_id')->orderBy('role_id');
    }

    public function getProject13Id() {
        return $this->id;
    }

}
