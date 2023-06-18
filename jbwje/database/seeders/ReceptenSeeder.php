<?php

namespace Database\Seeders;

use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;
use Illuminate\Database\Facades\DB;
use App\Models\Recepten;
use Faker\Factory as Faker;

class ReceptenSeeder extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run(): void
    {

        $recepten = Recepten::all();
        $faker = Faker::create();
        
        foreach($recepten as $recept){

            

        }
    }
}
