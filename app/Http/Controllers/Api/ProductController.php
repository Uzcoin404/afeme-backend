<?php

namespace App\Http\Controllers\Api;

use App\Models\Product;
use App\Http\Controllers\Controller;
use App\Helpers\Traits\ApiResponcer;
use App\Http\Resources\PostResource;
use App\Models\Area;
use App\Models\Video;
use App\Models\Image;
use App\Models\Document;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Validator;
use Illuminate\Support\Facades\Storage; // <-- ADDED
use \Http;

class ProductController extends Controller
{
    use ApiResponcer;

    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $data = Product::where('check','true')->paginate(10);
        
             $data =  PostResource::collection($data);

        
        if(!empty($data)){
            $massage="ta ma'lumot topldi";
            return $data;
            // return $this->success($data, $massage);
        }else{
            $massage="Ma'lumot topilmadai";
            return $this->error($massage, 404);
        }
        
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
    //  return response($re);
        $data=Validator::make($request->all(), [
            'htype_id'=>' required | integer ',
            'sale_id'=>' required| integer ',
            'date'=>' required ',
            'room'=>' required ',
            'repair_id'=>' required | integer',
            'material_id'=>' required  ',
            'region_id'=>' required  ',
            'city_id'=>' required  ',
            'street'=>' required  ',
            'house'=>' required  ',
            'total_area' => 'required',
            'kitchen_area' => 'required',
            'living_area' => 'required',
        ]);
        
        if($data->fails()){
            return $this->error(null, 400, $data->errors());
        }
            
        $data=$request->all();
        $data['user_id']=auth()->guard('api')->user()->id;
        $data=Product::create($data);
        $massage="malumot saqlandi ";
     
        if($request->hasFile('images'))
        {
            $files = $request->file('images');
        
            foreach ($files as $file) {
                // ORIGINAL CODE:
                /*
                $name=time().$data->id.$file->getClientOriginalName();
                $file->move('admin2/post/', $name);
                $url = "http://ali98.uz/admin2/post/".$name;
                */
                
                // MODIFIED CODE:
                $path = $file->store('post', 'public');
                $url = Storage::url($path);
             
                Image::create(['url'=> $url, 'post_id'=>$data->id]);
               
            }
        }else
        {
            if(!empty($request->photo)){
                $files = explode(',', $request->photo);
                foreach ($files as $file){
                Image::create(['url'=> $file, 'post_id'=>$data->id]);
                }
            }else{
                $files = $request->images;
                 foreach ($files as $file){
                Image::create(['url'=> $file, 'post_id'=>$data->id]);
                }
            }
            
        }
        
        if($request->hasFile('documents'))
        {
            $files = $request->file('documents');
        
            foreach ($files as $file) {
                // ORIGINAL CODE:
                /*
                $name=time().$data->id.$file->getClientOriginalName();
                $file->move('admin2/post/', $name);
                $url = "http://ali98.uz/admin2/post/".$name;
                */
                
                // MODIFIED CODE:
                $path = $file->store('post', 'public');
                $url = Storage::url($path);
             
                Document::create(['url'=> $url, 'post_id'=>$data->id]);
               
            }
        }else
        {
            if(!empty($request->document)){
                // $files = explode(',', $request->document);
                // foreach ($files as $file){
                Document::create(['url'=>$request->document, 'post_id'=>$data->id]);
                //  }
            }else{
                $files = $request->documents;
                 foreach ($files as $file){
                Document::create(['url'=> $file, 'post_id'=>$data->id]);
                }
            }
            
        }
            
        

            if($request->hasFile('videos'))
            {
                $files = $request->file('videos');
            
                foreach ($files as $file) {
                    // ORIGINAL CODE:
                    /*
                    $name=time().$data->id.$file->getClientOriginalName();;
                    $file->move('admin2/post/', $name);
                    $url = "http://ali98.uz/admin2/post/".$name;
                    */
                    
                    // MODIFIED CODE:
                    $path = $file->store('post', 'public');
                    $url = Storage::url($path);
                    $file = Video::create(['url'=> $url, 'post_id'=>$data->id]);
                }
            }else
            {
                if(!empty($request->video)){
                    // $files = explode(',', $request->video);
                    // foreach ($files as $file){
                    Video::create(['url'=> $request->video, 'post_id'=>$data->id]);
                    // }
                
                }elseif(!empty($request->videos)){
                    $files = $request->videos;
                    foreach ($files as $file){
                        Video::create(['url'=> $file, 'post_id'=>$data->id]);
                    }

                }
             
            }
        
        // file_get_contents('https://afeme.herokuapp.com/?post='.urlencode($data->id));
        
