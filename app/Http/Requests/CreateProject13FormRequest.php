<?php

namespace App\Http\Requests;

use Illuminate\Foundation\Http\FormRequest;
use Illuminate\Validation\Factory;

class CreateProject13FormRequest extends FormRequest
{
	public function __construct(Factory $factory) {
		$name = 'has_members';
		$test = function($_, $value, $_) {
			return count($value) > 0;
		};
		$errorMessage = 'Project 13 requires that Members be selected';
		
		$factory->extend($name, $test, $errorMessage);
	}

	public function authorize()
    {
        return true;
    }

    /**
     * Get the validation rules that apply to the request.
     *
     * @return array
     */
    public function rules()
    {
        return [
            'members' => 'has_members'
        ];
    }
}
