@extends('layouts.mainlayout')
@section('title', 'Detail Student')

@section('content')
    <h2>Detail Student</h2>

    <div class="my-3 d-flex justify-content-center">
        @if ($student->image != '')
            <img src="{{ asset('storage/photo/' . $student->image) }}" width="200 px" alt="">
        @else
        <img src="{{ asset('img/user.png')}}" width="200 px" alt="">
        @endif

    </div>


    <div class="mb-3 row">
        <label for="staticEmail" class="col-sm-2 col-form-label">NIS</label>
        <div class="col-sm-10">
            <input type="text" readonly class="form-control-plaintext" id="staticEmail" value="{{ $student->nis }}">
        </div>
    </div>
    <div class="mb-3 row">
        <label for="staticEmail" class="col-sm-2 col-form-label">Nama Siswa</label>
        <div class="col-sm-10">
            <input type="text" readonly class="form-control-plaintext" id="staticEmail" value="{{ $student->name }}">
        </div>
    </div>
    <div class="mb-3 row">
        <label for="staticEmail" class="col-sm-2 col-form-label">Jenis Kelamin</label>
        <div class="col-sm-10">
            <input type="text" readonly class="form-control-plaintext" id="staticEmail" value="{{ $student->gender }}">
        </div>
    </div>
    <div class="mb-3 row">
        <label for="staticEmail" class="col-sm-2 col-form-label">Nama Kelas</label>
        <div class="col-sm-10">
            <input type="text" readonly class="form-control-plaintext" id="staticEmail"
                value="{{ $student->class['name'] }}">
        </div>
    </div>
    <div class="mb-3 row">
        <label for="staticEmail" class="col-sm-2 col-form-label">Wali Kelas</label>
        <div class="col-sm-10">
            <input type="text" readonly class="form-control-plaintext" id="staticEmail"
                value="{{ $student->class->teacher['name'] }}">
        </div>
    </div>

    <div class="mb-3 row">
        <label for="staticEmail" class="col-sm-2 col-form-label">Extracurricular</label>
        <div class="col-sm-10">
            @foreach ($student->extracurriculars as $item)
                {{ $loop->iteration }} {{ $item->name }} <br>
            @endforeach
        </div>
    </div>

@endsection
