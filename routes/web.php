<?php

use App\Http\Controllers\AlumnoController;
use App\Http\Controllers\CredencialController;
use App\Models\Credencial;
use Illuminate\Support\Facades\Route;

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
Route::get('/', function(){
 return view('auth.login');

});

Route::get('admin/settings', function(){
    return view('profile.show');
   
   });


Route::resource('alumno','App\Http\Controllers\AlumnoController');

Route::resource('credenciales', CredencialController::class);

Route::get('buscar',[AlumnoController::class,'buscar']);



Route::name('print')->get('/imprimir/{id}', [AlumnoController::class, 'imprimir']);

Route::name('cred')->get('/credencial/{id}', [CredencialController::class, 'credencial']);


//Route::resource('buscar/{matricula}', [AlumnoController::class, 'buscar']);

Route::middleware(['auth:sanctum', 'verified'])->get('/dashboard', function () {
    return view('dashboard');
})->name('dashboard');
