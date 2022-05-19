@extends('adminlte::page')

@section('title', 'Dashboard')

@section('content_header')
    <h1>Dashboard</h1>
    <div class="col-lg-3 col-6">

        <div class="small-box bg-info">
        <div class="inner">
        <h3>150</h3>
        <p>New Orders</p>
        </div>
        <div class="icon">
        <i class="fas fa-user"></i>
        </div>
        <a href="#" class="small-box-footer">More info <i class="fas fa-arrow-circle-right"></i></a>
        </div>
        </div>
@stop

@section('content')
    <p>Pagina principal</p>
@stop

@section('css')
    <link rel="stylesheet" href="/css/admin_custom.css">
@stop

@section('js')
    <script> console.log('Hi!'); </script>
@stop