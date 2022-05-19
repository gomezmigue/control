@extends('adminlte::page')

@section('title', 'Dashboard')

@section('content_header')
    <h1>Datos del Alumno</h1>
@stop

@section('content')

@if (!sizeof($alumnos)==0)
<div class="table-responsive">

    <table id="alumnos" class="table table-striped table-bordered shadow-lg mt-4">
        <thead  class="bg-info text-white">
            <tr>

                <th scope="col">Matricula</th>
                <th scope="col">Nombre</th>
                <th scope="col">Correo</th>
                <th scope="col">Curp</th>
                <th scope="col">Telefono</th>
                <th scope="col">Acción</th>



            </tr>
        </thead>
        <tbody>


            @foreach ($alumnos as $alumno)

            <tr>


                <td>{{$alumno->matricula}}</td>
                <td>{{$alumno->nombrec}}</td>
                <td>{{$alumno->correoins}}</td>
                <td>{{$alumno->curp}}</td>
                <td>{{$alumno->celular}}</td>
                <td>
                    <div class="d-grid gap-3 d-md-flex center-content-md-end">
                        <a href="/alumno/{{$alumno->idalumno}}/edit" class="btn btn-app bg-info"><i class="fas fa-edit  "></i>Editar</a>
                        <a href="/imprimir/{{$alumno->idalumno}}" class="btn btn-app bg-info"><i class="fas fa-file"></i>Constancia</a>

                    </div>
                </td>

            </tr>


            @endforeach



        </tbody>

    </table>

    </div>
@else

<div class="alert alert-danger d-flex align-items-center" role="alert">
    <svg class="bi flex-shrink-0 me-2" width="24" height="24" role="img" aria-label="Danger:"><use xlink:href="#exclamation-triangle-fill"/></svg>
    <div>
      No se encontraron resultados para: {{$campo}}
    </div>


    @endif


@stop

@section('css')
    <link rel="stylesheet" href="/css/admin_custom.css">
@stop

@section('js')
    <script> console.log('Hi!'); </script>
@stop
