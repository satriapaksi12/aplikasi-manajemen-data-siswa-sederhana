<?php

namespace App\Http\Controllers;

use App\Models\Student;
use App\Models\ClassRoom;
use Illuminate\Http\Request;
use App\Models\Extracurricular;
use Illuminate\Support\Facades\DB;
use App\Http\Controllers\Controller;

use Illuminate\Support\Facades\Session;
use App\Http\Requests\StudentCreateRequest;
use function PHPUnit\Framework\returnValue;

class StudentController extends Controller
{
    public function index(Request $request) // untuk menampilkan semua data
    {
        // var_dump('test'); // untuk melakukan testing apakah sudah berjalan apa belum

        // ELOQUENT ORM

        // contoh Eloquent ORM - mendapatkan data

        // $student = Student::all(); // $student adalah variabel untuk nampung data dari model student,sedangkan student::all() adalah bentuk ORM  dari model


        // $student = Student::with(['class.teacher','extracurriculars'])->get(); // cara mengambil data class di tabel class atau join tabel ,di dalam kurung diisi nama function relasinya
        $keyword = $request->keyword;
        $student = Student::with('class')->where('name', 'LIKE', '%' . $keyword . '%')->orWhere('gender', $keyword)->orWhere('nis', 'LIKE', '%' . $keyword . '%')->orWhereHas('class', function ($query) use ($keyword) {
            $query->where('name', 'LIKE', '%' . $keyword . '%');
        })->Paginate(30);
        return view('student', ['studentList' => $student]);

        // contoh Eloquent ORM - menambah data
        // Student::create([
        //     'name' => 'Sari',
        //     'gender' => 'Perempuan',
        //     'nis' => '0111111',
        //     'class_id' => 2
        // ]);

        // contoh Eloquent ORM - update data
        // Student::find(49)->update([
        //     'name' => 'PAKSI',
        //     'class_id' => 3
        // ]);

        // contoh Eloquent ORM - delete data
        // Student::find(28)->delete();


        // QUERY BUILDER

        // Contoh query builder - mendapatkan data
        // $student = DB::table('students')->get(); //untuk mengambil data dari database

        // Contoh query builder - menambah data
        // DB::table('students')->insert([
        //     'name' => 'SBP',
        //     'gender' => 'Laki-laki',
        //     'nis' => '0101009',
        //     'class_id' => 2
        // ]);

        // Contoh query builder - update  data
        // DB::table('students')->where('id',50)->update([
        //     'name' => 'Cantik',
        //     'class_id' => 3
        // ]);

        // Contoh query builder - delete data
        //   DB::table('students')->where('id',27)->delete();

        // dd($student);




        //PEMBUKTIAN COLLECTION
        $nilai = [9, 8, 7, 6, 4, 8, 9, 1, 10, 3, 9, 7, 1, 5, 3, 9];




        //Hitung rata-rata php biasa
        // $countNilai = count($nilai); //untuk menghitung ada berapa jumlah nilainya
        // $totalNilai = array_sum($nilai); //menghitung jumlah total nilai
        // $nilaiRataRata = $totalNilai/$countNilai;


        //Hitung rata-rata collection
        //  $nilaiRataRata = collect($nilai)->avg();  //menghitung rata2 dengan collection
        // dd($nilaiRataRata);

        //MACAM-MACAM METHOD COLLECTION
        //CONTAINS= mencari /mengecek apakah ada nilai tertentu di suatu array
        // $aaa = collect($nilai)->contains(10); //mencari nilai 10
        // $aaa = collect($nilai)->contains(function($value) {
        //   return $value < 6;
        // });

        // dd($aaa);
        // DIFF = membandingkan antara 2 array apakah suatu nilai ada di array yang lain yg dibandingkan
        // $restoranA= ["burger","siomay","pizza","spaghetti","makaroni","martabak","sayur bayam"];
        // $restoranB= ["burger","cilok","pizza","sayur asem","bakso","nasi goreng","sayur bayam"];

        // $menurestoA = collect($restoranA)->diff($restoranB);

        // dd($menurestoA);

        //FILTER = method untuk melakukanfilter terhadap suatu nilai
        // $aaa = collect($nilai)->filter(function($value){
        //     return $value > 7 ;
        // })->all();

        // dd($aaa);

        //PLUCK = method untuk mendapatkan salah satu item dari data
        // $biodata = [
        //     ['nama' => 'Satria','umur' => '17'],
        //     ['nama' => 'paksi','umur' => '18'],
        //     ['nama' => 'buana','umur' => '19'],
        //     ['nama' => 'sbp','umur' => '20'],
        //     ['nama' => 'satriapaksi','umur' => '21'],
        // ];

        // $aaa = collect($biodata)->pluck('umur')->all();
        // dd($aaa);

        //MAP = method yang digunakan perulangan atau looping yang hasilnya bisa kita apain aja dengan bebas
        // $nilaiKaliDua = [];
        // foreach ($nilai as $value) {
        //     array_push($nilaiKaliDua,$value * 2);
        // }
        // dd($nilaiKaliDua);
        // $aaa =collect($nilai)->map(function($value){
        //     return $value * 2 ;
        // })->all();
        // dd($aaa);
    }

