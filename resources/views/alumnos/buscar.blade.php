@extends('adminlte::page')

@section('title', 'Buscar Alumno')

@section('content_header')
    <h1>Buscar Alumno</h1>
@stop

@section('content')


<form class = "row g-3 needs-validation" novalidate action="/buscar" method="GET">

    @method('GET')
    @csrf
    <div class="col-md-4">
        <label for="validationCustomUsername" class="form-label">Matricula, curp o nombre completo</label>
        <div class="input-group has-validation">

          <input type="text" class="form-control" id="campo" name="campo" aria-describedby="inputGroupPrepend" required>
          <div class="invalid-feedback">
            Inegrese una matricula, curp o nombre completo.
          </div>
        </div>
      </div>

<!--
<div class="mb-3">
    <label for="" class="form-label">Matrucula, curp, nombre completo</label>
    <input id="campo" name="campo" type="text" class="form-control" tabindex="1">
</div>
-->
</div>
<br>
 <div class="col-md-4">
<a href="/alumno" class="btn btn-secondary" tabindex="5">Cancelar</a>
<button type="submit" class="btn btn-primary" tabindex="6">Buscar</button>
</div>
</form>
@stop

@section('css')
    <link rel="stylesheet" href="/css/admin_custom.css">
@stop

@section('js')
<script>
    // Example starter JavaScript for disabling form submissions if there are invalid fields
(function () {
  'use strict'

  // Fetch all the forms we want to apply custom Bootstrap validation styles to
  var forms = document.querySelectorAll('.needs-validation')

  // Loop over them and prevent submission
  Array.prototype.slice.call(forms)
    .forEach(function (form) {
      form.addEventListener('submit', function (event) {
        if (!form.checkValidity()) {
          event.preventDefault()
          event.stopPropagation()
        }

        form.classList.add('was-validated')
      }, false)
    })
})()
    </script>
@stop
