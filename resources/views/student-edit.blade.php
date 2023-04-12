@extends('layouts.mainlayout')
@section('title', ' Edit Student')

@section('content')

    <div class="mt-5 col-8 m-auto">
        <form action="/student/{{ $student->id }}" method="POST">
            @csrf
            @method('PUT')
            <div class="mb-3 ">
                <label for="name" class="form-label">Name</label>
                <input type="text" class="form-control" name="name"id="name" placeholder=""
                    value="{{ $student->name }}" required>
            </div>
            <div class="mb-3 ">
                <label for="gender" class="form-label">Gender</label>
                <select class="form-control" name="gender" id="gender" required>
                    <option value="{{ $student->gender }}">{{ $student->gender }}</option>
                    @if ($student->gender == 'Laki-laki')
                        <option value="Perempuan">Perempuan</option>
                    @else
                        <option value="Laki-laki">Laki-laki</option>
                    @endif
                </select>
            </div>
            <div class="mb-3 ">
                <label for="nis" class="form-label">NIS</label>
                <input type="text" class="form-control" name="nis" id="nis"
                    value="{{ $student->nis }}"placeholder="" required>
            </div>
            <div class="mb-3 ">
                <label for="class" class="form-label">Kelas</label>
                <select class="form-control" name="class_id" id="class" required>
                    <option value="{{ $student->class->id }}">{{ $student->class->name }}</option>
                    @foreach ($class as $item )
                    <option value="{{ $item->id }}">{{ $item->name }}</option>
                    @endforeach
                </select>
            </div>
            <div class="mb3">

                <label for="class" class="form-label">Upload Gambar</label>
                <div class="input-group">
                    <input type="file" class="form-control" id="photo" name="photo" value="{{ $student->image }}" multiple>
                </div>
            </div>
            <div class="mb-3 ">
                <button class="btn btn-success" type="submit">Update</button>
            </div>

        </form>
    </div>

@endsection
