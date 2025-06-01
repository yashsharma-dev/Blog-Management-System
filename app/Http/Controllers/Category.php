<?php

namespace App\Http\Controllers;

use App\Http\Controllers\Controller;
use App\Models\Category as ModelsCategory;
use App\Models\Post;
use Illuminate\Http\Request;

class Category extends Controller
{
    public function productsByCategory($id)
    {
        $category = ModelsCategory::findOrFail($id); 
        $item = Post::where('category_id', $id)->get();

        return view('productsByCategory', compact('category', 'item'));
    }
}
