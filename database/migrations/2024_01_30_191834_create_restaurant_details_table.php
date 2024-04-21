<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

return new class extends Migration
{
    /**
     * Run the migrations.
     */
    public function up(): void
    {
        Schema::create('restaurant_details', function (Blueprint $table) {
            $table->id();
            $table->string('restaurant_name');
            $table->string('photo');
            $table->string('address');
            $table->bigInteger('phNo');
            $table->string('ratings');
            $table->foreignId('sub_category')->nullable()->constrained('sub_categories')->cascadeOnUpdate()->nullOnDelete();
            $table->foreignId('city')->nullable()->constrained('cities')->cascadeOnUpdate()->nullOnDelete();
            $table->foreignId('ameniti')->nullable()->constrained('amenities')->cascadeOnUpdate()->nullOnDelete();
            $table->timestamps();
            
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('restaurant_details');
    }
};
