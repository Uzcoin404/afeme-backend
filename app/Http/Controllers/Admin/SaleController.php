<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\Sale;
use Illuminate\Support\Facades\Storage; // <-- ADDED

class SaleController extends Controller
{


    function __construct()
    {
         $this->middleware('permission:sale-list|sale-create|sale-edit|sale-delete', ['only' => ['index','store']]);
         $this->middleware('permission:sale-create', ['only' => ['create','store']]);
         $this->middleware('permission:sale-edit', ['only' => ['edit','update']]);
         $this->middleware('permission:sale-delete', ['only' => ['destroy']]);
    }
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $sales=Sale::all();
        return view('admin.sales.index', compact('sales'));
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        return view('admin.sales.create');
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
            $file->move('admin2/sales/', $icon_name);
            $data['icon']=$icon_name;
            */
            
            // MODIFIED CODE:
            $path = $request->file('icon')->store('sales', 'public');
            $data['icon'] = $path;
        }
        Sale::create($data);
        return redirect()->route('admin.sales.index')->with('success1', 'Muvaffaqiyatli yaratildi');
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        $sale=Sale::find($id);
        return view('admin.sales.show',compact('sale'));
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        $sale=Sale::find($id);
        return view('admin.sales.edit',compact('sale'));
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
             $file->move('admin2/sales/', $icon_name);
             $data['icon']=$icon_name;
             */

             // MODIFIED CODE:
             $path = $request->file('icon')->store('sales', 'public');
             $data['icon'] = $path;
         }

        $sale=Sale::find($id);
        $sale->update($data);
        return redirect()->route('admin.sales.index')->with('success2', 'Muvaffaqiyatli tahrirlandi');

    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        // NOTE: If the original code was expected to delete the icon file, 
        // that logic was missing. To properly delete a stored file, you would 
        // need to load the model, delete the file using Storage::delete(), 
        // and then destroy the model record.
        Sale::destroy($id);
        return redirect()->route('admin.sales.index')->with('success3', "Muvaffaqiyatli o'chirildi");
    }
}