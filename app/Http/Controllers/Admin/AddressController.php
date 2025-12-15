<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\Address;
use Illuminate\Support\Facades\Storage; // <-- ADDED

class AddressController extends Controller
{


    function __construct()
    {
        $this->middleware('permission:address-list|address-create|address-edit|address-delete', ['only' => ['index', 'store']]);
        $this->middleware('permission:address-create', ['only' => ['create', 'store']]);
        $this->middleware('permission:address-edit', ['only' => ['edit', 'update']]);
        $this->middleware('permission:address-delete', ['only' => ['destroy']]);
    }
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $addresses = Address::all();
        return view('admin.addresses.index', compact('addresses'));
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        return view('admin.addresses.create');
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        $data = $request->all();

        if ($request->file('icon')) {
            // ORIGINAL CODE:
            /*
            $file = $request->file('icon');
            $icon_name = time() . $file->getClientOriginalName();
            $file->move('admin2/addresses/', $icon_name);
            $data['icon'] = $icon_name;
            */
            
            // MODIFIED CODE:
            $path = $request->file('icon')->store('addresses', 'public');
            $data['icon'] = $path;
        }
        
          Address::create($data);

        return redirect()->route('admin.addresses.index')->with('success1', 'Muvaffaqiyatli yozildi');
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        $address = Address::find($id);
        return view('admin.addresses.show', compact('address'));
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        $address = Address::find($id);
        return view('admin.addresses.edit', compact('address'));
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
        $data = $request->all();

        if ($request->file('icon')) {
            // ORIGINAL CODE:
            /*
            $file = $request->file('icon');
            $icon_name = time() . $file->getClientOriginalName();
            $file->move('admin2/addresses/', $icon_name);
            $data['icon'] = $icon_name;
            */

            // MODIFIED CODE:
            $path = $request->file('icon')->store('addresses', 'public');
            $data['icon'] = $path;
        }

        $address = Address::find($id);
        $address->update($data);

        return redirect()->route('admin.addresses.index')->with('success2', 'Muvaffaqiyatli taxrirlandi');
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
        // need to load the address model, delete the file using Storage::delete(), 
        // and then destroy the model record.
        Address::destroy($id);
        return redirect()->route('admin.addresses.index')->with('success3', "Muvaffaqiyatli o'chirildi");
    }
}