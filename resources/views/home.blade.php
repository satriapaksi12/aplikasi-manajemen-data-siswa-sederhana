@extends('layouts.mainlayout')
@section('title', 'Home')

@section('content')


<h2>Selamat datang , {{ Auth::user()->name }} anda login sebagai {{ Auth::user()->role->name }}</h2>
{{-- Contoh perkondisian if --}}
{{-- @if ($role == 'admin')
            <a href="">Ke halaman dashboard admin </a>
        @elseif ($role == 'staff')
            <a href="">Ke halaman dashboard staff</a>
        @else
            <a href="">Halaman Utama</a>
        @endif --}}

{{-- Contoh switch statement --}}
{{-- @switch($role)
            @case($role == 'admin')
                <a href="">Ke halaman dashboard admin </a>
            @break

            @case($role == 'staff')
                <a href="">Ke halaman dashboard staff </a>
            @break

            @default
                <a href="">Halaman Utama</a>
        @endswitch --}}

{{-- Contoh penggunaan loop --}}
{{-- @for ($i = 0; $i < 5; $i++)
            {{ $i }} <br>
        @endfor --}}



@endsection
