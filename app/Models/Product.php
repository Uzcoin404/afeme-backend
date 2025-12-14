<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Product extends Model
{
    use HasFactory;
    protected $fillable=[
        'user_id',
        'check',
        'htype_id',
        'sale_id',
        'longitude',
        'latitude',
        'price_som',
        'date',
        'room',
        'total_area',
        'total_area_type',
        'kitchen_area',
        'living_area',
        'kitchen_area',
        'living_area',
        'total_area',
        'total_area_type',
        'repair_id',
        'clous',
        'description',
        'material_id',
        'region_id',
        'city_id',
        'street',
        'house',
        'floor',
        'flat',
        'ipoteka',
        'trade',
        'view',
        'solt',
    ];
    
    public function city(){
        return $this->belongsTo(City::class, 'city_id');
    }
    public function region(){
        return $this->belongsTo(Region::class, 'region_id');
    }
    public function htype(){
        return $this->belongsTo(Category::class, 'htype_id');
    }
    public function sale(){
        return $this->belongsTo(Sale::class, 'sale_id');
    }
    public function repair(){
        return $this->belongsTo(Repair::class, 'repair_id');
    }
    public function material(){
        return $this->belongsTo(Material::class, 'material_id');
    }
    public function user(){
        return $this->belongsTo(Client::class, 'user_id');
    }
    public function images(){
        return $this->hasMany(Image::class, 'post_id');
    }
    public function videos(){
        return $this->hasMany(Video::class, 'post_id');
    }
    public function retings(){
        return $this->hasMany(Reting::class, 'post_id');
    }
    public function comments(){
        return $this->hasMany(Comment::class, 'post_id');
    }
    public function documents(){
        return $this->hasMany(Document::class, 'post_id');
    }
    public function likes(){
        return $this->hasMany(Like::class, 'post_id');
    }
    public function configuretion($som){
        $json = json_decode(file_get_contents('https://cbu.uz/ru/arkhiv-kursov-valyut/json/'), true);
        foreach($json as $key=>$valeu){
            if( $valeu['Ccy'] == 'USD' ){
                $usd = $valeu['Rate'];
            }
        }
        if(isset($usd)) return $som / $usd;
        else return $som;
    }
    public function like($likes){
          
        $user=auth()->guard('api')->user();
     
        if($user ){
         $like = $likes->where('user_id',$user->id);
        
            if(count($like) > 0){
              return  $a = true;
            }else{
              return   $a = false;
            };
        }else{
           return $a = false;
        }
        
    }
    
    public function reting($retings){
          
       
            foreach($retings as $key=>$item){
                $full []=$item['reting']; 
            }
         if(isset($full)){
         
            $count = count($full);
            $ful = array_sum($full);
            return $reting = $ful / $count;      
         }else{
          
             return $reting = null;
         }
            
        
        
    }
    
    
    
 
}
