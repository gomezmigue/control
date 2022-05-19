@extends('adminlte::page')

@section('title', 'Credenciales')

@section('content_header')
    <h1>Credenciales</h1>
@stop

@section('content')


<div class="table-responsive">

    <table id="alumnos" class="table table-striped table-bordered shadow-lg mt-4">
        <thead  class="bg-info text-white">
            <tr>

                <th scope="col">Matricula</th>
                <th scope="col">Nombre</th>
                <th scope="col">Curp</th>
                <th scope="col">Fecha</th>
                <th scope="col">Comentarios</th>
                <th scope="col">Acción</th>



            </tr>
        </thead>
        <tbody>
            @foreach ($credenciales as $credencial)
            <tr>


                <td>{{$credencial->matricula}}</td>
                <td>{{$credencial->nombre}}</td>
                <td>{{$credencial->curp}}</td>
                <td>{{$credencial->fecha}}</td>
                <td>{{$credencial->comentarios}}</td>
                <td>
                    <div class="d-grid gap-3 d-md-flex center-content-md-end">
                        <a href="/credenciales/{{$credencial->matricula}}/edit" class="btn btn-app bg-info"><i class="fas fa-edit  "></i>Editar</a>



                        <a href="/credencial/{{$credencial->matricula}}" class="btn btn-app bg-info"><i class="fas fa-id-card"></i>Credencial</a>
                    </div>
                </td>

            </tr>


            @endforeach

        </tbody>

    </table>
    </div>

@stop

@section('css')
    <link rel="stylesheet" href="/css/admin_custom.css">
    <link href="https://cdn.datatables.net/1.11.4/css/dataTables.bootstrap5.min.css" rel="stylesheet">
@stop

@section('js')
<script src="https://code.jquery.com/jquery-3.5.1.js"></script>
<script src="https://cdn.datatables.net/1.11.4/js/jquery.dataTables.min.js"></script>
<script src="https://cdn.datatables.net/1.11.4/js/dataTables.bootstrap5.min.js"></script>
<script>
$(document).ready(function() {
    $('#alumnos').DataTable({ordering: false, "lengthMenu": [[5,10,50,-1],[5,10,50,"All"]]});
} );

</script>
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
      }, true)
    })
})()
    </script>
@stop
