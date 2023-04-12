@extends('layouts.mainlayout')
@section('title', 'Detail Teacher')

@section('content')
    <h2>Detail Student</h2>


    <div class="mb-3 row">
        <label for="staticEmail" class="col-sm-2 col-form-label">Nama Guru</label>
        <div class="col-sm-10">
            <input type="text" readonly class="form-control-plaintext" id="staticEmail" value="{{ $teacher->name }}">
        </div>
    </div>
    <div class="mb-3 row">
        <label for="staticEmail" class="col-sm-2 col-form-label">Kelas</label>
        <div class="col-sm-10">
            <input type="text" readonly class="form-control-plaintext" id="staticEmail" value="{{ $teacher->class->name }}">
        </div>
    </div>

    <div class="mb-3 row">
        <label for="staticEmail" class="col-sm-2 col-form-label">Daftar Siswa</label>
        <div class="col-sm-10">
            @foreach ($teacher->class->student as $item)
            {{ $loop->iteration }} {{ $item->name }} <br>
            @endforeach
        </div>
    </div>

@endsection
