@extends('layouts.mainlayout')
@section('title', ' Add New Student')

@section('content')

    <div class="mt-5 col-8 m-auto">
        @if ($errors->any())
            <div class="alert alert-danger">
                <ul>
                    @foreach ($errors->all() as $error)
                        <li>{{ $error }}</li>
                    @endforeach
                </ul>
            </div>
        @endif
        <form action="student" method="post" enctype="multipart/form-data">
            @csrf
            <div class="mb-3 ">
                <label for="name" class="form-label">Name</label>
                <input type="text" class="form-control" name="name"id="name" placeholder="">
            </div>
            <div class="mb-3 ">
                <label for="gender" class="form-label">Gender</label>
                <select class="form-control" name="gender" id="gender">
                    <option value="">Pilih salah satu</option>
                    <option value="Laki-laki">Laki-laki</option>
                    <option value="Perempuan">Perempuan</option>
                </select>
            </div>
            <div class="mb-3 ">
                <label for="nis" class="form-label">NIS</label>
                <input type="text" class="form-control" name="nis" id="nis" placeholder="">
            </div>
            <div class="mb-3 ">
                <label for="class" class="form-label">Kelas</label>
                <select class="form-control" name="class_id" id="class">
                    <option value="">Pilih salah satu</option>
                    @foreach ($class as $item)
                        <option value="{{ $item->id }}">{{ $item->name }}</option>
                    @endforeach

                </select>
            </div>

            <div class="mb3">

                <label for="class" class="form-label">Upload Gambar</label>
                <div class="input-group">
                    <input type="file" class="form-control" id="photo" name="photo" multiple>
                </div>
            </div>
            <div class="mb-3 mt-3 ">
                <button class="btn btn-success" type="submit">Save</button>
            </div>

        </form>
    </div>

@endsection
