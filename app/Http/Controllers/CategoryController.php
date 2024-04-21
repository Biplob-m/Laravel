<?php

namespace App\Http\Controllers;
use App\Models\Category;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\URL;

class CategoryController extends Controller
{
    public function fetchAll()
    {
        $primaryArry=array();
        $finalArray=array();
        $category= Category::all();
        foreach ($category as $obj) {
            $primaryArry["id"] = $obj->id;
            $primaryArry["category_name"] = $obj->category_name;
            $image_path=$obj->photo;
            $image_pathfinal=URL::to('/')."/"."files/".$image_path;
            $primaryArry["photo"] = $image_pathfinal;
            array_push( $finalArray,$primaryArry);
         }
        return response()->json($finalArray);    
    }

    public function store (Request $request)
    {
        if ($request->file('selectedFile')) {
            $uploadedFile = $request->file('selectedFile');
            $imageName =$uploadedFile->getClientOriginalName();
        }
        
        $imagePath = public_path(). '/files';
        if($uploadedFile->move($imagePath, $imageName))
        {        
        $category = new Category;
        //$category->id = '66';
        $category->category_name = $request->catname;
        $category->photo =$imageName;
        $category->save();
        return response()->json([
        "message" => "Category Added.",
       // "filename" => $imageName
        ], 201);
    }
}

    public function fetchSubCategory (string $id)
    {
       $records= DB::table('categories')
        ->join('sub_categories','categories.id','=','sub_categories.category')
        ->select('categories.id','sub_categories.sub_category_name')
          ->where('categories.id','=',"$id")
         ->get();
        //->count();
        return response()->json($records);;
    }

    public function update(Request $request)
    {
        if (Category::where('id', $request->id)->exists()) {
            $category = Category::find($request->id);
            $category->id = is_null($request->id) ? $category->id : $request->id;
            $category->category_name = is_null($request->category_name) ? $category->category_name : $request->category_name;
            $urlPathArray = explode("/",$request->photo);
            if(str_contains($request->photo,"http://"))
                {
                    $array = explode("/",$request->photo);
                    $pos =  count($array) - 1;
                    $photo= $array[$pos];
                    $category->photo =  $photo;
                }else{
                   // $file = $this->createFileObject($request->photo);
                    $file = $request->file('file');
                    $imageName = $file->getClientOriginalName();
                    // $imageName = time().'.'.$file->extension();
                    $imagePath = public_path(). '/files';
                
                    if($file->move($imagePath, $imageName))
                    {
                       // $photo = $imageName
                       $category->photo =  $imageName;
                    }
                    $category->photo =  $imageName;
                }
                DB::table('categories')
                ->where('id', $request->id)
                ->update(['category_name' => $category->category_name,'photo' =>  $category->photo]);
        //$book->save();
                 return response()->json([
                      "message" => "Update cate."
                ], 201);
            }else{
                return response()->json([
                    "message" => "category nei."
                    ], 404);
            }
    
        
        
  //  $category = new Category;
  /*  $category->id = is_null($request->id) ? $category->id : $request->id;
    $category->category_name = is_null($request->category_name) ? $category->category_name : $request->category_name;
    $urlPathArray = explode("/",$request->photo);
    if(str_contains($request->photo,"http://"))
        {
            $array = explode("/",$request->photo);
            $pos =  count($array) - 1;
            $photo= $array[$pos];
            $category->photo =  $request->photo;
        }else{
            $file = $request->file($request->photo);
            $imageName = $file->getClientOriginalName();
            // $imageName = time().'.'.$file->extension();
            $imagePath = public_path(). '/files';
        
            if($file->move($imagePath, $imageName))
            {
               // $photo = $imageName
                $category->photo =  $imageName;
            }
        }
     //   return print_r($category);
   // $category->photo = is_null($request->photo) ? $category->photo : $request->photo;
    $category->save();
    return response()->json([
    "message" => "category Updated."
    ], 404);*/

   
    } 
    public function destroy($id)
    {
    if (Category::where('id', $id)->exists()) {
    $category = Category::find($id);
    $category->delete();
    return response()->json([
    "message" => "category deleted."
    ], 202);
    } else {
    return response()->json([
    "message" => "category not found."
    ], 404);
    }
    }

    public function getCategoryById($id)
{
    $category = Category::find($id);
    return response()->json($category);
}

}

