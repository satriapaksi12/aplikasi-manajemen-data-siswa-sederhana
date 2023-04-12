<?php

namespace App\Models;

use App\Models\ClassRoom;
use App\Models\Extracurricular;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;
use Illuminate\Database\Eloquent\Factories\HasFactory;

class Student extends Model
{
    use HasFactory,SoftDeletes;

    protected $fillable = [
        'name','gender','nis','class_id','image'  // memberi tau kolom mana aja yang boleh diisi
    ];

    // public $table = 'students';  //merujuk nama tabel di database
    // protected $primaryKey = 'flight_id'; // mengatur primary key di tabel database semisal kita mau milih primary selain id
    // public $incrementing = false;  // mengatur auto increment atau pengisian data otomatis pada primary key
    // protected $keyType = 'string'; // Mengatur bentuk data  dari primary key
    // public $timestamps = false; // untuk mengatur timestamp ,jadi apabila kita input data otomatis data masuk ke created _at dan update_at tetapi apabila 2 kolom itu gaada maka laravel bingung nih data ditaruh mana,maka kita harus menuliskan timestampnya 'false'
    public function class()
    {
            return $this->belongsTo(ClassRoom::class);
    }

    public function extracurriculars()
    {
            return $this->belongsToMany(Extracurricular::class, 'student_extracurricular','student_id','extracurricular_id');
    }
}

//sebenernya ngga perlu ditulis protected $table = 'student' karena nama dari Class adalah student bentuk tunggal dari nama tablenya di database yaitu Students



