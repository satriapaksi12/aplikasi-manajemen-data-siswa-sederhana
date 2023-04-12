@extends('layouts.mainlayout')
@section('title', 'Detail Class')

@section('content')
    <h2>Detail Class</h2>


    <div class="mb-3 row">
        <label for="staticEmail" class="col-sm-2 col-form-label">Nama Kelas</label>
        <div class="col-sm-10">
            <input type="text" readonly class="form-control-plaintext" id="staticEmail" value="{{ $class->name }}">
        </div>
    </div>
    <div class="mb-3 row">
        <label for="staticEmail" class="col-sm-2 col-form-label">Wali Kelas</label>
        <div class="col-sm-10">
            <input type="text" readonly class="form-control-plaintext" id="staticEmail"
                value="{{ $class->teacher['name'] }}">
        </div>
    </div>
    <div class="mb-3 row">
        <label for="staticEmail" class="col-sm-2 col-form-label">Daftar Siswa</label>
        <div class="col-sm-10">
            @foreach ($class->student as $item)
            {{ $loop->iteration }} {{ $item->name }} <br>
            @endforeach
        </div>
    </div>

@endsection
