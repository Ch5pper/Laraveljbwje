<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Recepten extends Model
{
    protected $table = 'recepten';
    protected $fillable = ['name', 'bereidingswijze']; // Define the fillable fields

    public function ingredienten()
    {
        return $this->hasMany(ingredienten::class);
    }
}
