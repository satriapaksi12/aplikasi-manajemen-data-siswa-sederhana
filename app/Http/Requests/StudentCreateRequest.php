<?php

namespace App\Http\Requests;

use Illuminate\Foundation\Http\FormRequest;

class StudentCreateRequest extends FormRequest
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
     * @return array<string, mixed>
     */
    public function rules()
    {
        return [
            'nis' => 'unique:students|max:10|required',
            'name' => 'unique:students|required',
            'gender' => 'required',
            'class_id' => 'required'
        ];
    }
    public function attributes()
    {
        return [

            'class_id' => 'class'
        ];
    }
    public function messages()
    {
        return [

            'nis.required' => 'NIS wajib diisi',
            'nis.unique' => 'NIS sudah digunakan',
            'nis.max' => 'NIS maksimal :max karakter',
            'name.required' => 'Nama wajib diisi',
            'name.unique' => 'Nama sudah digunakan',
            'gender.required' => 'Gender wajib diisi',
            'class_id.required' => 'Kelas wajib diisi'
        ];
    }
}
