<?php

namespace App\Http\Controllers;

use App\Http\Controllers\Controller;
use App\Models\Category;
use App\Models\Post;
use Illuminate\Http\Request;
use Illuminate\Support\Str;

class PostController extends Controller
{

    public function home(){
        $result = Post::get();
        $category = Category::get();
        return view("home" ,compact("result","category"));
    }


    public function single_product($id){
        $result = Post::where("id",$id)->first();
         $category = Category::get(); 
        return view("single_product" ,compact("result",'category'));
    }

    public function category_product($id){
          $category = Category::get(); 
        $item = Post::where('category_id', $id)->get();

        return view('category_product', compact('category', 'item'));

    }





/////////////////////////////////////////////////

// USER DASHBORED //



    public function user_dashbored()
    {
        $item = Post::get();
        return view('user_dashbored', ['item' => $item]);
    }

    public function single_post($id)
    {
        $result = Post::with(['category', 'user'])->findOrFail($id);
        return view('single_post', compact('result'));
    }

    public function insert()
    {
        $categories = Category::all();
        return view('insert', compact('categories'));
    }

    public function do_insert(Request $request)
    {
        $title = $request->input('title');
        $content = $request->input('content');
        $category = $request->input('category_id');

        $imageName = null;

        if ($request->hasFile('image')) {
            $imageName = $request->file('image')->getClientOriginalName();
            $request->file('image')->move(public_path('storage/image'), $imageName);
        }

        Post::create([
            'title' => $title,
            'slug' => Str::slug($title),
            'content' => $content,
            'category_id' => $category,
            'user_id' => 1,
            'image' => 'image/' . $imageName,
        ]);

        return redirect('user_dashbored');
    }


    public function edit($id)
    {
        $result = Post::where('id', $id)->first();
        $cat_id = Category::all();
        return view('edit', compact('result', 'cat_id'));
    }


    public function do_edit(Request $request, $id)
    {

        $data = [
            'title' => $request->input('title'),
            'content' => $request->input('content'),
            'category_id' => $request->input('category_id'),
            'slug' => Str::slug($request->input('title')),
        ];


        $imageName = null;

        if ($request->hasFile('image')) {
            $imageName = $request->file('image')->getClientOriginalName();
            $request->image->move(public_path('storage/image'), $imageName);
            $data['image'] = 'image/'.$imageName;
        }

        Post::where('id', $id)->update($data);

        return redirect('user_dashbored');
    }

    public function delete($id)
    {
        Post::where('id', $id)->delete();
        return redirect('user_dashbored');
    }
}
