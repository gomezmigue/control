@extends('adminlte::page')

@section('title', 'Editar')

@section('content_header')
<h1>Editar el nombre del Alumno en la credencial</h1>
@stop

@section('content')
<form>
    @method('PUT')
    @csrf
     @foreach ($alumnos as $alumno)

    <div class="mb-3">
        <label for="" class="form-label">Nombre</label>
        <input id="codigo" name="codigo" type="text" class="form-control" tabindex="1" value="{{$alumno->nombre}}">
    </div>

    <a href="/articulos" class="btn btn-secondary" tabindex="5">Cancelar</a>
    <button type="submit" class="btn btn-primary" tabindex="6">Guardar</button>

</form>
@endforeach
@stop

@section('css')
<link rel="stylesheet" href="/css/admin_custom.css">
@stop

@section('js')
<script>
    console.log('Hi!');
</script>
@stop
