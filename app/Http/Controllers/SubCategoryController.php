<?php

namespace App\Http\Controllers;
use App\Models\SubCategory;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;

class SubCategoryController extends Controller
{
    public function fetchAll()
    {
        $subCategory= SubCategory::all();
        return response()->json($subCategory);
    }

    public function store (Request $request)
    {
        $subCategory = new SubCategory;
        $subCategory->id  = $request->id;
        $subCategory->sub_category_name = $request->subCateName;
        $subCategory->category = $request->category;
        $subCategory->save();
        return response()->json([
        "message" => "Sub_Category Added."
        ], 201);
    }

    public function fetchAbc ()
    {
       $records= DB::table('sub_categories')
        ->join('categories','categories.id','=','sub_categories.category')

        ->select('sub_categories.sub_category_name','sub_categories.id','categories.category_name')

        // ->where('sub_categories.id','=',"$id")
        // ->where('cities.id','=',"$city")
        // ->where('amenities.id','=',"$ameniti")
        ->get();
         return response()->json($records);
    }

    public function destroy($id)
    {
    if (SubCategory::where('id', $id)->exists()) {
    $subCategory =  SubCategory::find($id);
    $subCategory->delete();
    return response()->json([
    "message" => "Subcategory deleted."
    ], 202);
    } else {
    return response()->json([
    "message" => "Subcategory not found."
    ], 404);
    }
    }

}
