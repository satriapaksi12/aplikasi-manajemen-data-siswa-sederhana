<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Extracurricular extends Model
{
    use HasFactory;
    protected $fillable = [
        'name'  // memberi tau kolom mana aja yang boleh diisi
    ];
    public function students()
    {
            return $this->belongsToMany(Student::class, 'student_extracurricular','extracurricular_id','student_id');
    }
}
