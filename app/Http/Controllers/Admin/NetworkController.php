<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\Network;
use Illuminate\Support\Facades\Storage; // <-- ADDED

class NetworkController extends Controller
{
    function __construct()
    {
         $this->middleware('permission:network-list|network-create|network-edit|network-delete', ['only' => ['index','store']]);
         $this->middleware('permission:network-create', ['only' => ['create','store']]);
         $this->middleware('permission:network-edit', ['only' => ['edit','update']]);
         $this->middleware('permission:network-delete', ['only' => ['destroy']]);
    }
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $networks=Network::all();
        return view('admin.networks.index', compact('networks'));
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        return view('admin.networks.create');
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
            $file->move('admin2/networks/', $icon_name);
            $data['icon']=$icon_name;
            */
            
            // MODIFIED CODE:
            $path = $request->file('icon')->store('networks', 'public');
            $data['icon'] = $path;
        }
        Network::create($data);

        return redirect()->route('admin.networks.index')->with('success1', 'Muvaffaqiyatli yaratildi');

    }



    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
     public function show($id)
    {
        $network=Network::find($id);
        return view('admin.networks.show',compact('network'));
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        $network=Network::find($id);
        return view('admin.networks.edit',compact('network'));
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
             $file->move('admin2/networks/', $icon_name);
             $data['icon']=$icon_name;
             */
             
             // MODIFIED CODE:
             $path = $request->file('icon')->store('networks', 'public');
             $data['icon'] = $path;
         }
        
        $network=Network::find($id);
        $network->update($data);

        return redirect()->route('admin.networks.index')->with('success2', 'Muvaffaqiyatli tahrirlandi');

    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy(Request $request, $id)
    {
        
        // NOTE: If the original code was expected to delete the icon file, 
        // that logic was missing. To properly delete a stored file, you would 
        // need to load the network model, delete the file using Storage::delete(), 
        // and then destroy the model record.
        Network::destroy($id);
       return redirect()->route('admin.networks.index')->with('success3', "Muvaffaqiyatli o'chirildi");
        
        
    }
}