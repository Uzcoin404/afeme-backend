<?php

namespace App\Http\Controllers\Api;


use App\Http\Controllers\Controller;
use App\Models\Region;
use App\Models\Category;
use App\Models\Material;
use App\Models\Repair;
use App\Models\Sale;
use App\Models\Product;
use Illuminate\Http\Request;
use App\Models\Client;
use App\Helpers\Traits\ApiResponcer;
use App\Http\Resources\UserResource;
use App\Http\Resources\PostResource;
use Illuminate\Support\Facades\Storage; // Added for correct storage handling

class GetController extends Controller
{
    use ApiResponcer;

    public function region(){
        $data=Region::with('citys')->get();
     
        if(count($data)){
            $massage="Ma'lumot jo'natildi";
            return $this->success($data, $massage, 200);
        }else{
            $massage="Ma'lumot topilmadi";
            return $this->error($massage, 404, null);
        }         
    }
    
    
    public function category(){
        $data=Category::all();
        if(count($data)){
            $massage="Ma'lumot jo'natildi";
            return $this->success($data, $massage, 200);
        }else{
            $massage="Ma'lumot topilmadi";
            return $this->error($massage, 404, null);
        }   
    }
    public function sale(){
        $data=Sale::all();
        if(count($data)){
            $massage="Ma'lumot jo'natildi";
            return $this->success($data, $massage, 200);
        }else{
            $massage="Ma'lumot topilmadi";
            return $this->error($massage, 404, null);
        }   
    }
    public function repair(){
        $data=Repair::all();
        if(count($data)){
            $massage="Ma'lumot jo'natildi";
            return $this->success($data, $massage, 200);
        }else{
            $massage="Ma'lumot topilmadi";
            return $this->error($massage, 404, null);
        }   
    }
    public function materials(){
        $data=Material::all();
        if(count($data)){
            $massage="Ma'lumot jo'natildi";
            return $this->success($data, $massage, 200);
        }else{
            $massage="Ma'lumot topilmadi";
            return $this->error($massage, 404, null);
        }   
    }
    public function popular($id){

        $posts = Product::orderBy('view', 'desc')->where('check','true')->whereNull('solt')->paginate($id);
        $data = PostResource::collection($posts);
        $count=count($data);
        
        if($count){
            $massage= $count."ta ma'lumot topildi";
            return  $data;
        }else{

            $massage= "Ma'lumot topilmadi";
            return $this->error($massage, 404);
        }
    }
    public function reltor(){
        $reltors = Client::where('user_type','bussines')->paginate(10);
        $data = UserResource::collection($reltors);
        if(count($data)){
            $massage="Ma'lumot jo'natildi";
            return $data;
        }else{
            $massage="Ma'lumot topilmadi";
            return $this->error($massage, 404, null);
        }   
    }
    public function service(Request $request){
       
        if($request->key == "Service For C Group"){
            
            if($request->hasFile('file')){ 
                // ORIGINAL CODE:
                /*
                $file=$request->file;
                $url='http://ali98.uz/files/'.time().microtime(true) - LARAVEL_START.'.'.$file->getClientOriginalExtension();
                $file->move('files/',$url);
                
                return $this->success($url);
                */
                
                // MODIFIED CODE to use storage:
                $path = $request->file('file')->store('files', 'public');
                $url = \Illuminate\Support\Facades\Storage::url($path);
                
                return $this->success($url);
            }else{
                $massage="input type = file, name = file. bo'lishi kerak";
                return $this->error($massage, 404, null);
            }
        }else{
            $massage=" Sorry you don't have a key. The Service Is Only For Group C.";
            return $this->error($massage, 404, null);
        }
     
    }
    public function unlink(Request $request){
       
        if($request->key == "Service For C Group"){
            
            if($request->urls){ 
                foreach($request->urls as $url){ // Changed $urls to $request->urls as $urls was undefined
                    $string = \Str::of($url)->remove( "http://ali98.uz/files/");
                    $check = \File::delete('files/'.$string);
                    if(!$check){
                        return "'$url' mavjud emas"; // Changed $urel to $url
                    }
                }
                 return $this->success(true);
            }else{
                $massage="input type = string, name = urls. bo'lishi kerak";
                return $this->error($massage, 404, null);
            }
        }else{
            $massage=" Sorry you don't have a key. The Service Is Only For Group C.";
            return $this->error($massage, 404, null);
        }
     
    }
}