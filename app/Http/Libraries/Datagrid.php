<?php namespace App\Http\Libraries;

class Datagrid {

	public function field_name_replacer($input, $replace_field)
	{
		foreach ($replace_field as $field_name) {
			if ($input['dataSearch']) {
				$field = $input['dataSearch']['field'];
                if ($field == $field_name['old_name']) {
                	$input['dataSearch']['field'] = $field_name['new_name'];
                }
            }
		}

		return $input;
	}

	public function get_rows($table, $param)
	{
		$select = $table->select( \DB::raw($param['select']) )
						->skip($param['input']['limit'])
						->take($param['input']['offset']);
						
		if (!empty($param['input']['sort'])) {
			$select = $select->orderBy($param['input']['sort'], $param['input']['order']);
		} else {
			$select = $select->orderBy($this->primaryKey);
		}

		if ($param['input']['dataSearch']) {
			$input = $this->field_name_replacer($param['input'], $param['replace_field']);
			$select = $select->where($input['dataSearch']['field'], 'like', '%' . $input['dataSearch']['value'] . '%');	
		}
						
		return $select->get();
	}

	public function get_total_rows($table, $param)
	{
		$select_total = $table->select( \DB::raw('sql_calc_found_rows ' . $param['select']) );
		
		if ($param['input']['dataSearch']) {
			$input = $this->field_name_replacer($param['input'], $param['replace_field']);
			$select_total = $select_total->where($input['dataSearch']['field'], 'like', '%' . $input['dataSearch']['value'] . '%');
		}

		$select_total = $select_total->get();
		$select_total = \DB::select( \DB::raw("select found_rows() as total;") );

		return $select_total[0]->total;
	}

	public function query($param, $modifier)
	{
		$table = $modifier( \DB::table($param['table']) );
		$select = $this->get_rows($table, $param);
		$select_total = $this->get_total_rows($table, $param);
		
		return ['total' => $select_total, 'rows' => $select];
	}

}