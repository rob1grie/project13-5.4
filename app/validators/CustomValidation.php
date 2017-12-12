<?php
namespace App\Validators;

class CustomValidation {

	// Validates that $value has a count greater than 0
	// Will be used to validate that the $members array from create_p13 is not empty
	public function has_members($field, $value, $params) {
		return count($value) > 0;
	}

}
