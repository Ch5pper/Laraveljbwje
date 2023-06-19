<?php

namespace App\Http\Controllers;

use App\Models\Recepten;
use Illuminate\Http\Request;

class ReceptenController extends Controller
{
    public function index()
    {
        $recepten = Recepten::all();

        return response()->json($recepten);
    }

    public function store(Request $request)
    {
        // Process and store the new recipe data
    }

    public function show($id)
    {
        $recept = Recepten::findOrFail($id);

        return response()->json($recept);
    }

    public function update(Request $request, $id)
    {
        // Update the recipe data for the given ID
    }

    public function destroy($id)
    {
        // Delete the recipe for the given ID
    }
}
