@extends('layouts.mainlayout')
@section('title', 'Deleted Students')

@section('content')
    <center>
        <h3>Student List Deleted</h3>
    </center>
    <div class="my-5 d-flex justify-content-between">
        <a href="/students" class="btn btn-primary">List Student</a>
    </div>

    <table class="table">
        <tr>
            <th>No</th>
            <th>Nama Siswa</th>
            <th>Jenis Kelamin</th>
            <th>NIS</th>
            <th>Action</th>
            {{-- <th>ID Kelas</th>
            <th>Nama Kelas</th>
            <th>Extracurricular</th>
            <th>Wali Kelas</th>
            <th>Created at</th>
            <th>Updated at</th> --}}
        </tr>
        @foreach ($student as $data)
            <tr>
                <td>{{ $loop->iteration }}</td>
                <td>{{ $data->name }}</td>
                <td>{{ $data->gender }}</td>
                <td>{{ $data->nis }}</td>
                <td>
                    <a href="/student/{{ $data->id }}/restore" class="btn btn-warning">Restore</a>
                    {{-- <a href="student-edit/{{ $data->id }}" class="btn btn-warning">Edit</a>
                    <form action="/student-destroy/{{ $data->id}}" method="post" class="d-inline">
                        @csrf
                        @method('delete')
                        <button onclick="return confirm('Apakah anda ingin menghapus data ini {{ $data->name }} dengan NIS {{ $data->nis }}')" class="btn btn-danger">Delete</button>
                    </form> --}}
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

@endsection