    public function show($id)
    {
        $student = Student::with(['class.teacher', 'extracurriculars'])->findOrFail($id);
        return view('student-detail', ['student' => $student]);
    }
    public function create()
    {
        $class = ClassRoom::select('id', 'name')->get();
        $ekskul = Extracurricular::select('id', 'name')->get();
        return view('student-add', ['class' => $class, 'ekskul' => $ekskul]);
    }
    public function store(StudentCreateRequest $request) //function untuk menampung data yg di create
    {
        // dd($request->photo);
        //membuat agar bisa menyimpan data baru ke db
        // $student = new Student;
        // $student->name = $request->name;
        // $student->gender = $request->gender;
        // $student->nis = $request->nis;
        // $student->class_id = $request->class_id;
        // $student->save();
        // $validated = $request->validate([
        //     'nis' => 'unique:students|max:10|required',
        //     'name' => 'unique:students|required',
        //     'gender' => 'required',
        //     'class_id' => 'required'

        // ]);
        //menyimpan data dengan mass assignment bagian name harus sama kolom2nya
        $newName = '';
        if ($request->file('photo')) {
            $extension = $request->file('photo')->getClientOriginalExtension();
            $newName = $request->name . $request->nis . '-' . now()->timestamp . '.' . $extension;
            $request->file('photo')->storeAs('photo', $newName);
        }

        $request['image'] = $newName;
        $student = Student::create($request->all());
        if ($student) {
            Session::flash('status', 'success');
            Session::flash('message', 'Data berhasil ditambahkan');
        }

        return redirect('/students');
    }
    public function edit(Request $request, $id)
    {
        $student = Student::with('class')->findOrFail($id);
        $class = ClassRoom::select('id', 'name')->where('id', '!=', $student->class_id)->get();
        return view('student-edit', ['student' => $student, 'class' => $class]);
    }
    public function update(Request $request, $id)
    {
        $newName = '';
        if ($request->file('photo')) {
            $extension = $request->file('photo')->getClientOriginalExtension();
            $newName = $request->name . $request->nis . '-' . now()->timestamp . '.' . $extension;
            $request->file('photo')->storeAs('photo', $newName);
        }

        $request['image'] = $newName;
        $student = Student::findOrFail($id);
        // $student->name = $request->name;
        // $student->gender = $request->gender;
        // $student->nis = $request->nis;
        // $student->class_id = $request->class_id;
        // $student->save();

        $student->update($request->all());
        if ($student) {
            Session::flash('status-edit', 'success');
            Session::flash('message-edit', 'Data berhasil diedit');
        }
        return redirect('/students');
    }

    public function destroy($id)
    {
        $deletedStudent = Student::findORFail($id);
        $deletedStudent->delete();

        return redirect('/students');
    }
    public function deletedStudent()
    {
        $deletedStudent = Student::onlyTrashed()->get();
        return view('student-deleted-list', ['student' => $deletedStudent]);
    }
    public function restore($id)
    {
        $deletedStudent = Student::withTrashed()->where('id', $id)->restore();
        if ($deletedStudent) {
            Session::flash('status-restore', 'success');
            Session::flash('message-restore', 'Data berhasil dipulihkan');
        }
        return redirect('/students');
    }
}
