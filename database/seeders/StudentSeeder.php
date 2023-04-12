<?php

namespace Database\Seeders;

use Carbon\Carbon;
use App\Models\Student;
use App\Models\ClassRoom;
use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Console\Seeds\WithoutModelEvents;

class StudentSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        // Schema::disableForeignKeyConstraints();
        // Student::truncate();
        // Schema::enableForeignKeyConstraints();

        // $data = [
        //     ['name' => 'satria', 'gender' => 'Laki-laki','nis'=> '0101001','class_id'=> 1],
        //     ['name' => 'Joko', 'gender' => 'Laki-laki','nis'=> '0101002','class_id'=> 2],
        //     ['name' => 'Ana', 'gender' => 'Perempuan','nis'=> '0101003','class_id'=> 3],
        //     ['name' => 'Tantri', 'gender' => 'Perempuan','nis'=> '0101004','class_id'=> 4],
        // ];

        // foreach ($data as $value) {
        //     Student::insert([
        //         'name' => $value ['name'],
        //         'gender' => $value ['gender'],
        //         'nis' => $value ['nis'],
        //         'class_id' => $value ['class_id'],
        //         'created_at' => Carbon::now(),
        //         'updated_at' => Carbon::now()
        //     ]);
        // }
        Student::factory()->count(1000)->create();
    }
}
