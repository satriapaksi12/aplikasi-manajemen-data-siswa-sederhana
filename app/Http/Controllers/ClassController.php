<?php

namespace App\Http\Controllers;

use App\Models\ClassRoom;
use App\Models\Teacher;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Session;



class ClassController extends Controller
{
    public function index() // untuk menampilkan semua data
    {
        //lazy Load
        // $class = ClassRoom::all();
        //Cara mendapatkan datanya
        //select * from table class;
        //select * from student where class = 1A
        //select * from student where class = 1B
        //select * from student where class = 1C
        //select * from student where class = 1D
        //Eager Load
        $class = ClassRoom::with(['student', 'teacher'])->get();
        //Cara mendapatkan datanya
        //select * from table class;
        //select * from student where class in (1A,1B,1C,1D)
        return view('classroom', ['classList' => $class]);
    }
    public function show($id)
    {
        $class = ClassRoom::with(['student', 'teacher'])->findOrFail($id);
        return view('class-detail', ['class' => $class]);
    }
    public function create()
    {

        $teacher = Teacher::select('id', 'name')->get();
        return view('class-add', ['teacher' => $teacher]);
    }
    public function store(Request $request) //function untuk menampung data yg di create
    {
        //membuat agar bisa menyimpan data baru ke db
        // $student = new Student;
        // $student->name = $request->name;
        // $student->gender = $request->gender;
        // $student->nis = $request->nis;
        // $student->class_id = $request->class_id;
        // $student->save();

        //menyimpan data dengan mass assignment bagian name harus sama kolom2nya
        $class = ClassRoom::create($request->all());
        if($class) {
            Session::flash('status','success');
            Session::flash('message','Data berhasil ditambahkan');
         }
        return redirect('/class');
    }
    public function edit(Request $request, $id)
    {
        $class = ClassRoom::with('teacher')->findOrFail($id);
        $teacher = Teacher::select('id', 'name')->where('id', '!=', $class->teacher_id)->get();
        return view('class-edit', ['class' => $class,'teacher'=>$teacher]);
    }
    public function update(Request $request, $id)
    {
        $class = ClassRoom::findOrFail($id);
        // $student->name = $request->name;
        // $student->gender = $request->gender;
        // $student->nis = $request->nis;
        // $student->class_id = $request->class_id;
        // $student->save();
        $class->update($request->all());
        if($class) {
            Session::flash('status-edit','success');
            Session::flash('message-edit','Data berhasil diedit');
         }
        return redirect('/class');
    }
    public function destroy($id)
    {
        $deletedClass = ClassRoom::findORFail($id);
        $deletedClass->delete();

        return redirect('/class');
    }
}
