<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\Partnericon;

class PartnericonController extends Controller
{
    function __construct()
    {
        $this->middleware('permission:partnericon-list|partnericon-create|partnericon-edit|partnericon-delete', ['only' => ['index','store']]);
        $this->middleware('permission:partnericon-create', ['only' => ['create','store']]);
        $this->middleware('permission:partnericon-edit', ['only' => ['edit','update']]);
        $this->middleware('permission:partnericon-delete', ['only' => ['destroy']]);
    }
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $partnericons=Partnericon::all();
        return view('admin.partnericons.index', compact('partnericons'));
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        return view('admin.partnericons.create');
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
            $file->move('admin2/partnericons/', $icon_name);
            $data['icon']="http://ali98.uz/admin2/partnericons/".$icon_name;
            */

            // MODIFIED CODE:
            $path = $request->file('icon')->store('partnericons', 'public');
            $data['icon'] = $path;
        }
        Partnericon::create($data);

        return redirect()->route('admin.partnericons.index')->with('success1', 'Muvaffaqiyatli yaratildi');

    }



    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
     public function show($id)
    {
        $partnericon=Partnericon::find($id);
        return view('admin.partnericons.show',compact('partnericon'));
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        $partnericon=Partnericon::find($id);
        return view('admin.partnericons.edit',compact('partnericon'));
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
            $file->move('admin2/partnericons/', $icon_name);
            $data['icon']="http://ali98.uz/admin2/partnericons/".$icon_name;
            */

            // MODIFIED CODE:
            $path = $request->file('icon')->store('partnericons', 'public');
            $data['icon'] = $path;
        }
        
        $partnericon=Partnericon::find($id);
        $partnericon->update($data);

        return redirect()->route('admin.partnericons.index')->with('success2', 'Muvaffaqiyatli tahrirlandi');

    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy(Request $request, $id)
    {
        
        Partnericon::destroy($id);
        return redirect()->route('admin.partnericons.index')->with('success3', "Muvaffaqiyatli o'chirildi");
        
        
    }
}