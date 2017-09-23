<?php

namespace App\Http\Requests;

use Illuminate\Foundation\Http\FormRequest;

class StoreOrganization extends FormRequest
{
    /**
     * Determine if the user is authorized to make this request.
     *
     * @return bool
     */
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
            // 'title' => 'required|unique:posts|max:255',
            // 'body' => 'required',
            'name' => 'required|unique:organizations|max:191',
            'address1' => 'required|max:128',
            'city' => 'required|max:128',
            'state' => 'required',
            'zipcode' => 'required|min:5|max:32',
            'main_phone' => 'required'
        ];
    }
}
