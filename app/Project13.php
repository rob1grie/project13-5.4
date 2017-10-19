<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Project13 extends Model
{
    protected $fillable = ['organization_id', 'ordinal_id', 'org_admin_id'];
    protected $hidden = [];

    public function organization() {
        return $this->belongsTo('App\Organization', 'organization_id');
    }

    public static function getNextOrdinalCount($orgId) {
        // Get the highest ordinal_count from project13s for this Orgamization and add 1 for next
        $nextOrdinal = Project13::where('organization_id', $orgId)->max('ordinal_count') + 1;

        return $nextOrdinal;
    }
}
