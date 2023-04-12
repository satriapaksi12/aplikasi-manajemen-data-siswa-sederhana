<?php

namespace Database\Seeders;

// use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;
use Database\Seeders\RoleSeeder;
use Database\Seeders\ClassSeeder;
use Database\Seeders\StudentSeeder;

class DatabaseSeeder extends Seeder
{
    /**
     * Seed the application's database.
     *
     * @return void
     */
    public function run()
    {
        $this->call([
            ClassSeeder::class, //parent tabel harus di atas ,disini karena student itu  me refrensi kolom class_id yang ada di tabel class
            StudentSeeder::class,
            RoleSeeder::class,
        ]);
    }
}
