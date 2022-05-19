<?php

namespace App\Http\Controllers;

use App\Models\Alumno;
use App\Models\Ciclo;
use App\Models\Credencial;
use Barryvdh\DomPDF\Facade\Pdf;
use Carbon\Carbon;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;



class AlumnoController extends Controller
{

    public function __construct()

    {
        $this->middleware('auth');
    }
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        return view('alumnos.buscar');
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        //
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        //
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        $alumno = Alumno::find($id);
        return view('alumnos.editar')->with('alumno', $alumno);
    }






    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $matricula
     * @return \Illuminate\Http\Response
     */
    public function buscar(Request $request)
    {


        $campo = $request->get('campo');

        $alumnos = DB::table('alumnos')->where('matricula',$campo)->orWhere('curp',$campo)->orWhere('nombrec',$campo)->get();




        return view('alumnos.show',compact('campo','alumnos'));
    }

    public function imprimir($id){

        $alumno = Alumno::find($id);
        $ciclo = Ciclo::all()->last();
        $fechahoy = Carbon::now();


        $pdf = PDF::loadView('constanciapdf', compact('alumno','ciclo','fechahoy'));

        $pdf->setPaper('carta');
        return $pdf->stream('CONSTANCIA_'.$alumno->curp.'.pdf');
   }



}
