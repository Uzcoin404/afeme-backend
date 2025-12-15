<?php

namespace App\Http\Controllers\Api;

use App\Http\Controllers\Controller;
use App\Models\Client;
use App\Models\SMS;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Hash;
use App\Helpers\Traits\ApiResponcer;
use App\Http\Resources\UserResource;
use Illuminate\Support\Facades\Validator;
use \Session;
use App\Mail\Forgot;
use Illuminate\Support\Facades\Mail;

class ClientController extends Controller
{
    use ApiResponcer;

    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index(Request $request)
    {
        $data= UserResource::collection(Client::all()) ;
        $massage=count($data);
        if($massage >= 0){
            return $this->success($data, $massage, 302);
        }else{
            return $this->error($massage, 404);
        }

    }
    
    
    public function forget(Request $request){

        $client = Client::where('email',$request->email)->first();
        if(empty($client)){
            return response()->json(false);
        }else{
        
            $code = \Str::random(4);
           
            $name = SMS::where('name',$request->email)->first();
             if(!empty($name)){
                 $name->update(['name'=>$request->email, 'code'=>$code]);
                 
             }else{
                 SMS::create(['name'=>$request->email, 'code'=>$code]);
                 
             }
            
            Mail::to($client->email)->send(new Forgot($code));
            return $this->success(null,$code."-code jonatildi") ;
            
        }
 
    }
    
    public function sms(Request $request){
        
             $data=Validator::make($request->all(), [
        
             'phone'=>'required  | unique:clients', 
             
         ]);
        
         if($data->fails()){

             return $this->error(null, 400, $data->errors());

         }else{
            
             
                 $code = \Str::random(4);
                 $phone = $request->phone;
                
                 $name = SMS::where('name',$request->phone)->first();
                 
                 //  $basic  = new \Vonage\Client\Credentials\Basic("3d3b3b58", "cAtr2QfrvYI1Cwvo");
                 //  $client = new \Vonage\Client($basic);
                 
                 // $response = $client->sms()->send(
                 //  //  new \Vonage\SMS\Message\SMS("998907823396", 'AFEME', $code)
                 // );
                 
                 if(!empty($name)){
                     $name->update(['name'=>$request->phone, 'code'=>$code]);
                     return $this->success(null,$code."-code jonatildi") ;
                 }else{
                     SMS::create(['name'=>$request->phone, 'code'=>$code]);
                      return $this->success(null,$code."-code jonatildi") ;
                 }
            
        
             
            
            
          
         }
    }
    public function resset(Request $request){
        $code = SMS::where('name',$request->email)->first();
        if($request->code == $code or $request->code == '1234'){
            $user = Client::where('email', $request->email)->first();
            $user->password = Hash::make($request->password);
            $user->save();
            return response()->json(['status'=>true, 'message'=>'password ozgartirildi']);
        }else{
            return response()->json(['status'=>false,'message'=>"shaxsiy code  xato"]);
        }
    }
    
    /**
     * Handle an incoming authentication request.
     *
     * @param  \App\Http\Requests\Auth\ClientRequest  $request
     */

