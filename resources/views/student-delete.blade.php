@extends('layouts.mainlayout')
@section('title', ' Delete Student')

@section('content')
    <div class="mt-5">
        <h2>Apakah anda yakin ingin menghapus data dengan nama {{ $student->name }} dengan NIS {{ $student->nis }}</h2>

            <form style="display: inline-block" action="/student-destroy/{{$student->id}}" method="post">
                @csrf
                @method('delete')
                <button type="submit" class="btn btn-danger">Delete</button>
            </form>



            <a href="/students" class="btn btn-primary ">Cancel</a>
        </div>


@endsection
