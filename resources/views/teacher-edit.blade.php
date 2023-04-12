@extends('layouts.mainlayout')
@section('title', ' Edit Teacher')

@section('content')

    <div class="mt-5 col-8 m-auto">
        <form action="/teacher/{{$teacher->id}}" method="post">
            @csrf
            @method('PUT')
            <div class="mb-3 ">
                <label for="name" class="form-label">Nama Guru</label>
                <input type="text" class="form-control" name="name"id="name" placeholder="" value="{{ $teacher->name }}" required>
            </div>


            <div class="mb-3 ">
                <button class="btn btn-success" type="submit">Update</button>
            </div>

        </form>
    </div>

@endsection
