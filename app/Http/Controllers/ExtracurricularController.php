<?php

namespace App\Http\Controllers;

use App\Models\Extracurricular;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Session;


class ExtracurricularController extends Controller
{
    public function index() // untuk menampilkan semua data
    {
        //lazy Load
        // $ekskul = Extracurricular::with('students')->get();
        $ekskul = Extracurricular::get();
        //Cara mendapatkan datanya
        //select * from table class;
        //select * from student where class = 1A
        //select * from student where class = 1B
        //select * from student where class = 1C
        //select * from student where class = 1D
        //Eager Load
        // $class = ClassRoom::with('student')->get();
        //Cara mendapatkan datanya
        //select * from table class;
        //select * from student where class in (1A,1B,1C,1D)
        return view('extracurricular', ['EkskulList' => $ekskul]);
    }
    public function show($id)
    {
        $ekskul = Extracurricular::with(['students'])->findOrFail($id);
        return view('ekskul-detail', ['ekskul' => $ekskul]);
    }
    public function create()
    {

        // $teacher = Teacher::select('id', 'name')->get();
        // return view('class-add', ['teacher' => $teacher]);
        return view('ekskul-add');
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
        $ekskul = Extracurricular::create($request->all());
        if($ekskul) {
            Session::flash('status','success');
            Session::flash('message','Data berhasil ditambahkan');
         }
        return redirect('/extracurricular');
    }
    public function edit(Request $request, $id)
    {
        $ekskul = Extracurricular::findOrFail($id);
        return view('ekskul-edit', ['ekskul' => $ekskul]);
    }
    public function update(Request $request, $id)
    {
        $ekskul = Extracurricular::findOrFail($id);
        // $student->name = $request->name;
        // $student->gender = $request->gender;
        // $student->nis = $request->nis;
        // $student->class_id = $request->class_id;
        // $student->save();
        $ekskul->update($request->all());
        if($ekskul) {
            Session::flash('status-edit','success');
            Session::flash('message-edit','Data berhasil diedit');
         }
        return redirect('/extracurricular');
    }
    public function destroy($id)
    {
        $deleteExtracurricular = Extracurricular::findORFail($id);
        $deleteExtracurricular->delete();

        return redirect('/extracurricular');
    }
}
