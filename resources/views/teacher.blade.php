@extends('layouts.mainlayout')
@section('title', 'Teacher')

@section('content')
    <center>
        <h3>Teacher List</h3>
    </center>
    <div class="my-5">
        <a href="/teacher-add" class="btn btn-primary">Add Data</a>
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
            <th>Nama Guru</th>
            <th>Action</th>



        </tr>
        @foreach ($TeacherList as $data)
            <tr>
                <td>{{ $loop->iteration }}</td>
                <td>{{ $data->name }}</td>
                <td>
                    <a href="teacher/{{ $data->id }}" class="btn btn-info">Detail</a>
                    <a href="teacher-edit/{{ $data->id }}" class="btn btn-warning">Edit</a>
                    <form action="/teacher-destroy/{{ $data->id}}" method="post" class="d-inline">
                        @csrf
                        @method('delete')
                        <button onclick="return confirm('Apakah anda ingin menghapus data ini {{ $data->name }} ')" class="btn btn-danger">Delete</button>
                    </form>
                </td>
        @endforeach
    </table>

@endsection
