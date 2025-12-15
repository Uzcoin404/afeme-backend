@extends('layouts.admin')

@section('content')
    <form action="{{ route('admin.networks.update', $network->id) }}" method="POST" enctype='multipart/form-data'>
        @csrf
        @method('PUT')
        <div class="card col-lg-12">
            <div class="card-header">
                <h4 style="margin-top: 30px;">Tahrirlash</h4>
            </div>
            <div class="pull-right">
                <a href="{{ route('admin.networks.index') }}" style="margin-left: 25px"
                    class="btn btn-outline-primary btn-sm col-lg-2"><i class="fas fa-arrow-left"></i></a>
            </div>
            <div class="card-body">
                <div class="form-group">
                    <label>Telegram</label>
                    <input type="text" value="{{ $network->telegram }}" class="form-control form-control-sm" name="telegram">
                </div>
                <div class="form-group">
                    <label>Instagram</label>
                    <input type="text" value="{{ $network->instagram }}" class="form-control form-control-sm" name="instagram">
                </div>
               <div class="form__imgUploader">
                    <div class="form__wrapper">
                        <div class="form__image">
                              @if ($network->icon == null)
                                  <img src="" alt="" class="form__img">
                              @else
                                  <img src="/storage/{{ $network->icon }}" alt="" class="form__img">
                              @endif
                        </div>
                        <div class="formUploader__content">
                            <div class="formUploader__icon"><i class="fas fa-cloud-upload-alt"></i></div>
                            <div class="formUploader__text">Hali hech qanday rasim tanlanmagan !</div>
                        </div>
                        <div class="formUploader__cancel"><i class="fas fa-times"></i></div>
                        <div class="formUploader__fileName"><p>file name</p></div>
                    </div>
                    <input type="file" class="imgUploader" accept=".jpg, .jpeg, .png" name="icon" id="customFile" hidden>
                    <button type="button" class="customBtn">Rasim tanlang</button>
                </div>
            </div>
            <div class="card-footer">
                <button style="margin-left: 1px ;" type="submit" class="btn btn-outline-primary col-lg-1"><i
                        class="fas fa-edit"></i></button>
            </div>
    </form>
    </div>
@endsection
