@extends('layouts.mainlayout')
@section('title', 'Class')

@section('content')
    <center>
        <h3>Class List</h3>
    </center>
    <div class="my-5">
        <a href="/class-add" class="btn btn-primary">Add Data</a>
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
            <th>Nama Kelas</th>
            <th>Action</th>
            {{-- <th>Daftar Siswa</th>
            <th>Wali Kelas</th>
            <th>Created at</th>
            <th>Updated at</th> --}}

        </tr>
        @foreach ($classList as $data)
            <tr>
                <td>{{ $loop->iteration }}</td>
                <td>{{ $data->name }}</td>
                <td>
                    <a href="class/{{ $data->id }}" class="btn btn-info">Detail</a>
                    <a href="class-edit/{{ $data->id }}" class="btn btn-warning">Edit</a>
                    <form action="/class-destroy/{{ $data->id}}" method="post" class="d-inline">
                        @csrf
                        @method('delete')
                        <button onclick="return confirm('Apakah anda ingin menghapus data ini {{ $data->name }} ')" class="btn btn-danger">Delete</button>
                    </form>
                </td> {{-- <td>
                    @foreach ($data->student as $student)
                        - {{ $student->name }} <br>
                    @endforeach
                </td>
                <td>{{ $data->teacher['name'] }}</td>
                <td>{{ $data->created_at }}</td>
                <td>{{ $data->updated_at }}</td> --}}
            </tr>
        @endforeach
    </table>

@endsection
