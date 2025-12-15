@extends('layouts.admin')

@section('content')

    <div class="card col-lg-12">
        <div class="card-header">
            <h4 style="margin-top: 30px;">Korish</h4>
        </div>
        <div class="pull-right">
            <a href="{{ route('admin.users.index') }}" style="margin-left: 25px"
                class="btn btn-outline-primary btn-sm col-lg-2"><i class="fas fa-arrow-left"></i></a>
        </div>
        <div class="card-body">
            <div class="form-group">
                <label>
                    <h6>Ism:</h6>
                </label>
                {{ $user->name }}
            </div>
            <div class="form-group">
                <label>
                    <h6>E-pochta:</h6>
                </label>
                {{ $user->email }}
            </div>
            <div class="form-group">
                <label>
                    <h6>Rol:</h6>
                </label>
                @if (!empty($user->getRoleNames()))
                    @foreach ($user->getRoleNames() as $v)
                        {{ $v }}
                    @endforeach
                @endif
            </div>
            <div class="form-group">
                <label>
                    <h6>Kritilgan Vaqti:</h6>
                </label>
                {{ $user->created_at->format('Y-m-d'); }}
            </div>
            <div class="form-group">
                <label>
                    <h6>Tahrirlangan Vaqti:</h6>
                </label>
                {{ $user->updated_at->format('Y-m-d'); }}
            </div>
            <div class="form-group">
               @if ($user->image == null)
                    <img alt="image" src="/admin.png" width="100px" class="user-img-radious-style">
               @else
                    <img src="/storage/{{ $user->image }}" width="150">
               @endif
            </div>
        </div>

    @endsection
