<?php

namespace App\Http\Controllers;

use App\Models\Alumno;
use App\Models\Credencial;
use Barryvdh\DomPDF\Facade\Pdf;
use Illuminate\Http\Request;

class CredencialController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $credenciales = Credencial::where('status_pago', 1)->orwhere('status_pago',0)->orderBy('fecha','desc')->get();



        return view('alumnos.cred')->with('credenciales', $credenciales);
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
     * @param  \App\Models\Credencial  $credencial
     * @return \Illuminate\Http\Response
     */
    public function show(Credencial $credencial)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\Models\Credencial  $credencial
     * @return \Illuminate\Http\Response
     */
    public function edit($matricula)
    {
        $alumnos = Credencial::where('matricula',$matricula)->limit(1)->get();
        //dd($alumno);
        return view('alumnos.editar_cred')->with('alumnos', $alumnos);
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Models\Credencial  $credencial
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, Credencial $credencial)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Models\Credencial  $credencial
     * @return \Illuminate\Http\Response
     */
    public function destroy(Credencial $credencial)
    {
        //
    }

    public function credencial($matricula){

        //$alumno = Alumno::find($id);
        //dd($alumno);
        //$nombre= $alumno->nombrec;
        //$matricula=$alumno->matricula;
        $credencial = Credencial::where('matricula',$matricula)->get()->last();
        //$credencial = DB::table('tdcredencial')->where('matricula',$matricula)->get();
        //dd($credencial);
        //$credencial = $credenciales [0];
        //dd($alumno, $credencial->foto);
        //$comentario = $credencial->nombre;


        $pdf = PDF::loadView('credencial',compact('credencial'));
        $pdf->setPaper(array(0,0,220.42,349.40), 'landscape');
        $pdf->render();
        return $pdf->stream($matricula.'_CREDENCIAL.pdf');
    }
}
