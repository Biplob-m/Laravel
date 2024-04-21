<?php

namespace App\Http\Controllers;
use App\Models\Amenities;
use Exception;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;

class AmenitiController extends Controller
{
    public function fetchAll()
    {
        $amenity = Amenities::all();
        return response()->json($amenity);
    }

    public function store (Request $request)
    {
        try {
            $records= DB::table('amenities')->select('id','ameniti_type')->where('ameniti_type','=',"$request->type")->get()->count();
             if( $records > 0)
             {
                return response()->json([
                    "message" => "Already name exist Failed",
                    "status"=>"400"
                    ], 400); 
             }else{
            $amenity = new Amenities;
            $amenity->id = $request->id;
            $amenity->ameniti_type = $request->type;
            $amenity->save();
            return response()->json([
                "message" => "amenity Added.",
                "status"=>"200"
                ], 201);
             }
            
        } catch (Exception $e) {
           // echo "ERROR";
           // report($e);
            return response()->json([
                "message" => "Already id exist Failed",
                "status"=>"400"
                ], 400);
        }
       
    }
}
