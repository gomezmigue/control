<!DOCTYPE html>
<html lang="es">
    <head>
        <?php
    
    $diatex  = array("cero","un","dós","tres","cuatro","cinco","séis","siete","ocho","nueve","diez","once","doce","trece","catorce","quince","dieciséis","diecisiete", "dieciocho","diecinueve","veinte","veintiuno","veintidós","veintitres","veinticuatro","veinticinco","veintiséis","veintisiete","veintiocho","veintinueve","treinta","treintaiuno");
    $aniotex = array('2022' => "dos mil veintidos" ,'2023' => "dos mil veintitres");

    $diahoy =$fechahoy->day;
    $anioactual = $fechahoy->year;
    
    
    $dialetra = $diatex[$diahoy];
    $anioletra = $aniotex[$anioactual];
    

    $nombre = $alumno->nombrec;
    $curp = $alumno->curp;
    $matricula = $alumno->matricula;
    $genero = substr("$curp", -8, 1);
    $diaini = $ciclo->Inicia->day;
    $diater = $ciclo->Termina->day;
    $mesini = $ciclo->Inicia->monthName;
    $mester = $ciclo->Termina->monthName;
    $anioini = $ciclo->Inicia->year;
    $anioter = $ciclo->Termina->year;
 
    if($mesini == $mester) {

        $periodo = $diaini." al ".$diater." de ".$mester." del año ".$aniofin;
          
      }
    else{
         if($anioini == $anioter){
        $periodo = $diaini." de ".$mesini." al ".$diater." de ".$mester." del año ".$anioter;
                                }
        else {
               $periodo = $diaini." de ".$mesini."del año ".$anioini." al ".$diater." de ".$mester." del año ".$anioter;

            }
    }
    if($genero == "M"){
        $parrafo = "Que la <b>C. ".$nombre."</b>, con CURP <b>".$curp."</b> y matrícula <b>".$matricula."</b>, se encuentra inscrita como alumna en el plan de estudios de Bachillerato en Línea, durante el periodo comprendido del ".$periodo.".";
    }
        else{
            $parrafo = "Que el <b>C. ".$nombre."</b>, con CURP <b>".$curp."</b> y matrícula <b>".$matricula."</b>, se encuentra inscrito como alumno en el plan de estudios de Bachillerato en Línea, durante el periodo comprendido del ".$periodo.".";

        }
    ?>
        <meta charset="UTF-8">
        <title>Constancia</title>
        <style>

        html{
        margin-left: 2.36cm;
        margin-right: 2.34cm;
        margin-top: 1.27cm;
        margin-bottom: 1.27cm;
        font-family: "Trebuchet MS", Verdana, sans-serif;
        line-height : 150%;
        
        }
        h1{
        text-align: center;
        text-transform: uppercase;
        }
        .contenido{
        font-size: 20px;
        }
        #primero{
            
            text-align: right;
            font-size: 9pt;
            font-weight: bold;
        
        }
        #segundo{
            
            text-align: left;
            font-size: 14pt;
            font-weight: bold;
        }
        #tercero{
           
            text-align: justify;
            font-size: 10pt;
            font-weight: normal;
                }
        #cuarto{
           
            text-align: center;
            font-size: 10pt;
            font-weight: bold;
                }      
        #quinto{
           
           text-align: center;
           font-size: 11pt;
           line-height : 100%;
           
               }              
        #sexto{
           
           text-align: left;
           font-size: 8pt;
           line-height : 100%;
           
               }              

        #septimo{
           
           text-align: left;
           font-size: 7pt;
           line-height : 100%;
           
               }             
        .texto-justificado{
            text-align: justify;
            
            
            
           
            font-size: 10pt;
        }
        header {
                position: fixed;
                top: 0cm;
                left: 0cm;
                right: 0cm;
                } 

        body {
                margin-top: 4.5cm;
                margin-left: 0cm;
                margin-right: 0cm;
                margin-bottom: 0cm;
            }


        footer {
                position: fixed; 
                bottom: 0cm; 
                left: 0cm; 
                right: 0cm;
                                
                }
        


    </style>
    
    </head>
    <body>
        <header>
        <img src="{{URL::asset('constancia/tira de logos.png')}}"/ width="100%">
        </header>
        <div class="contenido">
            <p id="primero">Asunto: Constancia de estudios</p>
            <p id="segundo">A quien corresponda:</p>
            
            
            <p class="texto-justificado">La suscrita, Coordinadora del <b>Bachillerato en Línea de Veracruz</b> con clave <b>30EEX0001U</b> de la Secretaría de Educación de Veracruz de esta ciudad capital,
                por medio del presente:</p>
            <p id="cuarto">HACE CONSTAR</p> 
            <p class="texto-justificado"><?php echo $parrafo;?></p>   
            <p class="texto-justificado">A petición de la parte interesada y para los fines legales que a la misma convenga, se expide la presente constancia en la Ciudad de Xalapa-Enríquez, Veracruz, a los {{$dialetra}} días del mes de {{$fechahoy->monthName}} del año {{$anioletra}}.</p>   
            <br><p id="quinto"><b>ATENTAMENTE</b></p>
            <br><p id="quinto"><b>ING. HAYDEÉ NANCY TOLOME MAYA</b><br>
            COORDINADORA DE BACHILLERATO<br> 	
                EN LÍNEA DE VERACRUZ</P>
            </div>
            <br>
            <p id="sexto">CCP. Archivo<br>
                HNTM/dmm/62/02/22</p>

                <br>
        <footer>
            <p id="septimo"> 
                <img src="constancia/ima.png" align="right"  height="70" width="70" >Paseo de los Alpes, No. 23, Fracc. Cumbres de las Ánimas<br>
                C.P. 9110, Xalapa, Ver.<br>
                Tel. (228) 8 41 77 00, Ext. 7676, 7680, 7683, 7684,<br>
                7689, 7695<br>
                wwwclavijero.edu.mx
                </p>





           

            
        </footer>
       
    </body>
</html>