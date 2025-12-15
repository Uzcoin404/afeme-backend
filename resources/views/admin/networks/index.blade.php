@extends('layouts.admin')

@section('css')
    <link rel="stylesheet" href="/assets/bundles/datatables/datatables.min.css">
    <link rel="stylesheet" href="/assets/bundles/datatables/DataTables-1.10.16/css/dataTables.bootstrap4.min.css">
@endsection
@section('content')
    <div class="row">
        <div class="col-12">
            <div class="card">
                <div class="card-header">
                    <h4>Ijtimoiy tarmoq</h4>
                </div>
                @if (session('success1'))
                    <center>
                        <div class="alert alert-success alert-dismissible show  fade col-lg-6">
                            <div class="alert-body">
                                <button class="close" data-dismiss="alert">
                                    <span>×</span>
                                </button>
                                {{ session('success1') }} <i class="icon fas fa-check"></i></h5>
                            </div>
                        </div>
                    </center>
                @elseif (session('success2'))
                    <center>
                        <div class="alert alert-info alert-dismissible show fade col-lg-6">
                            <div class="alert-body">
                                <button class="close" data-dismiss="alert">
                                    <span>×</span>
                                </button>
                                {{ session('success2') }} <i class="icon fas fa-check"></i></h5>
                            </div>
                        </div>
                    </center>
                @elseif (session('success3'))
                    <center>
                        <div class="alert alert-danger alert-dismissible show fade col-lg-6">
                            <div class="alert-body">
                                <button class="close" data-dismiss="alert">
                                    <span>×</span>
                                </button>
                                {{ session('success3') }} <i class="icon fas fa-check"></i></h5>
                            </div>
                        </div>
                    </center>
                @endif

                @can('network-create')
                    <a href="{{ route('admin.networks.create') }}" style="margin-left: 25px"
                        class="btn btn-outline-success btn-sm col-lg-2"><i class="fas fa-plus"></i></a>
                @endcan
                <div class="card-body">
                    <div class="table-responsive">
                        <table class="table table-striped" id="table-1">
                            <thead>
                                <tr style="text-align-last: center">
                                    <th style="width: 25px" scope="col">№</th>
                                    <th scope="col">Telegram</th>
                                    <th scope="col">Instagram</th>
                                    <th scope="col">Ikonka</th>
                                    <th scope="col">Kiritilgan Kun</th>
                                    <th scope="col">Tahrirlangan Kun</th>
                                    <th style="width: 50px" scope="col">#</th>
                                </tr>
                            </thead>
                            <tbody>

                                @foreach ($networks as $network)
                                    <tr style="text-align-last: center">
                                        <th>{{ $loop->iteration }}</th>
                                        <th>{{ $network->telegram }}</th>
                                        <th>{{ $network->instagram }}</th>
                                        @if ($network->icon == null)
                                            <td>Ikonka yo'q</td>
                                        @else
                                            <td><img src="/storage/{{ $network->icon }}" width="150"></td>
                                        @endif
                                        <td>{{ $network->created_at->format('Y-m-d'); }}</td>
                                        <td>{{ $network->updated_at->format('Y-m-d'); }}</td>
                                        <td style="width: 50px">
                                            @can('network-edit')
                                                <a style="margin-top: 15px" class="btn btn-info btn btn-block btn-sm"
                                                    href="{{ route('admin.networks.edit', $network->id) }}">
                                                    <i class="far fa-edit text-white"></i></a>
                                            @endcan
                                            @can('network-list')
                                                <a class="btn btn-secondary btn btn-block  btn-sm"
                                                    href="{{ route('admin.networks.show', $network->id) }}">
                                                    <i class="fas fa-eye text-white"></i></a>
                                            @endcan
                                            @can('network-delete')
                                                <form action="{{ route('admin.networks.destroy', $network->id) }}"
                                                    method="POST">
                                                    @csrf
                                                    @method('DELETE')
                                                    <button style="margin-top: 8px;" type="submit" class="btn btn-block btn-danger btn-sm">
                                                        <i class="fas fa-trash-alt"></i></button>
                                            @endcan
                                             <br>
                                        </td>
                                        </form>
                                    </tr>
                                @endforeach
                            </tbody>
                        </table>
                    </div>
                </div>
            </div>
        </div>
    </div>
@endsection

@section('js')
    <script src="/assets/bundles/datatables/datatables.min.js"></script>
    <script src="/assets/bundles/datatables/DataTables-1.10.16/js/dataTables.bootstrap4.min.js"></script>
    <script src="/assets/bundles/jquery-ui/jquery-ui.min.js"></script>
    <script src="/assets/js/page/datatables.js"></script>
@endsection
