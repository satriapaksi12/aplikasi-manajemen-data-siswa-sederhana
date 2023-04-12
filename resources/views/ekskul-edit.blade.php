@extends('layouts.mainlayout')
@section('title', ' Edit Extracurricular')

@section('content')

    <div class="mt-5 col-8 m-auto">
        <form action="/extracurricular/{{ $ekskul->id }}" method="post">
            @csrf
            @method('PUT')
            <div class="mb-3 ">
                <label for="name" class="form-label">Nama Ekstrakurikuler</label>
                <input type="text" class="form-control" name="name"id="name" placeholder="" value="{{ $ekskul->name }}" required>
            </div>


            <div class="mb-3 ">
                <button class="btn btn-success" type="submit">Update</button>
            </div>

        </form>
    </div>

@endsection
