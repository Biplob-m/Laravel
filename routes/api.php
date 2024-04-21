<?php

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;
use App\Http\Controllers\AmenitiController;
use App\Http\Controllers\CategoryController;
use App\Http\Controllers\CityController;
use App\Http\Controllers\SubCategoryController;
use App\Http\Controllers\RestaurantDetailController;
use App\Http\Controllers\OptionController;
use App\Http\Controllers\UserController;

/*
|--------------------------------------------------------------------------
| API Routes
|--------------------------------------------------------------------------
|
| Here is where you can register API routes for your application. These
| routes are loaded by the RouteServiceProvider and all of them will
| be assigned to the "api" middleware group. Make something great!
|
*/
Route::group(['middleware'=>'api'],function($routes){

    Route::post('register',[UserController::class,'register']);
    Route::post('login',[UserController::class,'login']);
    Route::post('profile',[UserController::class,'profile']);
    Route::post('refresh',[UserController::class,'refresh']);
    Route::post('logout',[UserController::class,'logout']);
});

// Route::middleware('auth:sanctum')->get('/user', function (Request $request) {
//     return $request->user();
// });


Route::get('/amenityList', [AmenitiController::class, 'fetchAll']);
Route::post('/amenityAdd', [AmenitiController::class, 'store']);


Route::get('/categoryList', [CategoryController::class, 'fetchAll']);
Route::get('/categoryList/abc/{id}', [CategoryController::class, 'fetchSubCategory']);
Route::get('/categoryList/{id}', [CategoryController::class, 'getCategoryById']);
Route::post('/categoryAdd', [CategoryController::class, 'store']);
Route::post('/categoryUpdate', [CategoryController::class, 'update']);
Route::delete('/categoryDelete/{id}', [CategoryController::class, 'destroy']);



Route::get('/cityList', [CityController::class, 'fetchAll']);
Route::post('/cityAdd', [CityController::class, 'store']);


Route::get('/subCateList', [SubCategoryController::class, 'fetchAll']);
Route::post('/subCateAdd', [SubCategoryController::class, 'store']);
Route::get('/xyz', [SubCategoryController::class, 'fetchAbc']);
Route::delete('/subCateDelete/{id}', [SubCategoryController::class, 'destroy']);


Route::get('/restaurantList', [RestaurantDetailController::class, 'fetchAll']);
Route::get('/restaurant/{id}/{city}/{ameniti}', [RestaurantDetailController::class, 'fetchAbc']);
Route::post('/restaurantAdd', [RestaurantDetailController::class, 'store']);
Route::post('/update', [RestaurantDetailController::class, 'update']);


Route::get('/optionlist', [OptionController::class, 'fetchAll']);
Route::post('/optionAdd', [OptionController::class, 'store']);
