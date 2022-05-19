@extends('adminlte::page')

@section('title', 'Editar')

@section('content_header')
    <h1>Editar Datos del Alumno</h1>
@stop

@section('content')
<form >
    @method('PUT')
    @csrf
<div class="mb-3">
    <label for="" class="form-label">Nombre</label>
    <input id="codigo" name="codigo" type="text" class="form-control" tabindex="1" value="{{$alumno->nombrec}}">
</div>
<div class="mb-3">
    <label for="" class="form-label">Correo</label>
    <input id="descripcion" name="descripcion" type="text" class="form-control" tabindex="2" value="{{$alumno->correoins}}">
</div>
<div class="mb-3">
    <label for="" class="form-label">CURP</label>
    <input id="cantidad" name="cantidad" type="text" class="form-control" tabindex="3" value="{{$alumno->curp}}">
</div>
<div class="mb-3">
    <label for="" class="form-label">Telefono</label>
    <input id="precio" name="precio" type="text" step="any" class="form-control" tabindex="4" value="{{$alumno->celular}}">
</div>
<a href="/articulos" class="btn btn-secondary" tabindex="5">Cancelar</a>
<button type="submit" class="btn btn-primary" tabindex="6">Guardar</button>

</form>
@stop

@section('css')
    <link rel="stylesheet" href="/css/admin_custom.css">
@stop

@section('js')
    <script> console.log('Hi!'); </script>
@stop