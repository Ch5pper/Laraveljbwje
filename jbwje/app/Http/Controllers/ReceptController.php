<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\ingredienten;

class ReceptController extends Controller
{
    public function index()
    {
        
        $ingredienten = $this->ingredienten->pluck();
    }
}
