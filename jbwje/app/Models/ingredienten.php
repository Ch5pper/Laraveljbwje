<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class ingredienten extends Model
{
    use HasFactory;

    protected $table = "ingredienten";
    protected $fillable = ['recept_id', 'ingredient', 'hoeveelheid'];

    public function recept()
    {
        return $this->belongsTo(Recepten::class, 'recepten_id');
    }
}
