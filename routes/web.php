<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\AuthController;
use App\Http\Controllers\ClassController;
use App\Http\Controllers\StudentController;
use App\Http\Controllers\TeacherController;
use App\Http\Controllers\ExtracurricularController;


/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/

Route::get('/', function () {
    return view('home');
});

Route::get('/login',[AuthController::class, 'login'])->name('login')->middleware('guest');
Route::post('/login',[AuthController::class, 'authenticating'])->middleware('guest');

Route::get('/logout',[AuthController::class, 'logout'])->middleware('auth');


//student
Route::get('/students',[StudentController::class, 'index'])->middleware('auth');
Route::get('/student/{id}',[StudentController::class, 'show'])->middleware('auth');
Route::get('/student-add',[StudentController::class, 'create'])->middleware('auth');
Route::post('/student',[StudentController::class, 'store'])->middleware('auth');
Route::get('/student-edit/{id}',[StudentController::class, 'edit'])->middleware('auth');
Route::put('/student/{id}',[StudentController::class, 'update'])->middleware('auth');
Route::delete('/student-destroy/{id}',[StudentController::class, 'destroy'])->middleware('auth');
Route::get('/student-deleted',[StudentController::class, 'deletedStudent'])->middleware('auth');
Route::get('/student/{id}/restore',[StudentController::class, 'restore'])->middleware('auth');

//class
Route::get('/class',[ClassController::class, 'index'])->middleware('auth');
Route::get('/class/{id}',[ClassController::class, 'show'])->middleware('auth');
Route::get('/class-add',[ClassController::class, 'create'])->middleware('auth');
Route::post('/class',[ClassController::class, 'store'])->middleware('auth');
Route::get('/class-edit/{id}',[ClassController::class, 'edit'])->middleware('auth');
Route::put('/class/{id}',[ClassController::class, 'update'])->middleware('auth');
Route::delete('/class-destroy/{id}',[ClassController::class, 'destroy'])->middleware('auth');


//extracurricular
Route::get('/extracurricular',[ExtracurricularController::class, 'index'])->middleware('auth');
Route::get('/extracurricular/{id}',[ExtracurricularController::class, 'show'])->middleware('auth');
Route::get('/extracurricular-add',[ExtracurricularController::class, 'create'])->middleware('auth');
Route::post('/extracurricular',[ExtracurricularController::class, 'store'])->middleware('auth');
Route::get('/extracurricular-edit/{id}',[ExtracurricularController::class, 'edit'])->middleware('auth');
Route::put('/extracurricular/{id}',[ExtracurricularController::class, 'update'])->middleware('auth');
Route::delete('/extracurricular-destroy/{id}',[ExtracurricularController::class, 'destroy'])->middleware('auth');


//teacher
Route::get('/teacher',[TeacherController::class, 'index'])->middleware('auth');
Route::get('/teacher/{id}',[TeacherController::class, 'show'])->middleware('auth');
Route::get('/teacher-add',[TeacherController::class, 'create'])->middleware('auth');
Route::post('/teacher',[TeacherController::class, 'store'])->middleware('auth');
Route::get('/teacher-edit/{id}',[TeacherController::class, 'edit'])->middleware('auth');
Route::put('/teacher/{id}',[TeacherController::class, 'update'])->middleware('auth');
Route::delete('/teacher-destroy/{id}',[TeacherController::class, 'destroy'])->middleware('auth');