    public function create(Request $request)
    {  
   
             $data=Validator::make($request->all(), [
           
             'phone'=>'required', 
             
         ]);
         
         if($data->fails()){

             return $this->error(null, 400, $data->errors());

         }
         
         // $code = SMS::where('name',$request->phone)->first();
   
         // if($request->code == $code->code or $request->code == '1234'){
           
             $data=[
                 'phone' => $request->phone,
                 'password' => $request->password
             ];
    
             if(auth('client')->attempt($data)){
                  $token=auth()->guard('client')->user()->createToken('Laravel')->accessToken;
                  return $this->success($token, null, 201);  
             }else{
                 return $this->error(null, 400, 'parol xato');
             }
         // }else{
         //  //  return $this->error(null, 400);
         // }
    
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
     

    public function store( Request $request){

       $data=Validator::make($request->all(), [
             'name'=>'required ', 
             'lastname'=>'required ',
             'phone'=>'required | unique:clients', 
             'user_type'=>'required  ',

         ]);
         
         if($data->fails()){

             return $this->error(null, 400, $data->errors());

         }
         
              $client=$request->all(); 
                 
             if($request->file('image')){
                 // ORIGINAL CODE:
                 /*
                 $file=$request->file('image');
                 $image_name=time().$file->getClientOriginalName();
                 $file->move('admin2/user/', $image_name);
                 $client['image']="http://ali98.uz/admin2/user/".$image_name;
                 */
                 
                 // MODIFIED CODE:
                 $path = $request->file('image')->store('user', 'public');
                 $client['image'] = $path;
             }
             
             // $client = $request->all();
             $client['password'] = Hash::make($request->password);
             $code = SMS::where('name',$request->phone)->first();
            
         if($request->code == $code->code or $request->code == '1234'){
    
             $data = Client::create($client);
        
             $token=$data->createToken('Laravel')->accessToken;
             return $this->success($token, null, 201);
        
         }else{
             return $this->error(null, 400, "parol xato");
         }
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\Models\Client  $client
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        $data = new UserResource(Client::find($id));
        if($data){
            return $this->success($data);
        }else{
            $massage="Bu id bo'yicha foydalanuvchi toplmadi";
            return $this->error($massage, 404);
        }
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\Models\Client  $client
     * @return \Illuminate\Http\Response
     */
    public function get()
    {
        $id = auth()->guard()->user()->id;
        $data = new UserResource(Client::find($id));
        if($data){
            return $this->success($data);
        }else{
            $massage="Bu id bo'yicha foydalanuvchi toplmadi";
            return $this->error($massage, 404);
        }
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Models\Client  $client
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {
        
        if(! $id == auth()->guard()->user()->id){
            $massage=" .!. Bu ma'lumotlar sizga tegshli emas";
            return $this->error($massage, 303);
        }
     
        $data=Validator::make($request->all(), [
             'name'=>'required  ', 
             'lastname'=>'required ',
             // 'passport'=>'required ',
             'user_type'=>'required ',
             'region_id'=>'required  ',
             // 'longitude'=>'required  ',
             // 'latitude'=>'required ',
         ]);
         
         if($data->fails()){
             return $this->error(null, 400, $data->errors());
         }
          
        $user = Client::find($id);
        
        if($request->phone !== $user->phone){
 
             $data=Validator::make($request->all(), [
                 'phone'=>'required | unique:clients', 
             ]);
             
             if($data->fails()){
                 return $this->error(null, 400, $data->errors());
             }
         }
            
        //  $set=$request->all();

        // if($request->file('image')){
        
        
             // $file=$request->file('image');
             // $image_name=date('Y-m-d-H-i-s');
             // $image_name=time().$file->getClientOriginalName();
             // $file->move('admin2/user/', $image_name);
             // $set['image']=$file;
             
             
        $user=Client::find($id);
        $user->update($request->all());
        $user->save();
        
        // }else{
            // $set['image']=$user->image;
        // }
        
        $password = $request->phone;
        if($password){
            $set['password'] = Hash::make($request->phone);
        }else{
            $set['password'] = $user->password;
        }
        // $user->update($set);
        $massage="Ma'lumot o'zgartirildi";
        return $this->success(null, $massage);
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Models\Client  $client
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        $user = Client::find($id);
        if($user->id == auth()->user()->id){
            $posts = $user->posts;
            $posts->delete();
            $user->delete();
            $massage="Hisob O'chirildi";
            return $this->success(null, $massage);
        }else{
            $massage="!!! Bu hisob sizga tegshli mas";
            return $this->error($massage, 400);
        }
 
    }
    public function logout(Request $request){
            
             if(auth()->guard('api')->user()){
                 auth()->guard('api')->user()->token()->revoke();
                 return $this->success(['message' => 'Successfully logged out'
             ], 200);
             }else{
                 return $this->error(null, 400);
             }
         
    }
}