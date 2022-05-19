<!DOCTYPE html>
<html lang="es">
    <head>

        <meta charset="UTF-8">
        <title>Credencial</title>
        <style>
        html{
            margin-left: 0cm;
            margin-right: 0cm;
            margin-top: 0cm;
            margin-bottom: 0cm;
            font-family: "Trebuchet MS", Verdana, sans-serif;
        }
        .foto{
            position:absolute;
            height:139.4px;
            width:97px;
            top: 87.36px;
            left : 35px;
            z-index: 1;
            }
        .datos{
            position:absolute;
            top:  130px;
            left: 145px;
            z-index: 1;
            font-size: 10pt;
            }
        .matricula{
       color:#FF5733 ;
            }
        </style>
    </head>
    <body>
        <div style="position: relative; left: 0; top: 0;">
            <img src="{{URL::asset('credencial/cred_front.png')}}" width="100%" height="100%"/>
            <!--<img src="{{URL::asset('credencial/B21000827.jpg')}}" class="foto">-->

           <img src="https://www.clavijero.edu.mx/bachillerato-belver/credencial/fotos/{{$credencial->foto}}" class="foto">
            <p class="datos">{{$credencial->nombre}}<br><span class="matricula">MATRICULA: {{$credencial->matricula}}</span></p>
        </div>
            <div style="page-break-after:always;"></div>
            <div style="position: relative; left: 0; top: 0;">
            <img src="{{URL::asset('credencial/cred_post.png')}}"/ width="100%" height="100%"/>
        </div>
    </body>
</html>
