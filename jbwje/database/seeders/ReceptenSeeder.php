<?php

namespace Database\Seeders;

use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;
use Illuminate\Database\Facades\DB;
use App\Models\Recepten;
use App\Models\ingredienten;
use Faker\Factory as Faker;

class ReceptenSeeder extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run(): void
    {

        $ingredienten = ingredienten::all();
        $faker = Faker::create();
        $recepten = [];
        
        foreach($ingredienten as $ingredient){
            foreach(range(1,5) as $index){
                $recept = [
                    'id' => $faker->id(),
                    'recept_id' => $ingredient->id
                ];
                $recepten[] =  $recept;
            }

            ingredienten::insert($recepten);
    }
    }
}
