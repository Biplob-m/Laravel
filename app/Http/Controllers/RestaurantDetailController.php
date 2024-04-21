<?php

namespace App\Http\Controllers;
use App\Models\RestaurantDetails;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;

class RestaurantDetailController extends Controller
{
    public function fetchAll()
    {
        $restaurantDetail= RestaurantDetails::all();
        return response()->json($restaurantDetail);
    }

    public function store (Request $request)
    {
        $file = $request->file('file');
        $imageName = $file->getClientOriginalName();
        // $imageName = time().'.'.$file->extension();
        $imagePath = public_path(). '/files';
    
        if($file->move($imagePath, $imageName))
        {
        $restaurantDetail = new RestaurantDetails;
        $restaurantDetail->id = $request->id;
        $restaurantDetail->restaurant_name = $request->name;
        $restaurantDetail->photo =$imageName;
        $restaurantDetail->address = $request->address;
        $restaurantDetail->phNo = $request->phNo;
        $restaurantDetail->ratings = $request->rating;
        $restaurantDetail->sub_category = $request->subCategory;
        $restaurantDetail->city = $request->city;
        $restaurantDetail->ameniti = $request->ameniti;
        $restaurantDetail->save();
        return response()->json([
        "message" => "Restaurant_Details Added."
        ], 201);
        }
    }

    public function fetchAbc (string $id, string $city, string $ameniti)
    {
       $records= DB::table('restaurant_details')
        ->join('sub_categories','sub_categories.id','=','restaurant_details.sub_category')
        ->join('cities','cities.id','=','restaurant_details.city')
        ->join('amenities','amenities.id','=','restaurant_details.ameniti')

        ->select('restaurant_details.*','sub_categories.sub_category_name','cities.city_name','amenities.ameniti_type')

        ->where('sub_categories.id','=',"$id")
        ->where('cities.id','=',"$city")
        ->where('amenities.id','=',"$ameniti")
        ->get();
         return response()->json($records);
    }

    
}