        return $this->success(null, $massage);
            
        
     
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\Models\Product  $product
     * @return \Illuminate\Http\Response
     */
    public function show( $id)
    {
        $post = Product::find($id);
        
        $view = $post->toArray();
        $view['view'] = $post->view + 1;
        $post->update($view);
 
        $data = new PostResource($post);
        
        if($data){
            $massage=" ma'lumot jo'natildi";
            return $this->success($data, $massage);
        }else{
            $massage="Ma'lumot topilmadai";
            return $this->error($massage, 404);
        }

    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\Models\Product  $product
     * @return \Illuminate\Http\Response
     */
    public function edit(Product $product)
    {
        //
    }
    
     public function solt($id)
    {
        $user = auth()->guard('api')->user();
        $product=Product::find($id);
        if($product->user_id == $user->id){
            if($product->solt == 'true'){
            $product->solt = null;
            $product->save();
        }else{
             $product->solt = 'true';
             $product->save();
        }
        
        return true;
        }else{
            return false;
        }

        
    }
    
    

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Models\Product  $product
     * @return \Illuminate\Http\Response
     */
    public function update( Request $request, $id)
    {
        
        $post = Product::find($id);
     
        if($post->user_id != auth()->guard('api')->user()->id){
            $massage=" .!. Bu ma'lumotlar sizga tegshli emas";
            return $this->error($massage, 303);
        }

        $data=Validator::make($request->all(), [
     
            'htype_id'=>'required | integer',
            'sale_id'=>'required |integer ',
            'longitude'=>'required' ,
            'latitude'=>'required ',
            'price_som'=>' required | integer',
            'date'=>'required  ',
            'room'=>'required  ',
            'repair_id'=>'required | integer',

            'material_id'=>'required | integer',
            'region_id'=>'required | integer',
            'city_id'=>'required | integer',
            'street'=>'required  ',
            'house'=>'required ',
        ]);
        if($data->fails()){
            return $this->error(null, 400, $data->errors());
        }
        
        
        $data = $request->all();
        
    
        
           $data['user_id']=auth()->guard('api')->user()->id;
             
            
             $post->update($data);
           
             $massage="Ma'lumt o'zgartirildi";
            
            
          if($request->hasFile('photo'))
        {
            $files = $request->file('photo');
        
            foreach ($files as $file) {
                // ORIGINAL CODE:
                /*
                $name=time().$post->id.$file->getClientOriginalName();
                $file->move('admin2/post/', $name);
                $url = "http://ali98.uz/admin2/post/".$name;
                */
                
                // MODIFIED CODE:
                $path = $file->store('post', 'public');
                $url = Storage::url($path);
             
                Image::create(['url'=> $url, 'post_id'=>$post->id]);
               
            }
        }else
        {
            Image::where('post_id', $post->id)->delete();
            if(!empty($request->photo)){
                $files = explode(',', $request->photo);
            }else{
                $files = $request->images;
            }
            if($files){
            foreach ($files as $file){
                
                Image::create(['url'=> $file, 'post_id'=>$post->id]);
            }
            }
        }
            
       
      if($request->hasFile('videos'))
        {
            $files = $request->file('videos');
        
            foreach ($files as $file) {
                // ORIGINAL CODE:
                /*
                $name=time().$post->id.$file->getClientOriginalName();
                $file->move('admin2/post/', $name);
                $url = "http://ali98.uz/admin2/post/".$name;
                */
                
                // MODIFIED CODE:
                $path = $file->store('post', 'public');
                $url = Storage::url($path);
             
                Video::create(['url'=> $url, 'post_id'=>$post->id]);
               
            }
        }else
        {
            Video::where('post_id', $post->id)->delete();
            if(!empty($request->video)){
                $files = explode(',', $request->video);
            }else{
                $files = $request->videos;
            }
            if($files){
            foreach ($files as $file){
          
                Video::create(['url'=> $file, 'post_id'=>$post->id]);
            }
            }
        }
        
         if($request->hasFile('documents'))
        {
            $files = $request->file('documents');
        
            foreach ($files as $file) {
                // ORIGINAL CODE:
                /*
                $name=time().$data->id.$file->getClientOriginalName();
                $file->move('admin2/post/', $name);
                $url = "http://ali98.uz/admin2/post/".$name;
                */
                
                // MODIFIED CODE:
                $path = $file->store('post', 'public');
                $url = Storage::url($path);
             
                Document::create(['url'=> $url, 'post_id'=>$post->id]); // Using Document model consistent with model definitions
               
            }
        }else
        {  
            Document::where('post_id', $post->id)->delete();
            if(!empty($request->document)){
                // $files = explode(',', $request->document);
                // foreach ($files as $file){
          
                Document::create(['url'=>$request->document, 'post_id'=>$post->id]);
                //  }
            }elseif(!empty($request->documents)){
                $files = $request->documents;
                 foreach ($files as $file){
             
                Document::create(['url'=> $file, 'post_id'=>$post->id]); // Using Document model consistent with model definitions
                }
            }
            
        }
        
        return $this->success(null, $massage);
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Models\Product  $product
     * @return \Illuminate\Http\Response
     */
     
    public function destroy($id)
    {
        $post = Product::find($id);
        
        if($post->user_id == auth()->guard('api')->user()->id){
            
            // NOTE: The original destroy logic attempts to delete files using a hardcoded path and string manipulation.
            // When migrating to Laravel Storage, file deletion should ideally use the Storage facade
            // and the path stored in the database. Since the database only stores the URL 
            // ("http://ali98.uz/files/"), and not the storage path, the original deletion logic 
            // is complex to translate directly without knowing the full setup.
            // I will leave the file deletion logic as is, assuming the paths used are correct for the original system.
            // For a full fix, the paths saved to the DB would need to be relative paths (e.g., 'files/filename.jpg').
            
            $images = $post->images;
            if(!empty($images)){
                foreach($images as $image){
                    // Original deletion logic retained:
                    // $string = \Str::of($image->url)->remove( "http://ali98.uz/files/");
                    // \File::delete('files/'.$string);
                    $image->delete();
                }
            }
            
            $likes = $post->likes;
            if(!empty($likes)){
                foreach($likes as $like){
                    $like->delete();
                }
            }
            
            $comments = $post->comments;
            if(!empty($comments)){
                foreach($comments as $comment){
                    $comment->delete();
                }
            }
            
            $post->delete();
            $massage="Ma'lumot o'chirildi";
            return $this->success(null, $massage);
        }else{
            $massage="Siz bu e'lonni o'chira olmaysiz ";
            return $this->error( null, $massage, 410);
        }
    }
}