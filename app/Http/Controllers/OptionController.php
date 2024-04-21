<?php

namespace App\Http\Controllers;
use App\Models\Options;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;

class OptionController extends Controller
{
    public function fetchAll()
    {
        $option= Options::all();
        return response()->json($option);
    }

    public function store (Request $request)
    {
        $option = new Options;
        $option->id  = $request->id;
        $option->name = $request->optionName;
        $option->save();
        return response()->json([
        "message" => "Option Added."
        ], 201);
    }

    // public function fetchById (string $id)
    // {
    //    $records= DB::table('options')
    //     ->select('categories.id','sub_categories.sub_category_name')
    //       ->where('categories.id','=',"$id")
    //      ->get();
    //     //->count();
    //     return response()->json($records);;
    // }
}
