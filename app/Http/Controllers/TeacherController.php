<?php

namespace App\Http\Controllers;

use App\Models\Teacher;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Session;


class TeacherController extends Controller
{
    public function index() // untuk menampilkan semua data
    {

        $teacher = Teacher::all();
        return view('teacher',['TeacherList'=> $teacher]);

    }
    public function show($id)
    {
        $teacher = Teacher::with(['class.student'])->findOrFail($id);
        return view('teacher-detail',['teacher' => $teacher]);
    }
    public function create()
    {

        return view('teacher-add');
    }
    public function store(Request $request) //function untuk menampung data yg di create
    {
       $teacher = Teacher::create($request->all());
        if($teacher) {
            Session::flash('status','success');
            Session::flash('message','Data berhasil ditambahkan');
         }
        return redirect('/teacher');
    }
    public function edit(Request $request, $id)
    {
        $teacher = Teacher::findOrFail($id);
        return view('teacher-edit', ['teacher' => $teacher]);
    }
    public function update(Request $request, $id)
    {
        $teacher = Teacher::findOrFail($id);
        // $student->name = $request->name;
        // $student->gender = $request->gender;
        // $student->nis = $request->nis;
        // $student->class_id = $request->class_id;
        // $student->save();
        $teacher->update($request->all());
        if($teacher) {
            Session::flash('status-edit','success');
            Session::flash('message-edit','Data berhasil diedit');
         }
        return redirect('/teacher');
    }
    public function destroy($id)
    {
        $deletedTeacher = Teacher::findORFail($id);
        $deletedTeacher->delete();

        return redirect('/teacher');
    }

}
