@extends('layouts.mainlayout')
@section('title', 'Extracurricular')

@section('content')
    <center>
        <h3>Extracurricular List</h3>
    </center>
    <div class="my-5">
        <a href="/extracurricular-add" class="btn btn-primary">Add Data</a>
    </div>
    @if (Session::has('status'))
        <div class="alert alert-success" role="alert">
            {{ Session::get('message') }}
        </div>
    @endif

    @if (Session::has('status-edit'))
        <div class="alert alert-warning" role="alert">
            {{ Session::get('message-edit') }}
        </div>
    @endif
    <table class="table">
        <tr>
            <th>No</th>
            <th>Nama Extracurricular</th>
            <th>Action</th>
            {{-- <th>Daftar Siswa</th> --}}

        </tr>
        @foreach ($EkskulList as $data)
            <tr>
                <td>{{ $loop->iteration }}</td>
                <td>{{ $data->name }}</td>
                <td>
                    <a href="extracurricular/{{ $data->id }}" class="btn btn-info">Detail</a>
                    <a href="extracurricular-edit/{{ $data->id }}" class="btn btn-warning">Edit</a>
                    <form action="/extracurricular-destroy/{{ $data->id}}" method="post" class="d-inline">
                        @csrf
                        @method('delete')
                        <button onclick="return confirm('Apakah anda ingin menghapus data ini {{ $data->name }} ')" class="btn btn-danger">Delete</button>
                    </form>
                </td> {{-- <td>
                    @foreach ($data->students as $item)
                    - {{ $item->name }} <br>
                    @endforeach
                </td>
                <td>{{ $data->created_at }}</td>
                <td>{{ $data->updated_at }}</td> --}}
            </tr>
        @endforeach
    </table>

@endsection
