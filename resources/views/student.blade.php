@extends('layouts.mainlayout')
@section('title', 'Students')

@section('content')
    <center>
        <h3>Student List</h3>
    </center>

    <div class="my-3">
        <form action="" method="get">
            <div class="input-group flex-nowrap">
                <input type="text" class="form-control" name="keyword" placeholder="Cari..." aria-label="Username"
                    aria-describedby="addon-wrapping">
                <button class="input-group-text btn btn-primary" id="addon-wrapping">Search</button>
            </div>
        </form>
    </div>
    <div class="my-5 d-flex justify-content-between">
        <a href="/student-add" class="btn btn-primary">Add Data</a>
        <a href="/student-deleted" class="btn btn-secondary">Data Terhapus</a>
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

    @if (Session::has('status-restore'))
        <div class="alert alert-info" role="alert">
            {{ Session::get('message-restore') }}
        </div>
    @endif
    <table class="table">
        <tr>
            <th>No</th>
            <th>Nama Siswa</th>
            <th>Jenis Kelamin</th>
            <th>NIS</th>
            <th>Class</th>
            <th>Action</th>
            {{-- <th>ID Kelas</th>
            <th>Nama Kelas</th>
            <th>Extracurricular</th>
            <th>Wali Kelas</th>
            <th>Created at</th>
            <th>Updated at</th> --}}
        </tr>
        @foreach ($studentList as $data)
            <tr>
                <td>{{ $loop->iteration }}</td>
                <td>{{ $data->name }}</td>
                <td>{{ $data->gender }}</td>
                <td>{{ $data->nis }}</td>
                <td>{{ $data->class->name }}</td>
                <td>
                    <a href="student/{{ $data->id }}" class="btn btn-info">Detail</a>
                    <a href="student-edit/{{ $data->id }}" class="btn btn-warning">Edit</a>
                    <form action="/student-destroy/{{ $data->id }}" method="post" class="d-inline">
                        @csrf
                        @method('delete')
                        <button
                            onclick="return confirm('Apakah anda ingin menghapus data ini {{ $data->name }} dengan NIS {{ $data->nis }}')"
                            class="btn btn-danger">Delete</button>
                    </form>
                </td>

                {{-- <td>{{ $data->class_id }}</td>
                <td>{{ $data->class['name'] }}</td>
                <td>
                    @foreach ($data->extracurriculars as $item)
                    - {{ $item->name }} <br>
                    @endforeach
                </td>
                <td>{{ $data->class->teacher['name']}}</td>
                <td>{{ $data->created_at }}</td>
                <td>{{ $data->updated_at }}</td> --}}

            </tr>
        @endforeach
    </table>
    <div class="my-5">
        {{ $studentList->withQueryString()->links() }}
    </div>

@endsection
