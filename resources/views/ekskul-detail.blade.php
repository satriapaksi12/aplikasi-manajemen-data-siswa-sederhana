@extends('layouts.mainlayout')
@section('title', 'Detail Extracurricular')

@section('content')
    <h2>Detail Extracurricular</h2>

    <div class="mb-3 row">
        <label for="staticEmail" class="col-sm-2 col-form-label">Nama Extrakurikular</label>
        <div class="col-sm-10">
            <input type="text" readonly class="form-control-plaintext" id="staticEmail" value="{{ $ekskul->name }}">
        </div>
    </div>

    <div class="mb-3 row">
        <label for="staticEmail" class="col-sm-2 col-form-label">Daftar Siswa</label>
        <div class="col-sm-10">
            @foreach ($ekskul->students as $item)
            {{ $loop->iteration }} {{ $item->name }} <br>
            @endforeach
        </div>
    </div>

@endsection
