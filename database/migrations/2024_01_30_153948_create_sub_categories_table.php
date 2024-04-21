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
        Schema::create('sub_categories', function (Blueprint $table) {
            $table->id();
            $table->string('sub_category_name');
            $table->foreignId('category')->nullable()->constrained('categories')->cascadeOnUpdate()->nullOnDelete();
            $table->timestamps();
            // $table->foreign('category')
            // ->references('id')
            // ->on('categories')
            // ->onUpdate('cascade')
            // ->onDelete('cascade');
            // $table->integer('category')->unsigned()->nullable();

            
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('sub_categories');
    }
};
