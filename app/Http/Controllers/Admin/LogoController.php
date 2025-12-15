<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\Logo;
class LogoController extends Controller
{
    
    
    function __construct()
    {
        $this->middleware('permission:logo-list|logo-create|logo-edit|logo-delete', ['only' => ['index', 'store']]);
        $this->middleware('permission:logo-create', ['only' => ['create', 'store']]);
        $this->middleware('permission:logo-edit', ['only' => ['edit', 'update']]);
        $this->middleware('permission:logo-delete', ['only' => ['destroy']]);
    } 
    
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $logos=Logo::all();
        
        return view('admin.logos.index', compact('logos'));
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        return view('admin.logos.create');
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
        
        if($request->file('image')){
            // ORIGINAL CODE:
            /*
            $file=$request->file('image');
            $image_name=time().$file->getClientOriginalName();
            $file->move('admin2/logos/', $image_name);
            $data['image']="http://ali98.uz/admin2/logos/".$image_name;
            */

            // MODIFIED CODE:
            $path = $request->file('image')->store('logos', 'public');
            $data['image'] = $path;
        }
        
        Logo::create($data);
        
        return redirect()->route('admin.logos.index')->with('success1' , 'Muvaffaqiyatli yozildi');
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        $logo=Logo::find($id);
        return view('admin.logos.show', compact('logo'));
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        $logo=Logo::find($id);
        return view('admin.logos.edit', compact('logo'));
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
        
        if($request->file('image')){
            // ORIGINAL CODE:
            /*
            $file=$request->file('image');
            $image_name=time().$file->getClientOriginalName();
            $file->move('admin2/logos/', $image_name);
            $data['image']="http://ali98.uz/admin2/logos/".$image_name;
            */

            // MODIFIED CODE:
            $path = $request->file('image')->store('logos', 'public');
            $data['image'] = $path;
        }
        
        $logo=Logo::find($id);
        $logo->update($data);
        
        return redirect()->route('admin.logos.index')->with('success2' , 'Muvaffaqiyatli tahrirlandi');
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        Logo::destroy($id);
        return redirect()->route('admin.logos.index')->with('success3' , "Muvaffaqiyatli o'chirildi");
    }
}