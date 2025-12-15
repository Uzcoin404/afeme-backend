<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\Region;

class RegionController extends Controller
{

    function __construct()
    {
        $this->middleware('permission:region-list|region-create|region-edit|region-delete', ['only' => ['index','store']]);
        $this->middleware('permission:region-create', ['only' => ['create','store']]);
        $this->middleware('permission:region-edit', ['only' => ['edit','update']]);
        $this->middleware('permission:region-delete', ['only' => ['destroy']]);
    }
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $regions=Region::latest()->get();
        return view('admin.regions.index', compact('regions'));
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        return view('admin.regions.create');
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
            $file->move('admin2/regions/', $image_name);
            $data['image']="http://ali98.uz/admin2/regions/".$image_name;
            */

            // MODIFIED CODE:
            $path = $request->file('image')->store('regions', 'public');
            $data['image'] = $path;
        }

        Region::create($data);
        return redirect()->route('admin.regions.index')->with('success1', 'Muvaffaqiyatli yaratildi');
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        $region=Region::find($id);
        return view('admin.regions.show', compact('region'));

    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        $region=Region::find($id);
        return view('admin.regions.edit', compact('region'));
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
            $file->move('admin2/regions/', $image_name);
            $data['image']="http://ali98.uz/admin2/regions/".$image_name;
            */

            // MODIFIED CODE:
            $path = $request->file('image')->store('regions', 'public');
            $data['image'] = $path;
        }
        
        $region=Region::find($id);
        $region->update($data);

        return redirect()->route('admin.regions.index')->with('success2','Muvaffaqiyatli tahrirlandi');
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        Region::destroy($id);

        return redirect()->route('admin.regions.index')->with('success3', "Muvaffaqiyatli o'chirildi");
    }
}