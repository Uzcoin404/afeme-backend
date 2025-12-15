@extends('layouts.admin')

 @section('content')
     <div class="card col-lg-12">
         <div class="card-header">
             <h4 style="margin-top: 30px;">Korish</h4>
         </div>
         <div class="pull-right">
             <a href="{{ route('admin.addresses.index') }}" style="margin-left: 25px"
                 class="btn btn-outline-primary btn-sm col-lg-2"><i class="fas fa-arrow-left"></i></a>
         </div>
         <div class="card-body">
             <br>
             <div class="form-group">
                 <label>
                     <h6>Tel:</h6>
                 </label>
                 {{ $address->tel }}
             </div>
               <div class="form-group">
                 <label>
                     <h6>Pochta:</h6>
                 </label>
                 {{ $address->email }}
             </div>
              <div class="form-group">
                 <label>
                     <h6>Manzil:</h6>
                 </label>
                 {{ $address->location }}
             </div>
              @if ($address->icon == null)
                  
               @else
                   <img src="/storage/{{ $address->icon }}" width="150">
               @endif
         </div>
     </div>
     @endsection