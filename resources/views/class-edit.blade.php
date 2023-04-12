@extends('layouts.mainlayout')
@section('title', ' Edit Class')

@section('content')

    <div class="mt-5 col-8 m-auto">
        <form action="/class/{{ $class->id }}" method="post">
            @csrf
            @method('PUT')
            <div class="mb-3 ">
                <label for="name" class="form-label">Nama Kelas</label>
                <input type="text" class="form-control" name="name"id="name" placeholder="" value="{{ $class->name }}" required>
            </div>

            <div class="mb-3 ">
                <label for="class" class="form-label">Nama Guru</label>
                <select class="form-control" name="teacher_id" id="teacher" required>
                    <option value="{{ $class->teacher->id }}">{{ $class->teacher->name }}</option>
                    @foreach ($teacher as $item )
                    <option value="{{ $item->id }}">{{ $item->name }}</option>
                    @endforeach
                </select>
            </div>
            <div class="mb-3 ">
                <button class="btn btn-success" type="submit">Update</button>
            </div>

        </form>
    </div>

@endsection
