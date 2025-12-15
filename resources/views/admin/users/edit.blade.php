@extends('layouts.admin')

@section('content')

    <form action="{{ route('admin.users.update', $user->id) }}" method="POST" enctype="multipart/form-data">
        @csrf
        @method('PUT')
        <div class="card col-lg-12">
            <div class="card-header">
                <h4 style="margin-top: 30px;">Tahrirlash</h4>
            </div>
            <div class="pull-right">
                <a href="{{ route('admin.users.index') }}" style="margin-left: 25px"
                    class="btn btn-outline-primary btn-sm col-lg-2"><i class="fas fa-arrow-left"></i></a>
            </div>
            <div class="card-body">
                <div class="form-group">
                    <label>Ism</label>
                    <input type="text" value="{{ $user->name }}"
                        class="form-control form-control-sm form-control form-control-sm-sm" name="name">
                </div>
                <div class="form-group">
                    <label>E-pochta</label>
                    <input type="email" value="{{ $user->email }}"
                        class="form-control form-control-sm form-control form-control-sm-sm" name="email">
                </div>
                <div class="form-group">
                    <label>Kod</label>
                    <input type="password" class="form-control form-control-sm form-control form-control-sm-sm"
                        name="password">
                </div>
                <div class="form-group">
                    <label>Kodni tasdiqlang</label>
                    {!! Form::password('confirm-password', ['class' => 'form-control form-control-sm']) !!}
                </div>
             <div class="form-group">
                    <label>Rol</label>
                    <select name="roles[]" class="form-control form-control-sm">
                            @foreach ($roles as $role )
                                <option
                                    @foreach($user->roles as $role1)
                                        @if ($role1->id==$role->id) selected
                                        @endif
                                    @endforeach
                                    value="{{$role->id}}"> {{$role->name}}
                                </option>
                            @endforeach
                        </select>
                </div>
               <div class="form__imgUploader">
                    <div class="form__wrapper">
                        <div class="form__image">
                           @if ($user->image == null)
                               <img src="/admin.png" alt="" class="form__img">
                           @else
                               <img src="/storage/{{ $user->image }}" alt="" class="form__img">
                           @endif
                        </div>
                        <div class="formUploader__content">
                            <div class="formUploader__icon"><i class="fas fa-cloud-upload-alt"></i></div>
                            <div class="formUploader__text">Hali hech qanday rasim tanlanmagan !</div>
                        </div>
                        <div class="formUploader__cancel"><i class="fas fa-times"></i></div>
                        <div class="formUploader__fileName"><p>file name</p></div>
                    </div>
                    <input type="file" class="imgUploader" accept=".jpg, .jpeg, .png" name="image" id="customFile" hidden>
                    <button type="button" class="customBtn">Rasim tanlang</button>
                </div>
            </div>
            <div class="card-footer">
                <button type="submit" class="btn btn-outline-primary col-lg-1"><i class="fas fa-edit"></i></button>
            </div>
    </form>
    </div>

    {!! Form::close() !!}
@endsection


               
