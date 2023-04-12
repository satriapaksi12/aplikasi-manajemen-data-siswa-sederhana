<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class ClassRoom extends Model
{
    use HasFactory;
    protected $fillable = [
        'name','teacher_id'  // memberi tau kolom mana aja yang boleh diisi
    ];
    protected $table = 'class';

    public function student()
    {
        return $this->hasMany(Student::class , 'class_id' , 'id');
    }
    public function teacher()
    {
        return $this->belongsTo(Teacher::class , 'teacher_id' , 'id');
    }
}


