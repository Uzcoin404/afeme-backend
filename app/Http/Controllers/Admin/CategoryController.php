<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\Category;
use App\Models\Product;
use Illuminate\Support\Facades\Storage; // <-- ADDED

class CategoryController extends Controller
{

    function __construct()
    {
         $this->middleware('permission:category-list|category-create|category-edit|category-delete', ['only' => ['index','store']]);
         $this->middleware('permission:category-create', ['only' => ['create','store']]);
         $this->middleware('permission:category-edit', ['only' => ['edit','update']]);
         $this->middleware('permission:category-delete', ['only' => ['destroy']]);
    }
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $categories=Category::all();
        return view('admin.categories.index', compact('categories'));
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        return view('admin.categories.create');
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {

        $data=$request->all();

        if($request->file('icon')){
            // ORIGINAL CODE:
            /*
            $file=$request->file('icon');
            $icon_name=time().$file->getClientOriginalName();
            $file->move('admin2/categories/', $icon_name);
            $data['icon']=$icon_name;
            */
            
            // MODIFIED CODE:
            $path = $request->file('icon')->store('categories', 'public');
            $data['icon'] = $path;
        }
        
       
        // The commented-out Telegram code has been left commented out.
        
            Category::create($data);

        return redirect()->route('admin.categories.index')->with('success1', 'Muvaffaqiyatli yaratildi');

    }



    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
     public function show($id)
    {
        $category=Category::find($id);
        return view('admin.categories.show',compact('category'));
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        $category=Category::find($id);
        return view('admin.categories.edit',compact('category'));
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {
        $data=$request->all();
 
         if($request->file('icon')){
             // ORIGINAL CODE:
             /*
             $file=$request->file('icon');
             $icon_name=time().$file->getClientOriginalName();
             $file->move('admin2/categories/', $icon_name);
             $data['icon']=$icon_name;
             */
             
             // MODIFIED CODE:
             $path = $request->file('icon')->store('categories', 'public');
             $data['icon'] = $path;
         }
        
        $category=Category::find($id);
        $category->update($data);

        return redirect()->route('admin.categories.index')->with('success2', 'Muvaffaqiyatli tahrirlandi');

    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy(Request $request, $id)
    {
        
        $category=Category::find($id);
        $category->products()->update(['htype_id'=>null]);
        $category->delete();
       return redirect()->route('admin.categories.index')->with('success3', "Muvaffaqiyatli o'chirildi");
        
        
    }
}