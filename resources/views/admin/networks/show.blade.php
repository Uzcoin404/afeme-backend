@extends('layouts.admin')

 @section('content')
     <div class="card col-lg-12">
         <div class="card-header">
             <h4 style="margin-top: 30px;">Korish</h4>
         </div>
         <div class="pull-right">
             <a href="{{ route('admin.networks.index') }}" style="margin-left: 25px"
                 class="btn btn-outline-primary btn-sm col-lg-2"><i class="fas fa-arrow-left"></i></a>
         </div>
         <div class="card-body">
             <br>
             <div class="form-group">
                 <label>
                     <h6>Telegram:</h6>
                 </label>
                 {{ $network->telegram }}
             </div>
               <div class="form-group">
                 <label>
                     <h6>Instagram:</h6>
                 </label>
                 {{ $network->instagram }}
             </div>
              @if ($network->icon == null)
                  
               @else
                   <img src="/storage/{{ $network->icon }}" width="150">
               @endif
         </div>
     </div>
     @endsection