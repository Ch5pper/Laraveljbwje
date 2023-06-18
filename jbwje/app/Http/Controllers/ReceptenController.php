<?php

namespace App\Http\Controllers;

use App\Models\Recepten;
use Illuminate\Http\Request;

class ReceptenController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $recepten = Recepten::all();
        return response()->json($recepten);
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        $recept = Recepten::create($request->all());
        return response()->json($recept, 201);
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        $recept = Recepten::find($id);
        if (!$recept) {
            return response()->json(['message' => 'Recept not found'], 404);
        }
        return response()->json($recept);
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {
        $recept = Recepten::find($id);
        if (!$recept) {
            return response()->json(['message' => 'Recept not found'], 404);
        }
        $recept->update($request->all());
        return response()->json($recept);
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        $recept = Recepten::find($id);
        if (!$recept) {
            return response()->json(['message' => 'Recept not found'], 404);
        }
        $recept->delete();
        return response()->json(['message' => 'Recept deleted']);
    }
}
