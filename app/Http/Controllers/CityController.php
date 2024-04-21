<?php

namespace App\Http\Controllers;
use App\Models\City;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;

class CityController extends Controller
{
    public function fetchAll()
    {
        $city= City::all();
        return response()->json($city);
    }

    public function store (Request $request)
    {
        $city = new City;
        $city->id  = $request->id;
        $city->city_name = $request->name;
        $city->save();
        return response()->json([
        "message" => "City Added."
        ], 201);
    }
    public function test(Request $request)
    {
        return response()->json([
            "message" => "dfdfdf"
            ], 201);
    }
}
