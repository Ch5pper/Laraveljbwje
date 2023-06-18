<?php

namespace Database\Seeders;

use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use App\Models\Recepten;
use App\Models\ingredienten;
use Illuminate\Database\Seeder;
use Faker\Factory as Faker;

class IngredientenSeeder extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run(): void
    {
        $recepten = Recepten::all();
        $faker = Faker::create();
        
        foreach($recepten as $recept){

            $ingredient = [
                'id' => $faker->id(),
                'ingredient' => $faker->ingredient(),
                'hoeveelheid' => $faker->hoeveelheid(),
                'recept_id' => $recept->id
            ];
            ingredienten::created($ingredient);
    }
}
}