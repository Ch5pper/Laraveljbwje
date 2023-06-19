<?php

namespace App\Http\Controllers\API;

use App\Http\Controllers\Controller;
use App\Models\Recepten;
use App\Models\ingredienten;
use Illuminate\Http\Request;

class ReceptController extends Controller
{
    public function index()
    {
        $recepten = Recepten::with('ingredienten')->get();

        return response()->json($recepten);
    }

    public function store(Request $request)
    {
        $recept = Recepten::create($request->all());

        return response()->json($recept, 201);
    }

    public function show($id)
    {
        $recept = Recepten::findOrFail($id);

        return response()->json($recept);
    }

    public function update(Request $request, $id)
    {
        $recept = Recepten::findOrFail($id);
        $recept->update($request->all());

        return response()->json($recept);
    }

    public function destroy($id)
    {
        $recept = Recepten::findOrFail($id);
        $recept->delete();

        return response()->json(null, 204);
    }
}