@extends('layouts.mainlayout')
@section('title', ' Add New Extracurricular')

@section('content')

    <div class="mt-5 col-8 m-auto">
        <form action="extracurricular" method="post">
            @csrf
            <div class="mb-3 ">
                <label for="name" class="form-label">Nama Ekstrakurikuler</label>
                <input type="text" class="form-control" name="name"id="name" placeholder="" required>
            </div>


            <div class="mb-3 ">
                <button class="btn btn-success" type="submit">Save</button>
            </div>

        </form>
    </div>

@endsection
