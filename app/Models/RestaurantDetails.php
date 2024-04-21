<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class RestaurantDetails extends Model
{
    protected $table = 'restaurant_details';
    protected $fillable = ['restaurant_name','photo','address','phNo','ratings','sub_category','city','ameniti'];
}
