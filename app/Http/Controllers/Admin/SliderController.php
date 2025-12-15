<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\Slider;

class SliderController extends Controller
{
    
    function __construct()
    {
        $this->middleware('permission:slider-list|slider-create|slider-edit|slider-delete', ['only' => ['index','store']]);
        $this->middleware('permission:slider-create', ['only' => ['create','store']]);
        $this->middleware('permission:slider-edit', ['only' => ['edit','update']]);
        $this->middleware('permission:slider-delete', ['only' => ['destroy']]);
    }
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $sliders = Slider::latest()->get();

        return view('admin.sliders.index', compact('sliders'));
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        return view('admin.sliders.create');
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

        if ($request->file('image')) {
            // ORIGINAL CODE:
            /*
            $file = $request->file('image');
            $image_name = time() . $file->getClientOriginalName();
            $file->move('admin2/sliders/', $image_name);
            $data['image'] ="http://ali98.uz/admin2/sliders/".$image_name;
            */

            // MODIFIED CODE:
            $path = $request->file('image')->store('sliders', 'public');
            $data['image'] = $path;
        }

        Slider::create($data);
        return redirect()->route('admin.sliders.index')->with('success1', 'Muvaffaqiyatli kritildi');
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        $slider = Slider::find($id);
        return view('admin.sliders.show', compact('slider'));
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        $slider = Slider::find($id);
        return view('admin.sliders.edit', compact('slider'));
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

        if ($request->file('image')) {
            // ORIGINAL CODE:
            /*
            $file = $request->file('image');
            $image_name = time() . $file->getClientOriginalName();
            $file->move('admin2/sliders/', $image_name);
            $data['image'] ="http://ali98.uz/admin2/sliders/".$image_name;
            */

            // MODIFIED CODE:
            $path = $request->file('image')->store('sliders', 'public');
            $data['image'] = $path;
        }

        $slider = Slider::find($id);
        $slider->update($data);

        return redirect()->route('admin.sliders.index')->with('success2', 'Muvaffaqiyatli tahrirlandi');
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        Slider::destroy($id);
        return redirect()->route('admin.sliders.index')->with('success3', "Muvaffaqiyatli o'chirildi");
    }
}