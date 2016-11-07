<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Anecdotario.aspx.cs" Inherits="AcompañamientoDocente.administrador.WebForm2" %>

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Welcome to Tablecloth</title>

<!-- paste this code into your webpage -->
<link href="tablecloth/tablecloth.css" rel="stylesheet" type="text/css" media="screen" />
<script type="text/javascript" src="tablecloth/tablecloth.js"></script>
<!-- end -->

<style>

body{
	margin:0;
	padding:0;
	background:#f1f1f1;
	font:70% Arial, Helvetica, sans-serif; 
	color:#555;
	line-height:150%;
	text-align:left;
}
a{
	text-decoration:none;
	color:#057fac;
}
a:hover{
	text-decoration:none;
	color:#999;
}
h1{
	font-size:140%;
	margin:0 20px;
	line-height:80px;	
}
h2{
	font-size:120%;
}
#container{
	margin:0 auto;
	width:680px;
	background:#fff;
	padding-bottom:20px;
}
#content{margin:0 20px;}
p.sig{	
	margin:0 auto;
	width:680px;
	padding:1em 0;
}
form{
	margin:1em 0;
	padding:.2em 20px;
	background:#eee;
}

textarea {

    resize:vertical;
   
}

.button {
    margin: 10px;
    text-decoration: none;
    font: bold 1.5em 'Trebuchet MS',Arial, Helvetica; /*Change the em value to scale the button*/
    display: inline-block;
    text-align: center;
    color: #fff;    
    border: 1px solid #9c9c9c; /* Fallback style */
    border: 1px solid rgba(0, 0, 0, 0.3);
    text-shadow: 0 1px 0 rgba(0,0,0,0.4);    
    box-shadow: 0 0 .05em rgba(0,0,0,0.4);   
}

.button, 
.button span {
    -moz-border-radius: .3em;
    border-radius: .3em;
}

.button span {
    border-top: 1px solid #fff; /* Fallback style */
    border-top: 1px solid rgba(255, 255, 255, 0.5);
    display: block;
    padding: 0.5em 2.5em;    
    /* The background pattern */
    background-image: linear-gradient(45deg, rgba(0, 0, 0, 0.05) 25%, transparent 25%, transparent),
                      linear-gradient(-45deg, rgba(0, 0, 0, 0.05) 25%, transparent 25%, transparent),
                      linear-gradient(45deg, transparent 75%, rgba(0, 0, 0, 0.05) 75%),
                      linear-gradient(-45deg, transparent 75%, rgba(0, 0, 0, 0.05) 75%);

    /* Pattern settings */
    background-size: 3px 3px;            
}

.button:hover {
    box-shadow: 0 0 .1em rgba(0,0,0,0.4);
}

.button:active {
    /* When pressed, move it down 1px */
    position: relative;
    top: 1px;
}
Blue button:

.button-blue {
    background: #4477a1;
    background: -webkit-gradient(linear, left top, left bottom, from(#81a8cb), to(#4477a1) );
    background: -moz-linear-gradient(-90deg, #81a8cb, #4477a1);
    filter:  progid:DXImageTransform.Microsoft.gradient(GradientType=0,startColorstr='#81a8cb', endColorstr='#4477a1');
}

.button-blue:hover {
    background: #81a8cb;
    background: -webkit-gradient(linear, left top, left bottom, from(#4477a1), to(#81a8cb) );
    background: -moz-linear-gradient(-90deg, #4477a1, #81a8cb);
    filter:  progid:DXImageTransform.Microsoft.gradient(GradientType=0,startColorstr='#4477a1', endColorstr='#81a8cb');            
}

.button-blue:active {
    background: #4477a1;
}


.tg  {border-collapse:collapse;border-spacing:0;}
.tg td{font-family:Arial, sans-serif;font-size:14px;padding:10px 5px;border-style:solid;border-width:1px;overflow:hidden;word-break:normal;}
.tg th{font-family:Arial, sans-serif;font-size:14px;font-weight:normal;padding:10px 5px;border-style:solid;border-width:1px;overflow:hidden;word-break:normal;}
.tg .tg-9hbo{font-weight:bold;vertical-align:top}
.tg .tg-yw4l{vertical-align:top}

</style>

</head>

<body>

<div id="container">
	<h1> ACOMPAÑAMIENTO DOCENTE</h1>
	
	<div id="content">


	<!-- all you need with Tablecloth is a regular, well formed table. No need for id's, class names... --> 
	    
	  <!--  <h2>ACOMPAÑAMIENTO DOCENTE</h2>  -->
		<table class="tg">
  <tr>
    <td class="tg-9hbo" colspan="6"> REGISTRO DE ANECDOTARIO (aspectos observados en la clase respecto a las competencias pedagógicas: comentarios, sugerencias, etc. Por ejemplo puntualidad, lenguaje gestual, las actividades realizadas fomentan distintos procesos mentales, atiende positiva y constructivamente preguntas y contribuciones de los alumnos, demuestra en su actitud ser acucioso, metódico, oportuno, realista, etc.)</td>
  </tr>
  <tr>
    <td class="tg-yw4l" colspan="6" rowspan="4"><textarea rows="10" cols="86">Escriba su texto aca......</textarea>  </td>

  </tr>
  <tr>
  </tr>
  <tr>
  </tr>
  <tr>
  </tr>
  <tr>
    <td class="tg-9hbo" colspan="6">ACUERDOS (aspectos observados en la clase respecto a los  ambitos de competencias genricas de la familia del cargo docente; por ejemplo: participar en un taller  o curso de formacion, asistir a un seminario, leer un documento, etc.)</td>
  </tr>
  <tr>
    <td class="tg-yw4l" colspan="6" rowspan="7"> <textarea rows="10" cols="86">Escriba su texto aca......</textarea>    </td>
  </tr>
  <tr>
  </tr>
  <tr>
  </tr>
  <tr>
  </tr>
  <tr>
  </tr>
  <tr>
  </tr>
  <tr>
  </tr>
  <tr>
    <td class="tg-9hbo" colspan="6">PLAZOS (en este aspecto se deja por escrito la fecha m xima para dar cumplimiento al (los) acuerdo(s) establecido(s) anteriormente)</td>
  </tr>
  <tr>
    <td class="tg-yw4l" colspan="6" rowspan="3"><textarea rows="10" cols="86">Escriba su texto aca.......</textarea>  </td>
  </tr>
  <tr>
  </tr>
  <tr>
  </tr>
</table>
		 <a href="#" class="button button-blue">
                 <span>Guardar</span>
        </a>
           <a href="evaluacion.aspx" class="button button-blue">
                 <span>Evaluacion</span>
        </a>
              <a href="homeAdmin.aspx" class="button button-blue">
                 <span>Salir</span>
        </a>
		
	</div>
</div>

	
	
</body>
</html>
