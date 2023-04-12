@extends('layouts.mainlayout')
@section('title', ' Add New Class')

@section('content')

    <div class="mt-5 col-8 m-auto">
        <form action="class" method="post">
            @csrf
            <div class="mb-3 ">
                <label for="name" class="form-label">Nama Kelas</label>
                <input type="text" class="form-control" name="name"id="name" placeholder="" required>
            </div>

            <div class="mb-3 ">
                <label for="class" class="form-label">Nama Guru</label>
                <select class="form-control" name="teacher_id" id="teacher" required>
                    <option value="">Pilih salah satu</option>
                    @foreach ($teacher as $item)
                        <option value="{{ $item->id }}">{{ $item->name }}</option>
                    @endforeach

                </select>
            </div>
            <div class="mb-3 ">
                <button class="btn btn-success" type="submit">Save</button>
            </div>

        </form>
    </div>

@endsection
