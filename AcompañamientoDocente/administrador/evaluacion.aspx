<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="evaluacion.aspx.cs" Inherits="AcompañamientoDocente.administrador.agregarUsuario" %>

<html xmlns="http://www.w3.org/1999/xhtml">

<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    




  
    <link href="tablecloth/tablecloth.css" rel="stylesheet" type="text/css" media="screen" />
    <script type="text/javascript" src="tablecloth/tablecloth.js"></script>


    <style>
        body {
            margin: 0;
            padding: 0;
            background: #f1f1f1;
            font: 70% Arial, Helvetica, sans-serif;
            color: #555;
            line-height: 150%;
            text-align: left;
        }

        a {
            text-decoration: none;
            color: #057fac;
        }

            a:hover {
                text-decoration: none;
                color: #999;
            }

        h1 {
            font-size: 140%;
            margin: 0 20px;
            line-height: 80px;
        }

        h2 {
            font-size: 120%;
        }

        #container {
            margin: 0 auto;
            width: 680px;
            background: #fff;
            padding-bottom: 20px;
        }

        #content {
            margin: 0 20px;
        }

        p.sig {
            margin: 0 auto;
            width: 680px;
            padding: 1em 0;
        }

        form {
            margin: 1em 0;
            padding: .2em 20px;
            background: #eee;
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
                    background-image: linear-gradient(45deg, rgba(0, 0, 0, 0.05) 25%, transparent 25%, transparent), linear-gradient(-45deg, rgba(0, 0, 0, 0.05) 25%, transparent 25%, transparent), linear-gradient(45deg, transparent 75%, rgba(0, 0, 0, 0.05) 75%), linear-gradient(-45deg, transparent 75%, rgba(0, 0, 0, 0.05) 75%);
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

        Blue button: .button-blue {
            background: #4477a1;
            background: -webkit-gradient(linear, left top, left bottom, from(#81a8cb), to(#4477a1) );
            background: -moz-linear-gradient(-90deg, #81a8cb, #4477a1);
            filter: progid:DXImageTransform.Microsoft.gradient(GradientType=0,startColorstr='#81a8cb', endColorstr='#4477a1');
        }

        .button-blue:hover {
            background: #81a8cb;
            background: -webkit-gradient(linear, left top, left bottom, from(#4477a1), to(#81a8cb) );
            background: -moz-linear-gradient(-90deg, #4477a1, #81a8cb);
            filter: progid:DXImageTransform.Microsoft.gradient(GradientType=0,startColorstr='#4477a1', endColorstr='#81a8cb');
        }

        .button-blue:active {
            background: #4477a1;
        }




        .tg {
            border-collapse: collapse;
            border-spacing: 0;
        }

            .tg td {
                font-family: Arial, sans-serif;
                font-size: 14px;
                padding: 10px 5px;
                border-style: solid;
                border-width: 1px;
                overflow: hidden;
                word-break: normal;
            }

            .tg th {
                font-family: Arial, sans-serif;
                font-size: 14px;
                font-weight: normal;
                padding: 10px 5px;
                border-style: solid;
                border-width: 1px;
                overflow: hidden;
                word-break: normal;
            }

            .tg .tg-9hbo {
                font-weight: bold;
                vertical-align: top;
            }

            .tg .tg-amwm {
                font-weight: bold;
                text-align: center;
                vertical-align: top;
            }

            .tg .tg-x9s4 {
                font-weight: bold;
                background-color: #9b9b9b;
                vertical-align: top;
            }

            .tg .tg-yw4l {
                vertical-align: top;
            }
    </style>

</head>

<body>

    <div id="container">
        <h1>PAUTA REGISTRO </h1>

        <div id="content">


            

            <h2>ACOMPAÑAMIENTO DOCENTE</h2>

            <table class="tg">
                <tr>
                    <th class="tg-9hbo">INDICADORES</th>
                    <th data-toggle="tooltip" title="TOTALMENTE DE ACUERDO"><b>TA</b></th>
                    <th data-toggle="tooltip" title="DE ACUERDO"><b>DA</b></th>
                    <th data-toggle="tooltip" title="DESACUERDO"><b>D</b></th>
                    <th data-toggle="tooltip" title="TOTALMENTE EN DESACUERDO"><b>TD</b></th>
                    <th data-toggle="tooltip" title="NO OBSERVADO"><b>NO</b></th>
                </tr>
                <tr>
                    <td class="tg-9hbo" colspan="6">Ambitos de Competencias Genericas de la familia del cargo Docente</td>
                </tr>

                    <!--(ZONA A) el total de puntaje obtenido se guarda en en el campo ZONAA de la tabla que crees...para todos los campos de la evaluacon se usa la misma ponderacion 100.75.50 etc-->
                <tr>
                    <td class="tg-x9s4" colspan="6">A. Planificar ( Planificar la elaboracion de actividades que conduzcan a los aprendizajes declarados en la asignatura)</td>
                </tr>
                <tr>
                    <td class="tg-yw4l">1 Comunicacion de objetivos, contenidos y/o aprendizajes esperados.</td>
                    <td class="tg-yw4l">
                        <input type="radio" name="pre1" value="100"></td>
                    <td class="tg-yw4l">
                        <input type="radio" name="pre1" value="75"></td>
                    <td class="tg-yw4l">
                        <input type="radio" name="pre1" value="50"></td>
                    <td class="tg-yw4l">
                        <input type="radio" name="pre1" value="25"></td>
                    <td class="tg-yw4l">
                        <input type="radio" name="pre1" value="0"></td>
                </tr>
                <tr>
                    <td class="tg-yw4l">2 Orientacion de las actividades de aprendizaje.</td>
                    <td class="tg-yw4l">
                        <input type="radio" name="pre2" value="100"></td>
                    <td class="tg-yw4l">
                        <input type="radio" name="pre2" value="75"></td>
                    <td class="tg-yw4l">
                        <input type="radio" name="pre2" value="50"></td>
                    <td class="tg-yw4l">
                        <input type="radio" name="pre2" value="25"></td>
                    <td class="tg-yw4l">
                        <input type="radio" name="pre2" value="0"></td>
                </tr>
                <tr>
                    <td class="tg-yw4l">3 Distribucion del tiempo.</td>
                    <td class="tg-yw4l">
                        <input type="radio" name="pre3" value="100"></td>
                    <td class="tg-yw4l">
                        <input type="radio" name="pre3" value="75"></td>
                    <td class="tg-yw4l">
                        <input type="radio" name="pre3" value="50"></td>
                    <td class="tg-yw4l">
                        <input type="radio" name="pre3" value="25"></td>
                    <td class="tg-yw4l">
                        <input type="radio" name="pre3" value="0"></td>
                </tr>
                <tr>
                    <td class="tg-yw4l">4 Plan de clase propuesto.</td>
                    <td class="tg-yw4l">
                        <input type="radio" name="pre4" value="100"></td>
                    <td class="tg-yw4l">
                        <input type="radio" name="pre4" value="75"></td>
                    <td class="tg-yw4l">
                        <input type="radio" name="pre4" value="50"></td>
                    <td class="tg-yw4l">
                        <input type="radio" name="pre4" value="25"></td>
                    <td class="tg-yw4l">
                        <input type="radio" name="pre4" value="0"></td>
                </tr>

                
                    <!--(ZONA B) el promedio de puntaje obtenido se guarda en en el campo ZONAB de la tabla que crees.... aca ya empieza la otra zona , son las mismas ponderaciones 100.75.50 etc-->
                <tr>
                    <td class="tg-x9s4" colspan="6">B. Metodologia Activas  (Desarrollar las actividades centrando la atencion en los estudiantes y en el aprendizaje, aplicando metodologias activas y motivadoras, fundadas en la perspectiva del "Aprender Haciendo")</td>
                </tr>
                <tr>
                    <td class="tg-yw4l">5 Aplicacion de principios de aprendizaje Inductivo.</td>
                    <td class="tg-yw4l">
                        <input type="radio" name="pre5" value="100"></td>
                    <td class="tg-yw4l">
                        <input type="radio" name="pre5" value="75"></td>
                    <td class="tg-yw4l">
                        <input type="radio" name="pre5" value="50"></td>
                    <td class="tg-yw4l">
                        <input type="radio" name="pre5" value="25"></td>
                    <td class="tg-yw4l">
                        <input type="radio" name="pre5" value="0"></td>
                </tr>
                <tr>
                    <td class="tg-yw4l">6 Aplicacion de principios del aprendizaje activo.</td>
                    <td class="tg-yw4l">
                        <input type="radio" name="pre6" value="100"></td>
                    <td class="tg-yw4l">
                        <input type="radio" name="pre6" value="75"></td>
                    <td class="tg-yw4l">
                        <input type="radio" name="pre6" value="50"></td>
                    <td class="tg-yw4l">
                        <input type="radio" name="pre6" value="25"></td>
                    <td class="tg-yw4l">
                        <input type="radio" name="pre6" value="0"></td>
                </tr>
                <tr>
                    <td class="tg-yw4l">7 Aplicacion de principios del aprendizaje practico.</td>
                    <td class="tg-yw4l">
                        <input type="radio" name="pre7" value="100"></td>
                    <td class="tg-yw4l">
                        <input type="radio" name="pre7" value="75"></td>
                    <td class="tg-yw4l">
                        <input type="radio" name="pre7" value="50"></td>
                    <td class="tg-yw4l">
                        <input type="radio" name="pre7" value="25"></td>
                    <td class="tg-yw4l">
                        <input type="radio" name="pre7" value="0"></td>
                </tr>
                <tr>
                    <td class="tg-yw4l">8 Incorporacion de conocimientos y aprendizajes previos de los estudiantes.</td>
                    <td class="tg-yw4l">
                        <input type="radio" name="pre8" value="100"></td>
                    <td class="tg-yw4l">
                        <input type="radio" name="pre8" value="75"></td>
                    <td class="tg-yw4l">
                        <input type="radio" name="pre8" value="50"></td>
                    <td class="tg-yw4l">
                        <input type="radio" name="pre8" value="25"></td>
                    <td class="tg-yw4l">
                        <input type="radio" name="pre8" value="0"></td>
                </tr>
                <tr>
                    <td class="tg-yw4l">9 Generacion de un ambiente para el aprendizaje e intercambio entre los participantes.</td>
                    <td class="tg-yw4l">
                        <input type="radio" name="pre9" value="100"></td>
                    <td class="tg-yw4l">
                        <input type="radio" name="pre9" value="75"></td>
                    <td class="tg-yw4l">
                        <input type="radio" name="pre9" value="50"></td>
                    <td class="tg-yw4l">
                        <input type="radio" name="pre9" value="25"></td>
                    <td class="tg-yw4l">
                        <input type="radio" name="pre9" value="0"></td>
                </tr>
                <tr>
                    <td class="tg-yw4l">10 Contextualizacion de contenidos en relacion al desempeño en el mundo laboral.</td>
                    <td class="tg-yw4l">
                        <input type="radio" name="pre10" value="100"></td>
                    <td class="tg-yw4l">
                        <input type="radio" name="pre10" value="75"></td>
                    <td class="tg-yw4l">
                        <input type="radio" name="pre10" value="50"></td>
                    <td class="tg-yw4l">
                        <input type="radio" name="pre10" value="25"></td>
                    <td class="tg-yw4l">
                        <input type="radio" name="pre10" value="0"></td>
                </tr>
                <tr>
                    <td class="tg-yw4l">11 Promocion de fuentes de informacion.</td>
                    <td class="tg-yw4l">
                        <input type="radio" name="pre11" value="100"></td>
                    <td class="tg-yw4l">
                        <input type="radio" name="pre11" value="75"></td>
                    <td class="tg-yw4l">
                        <input type="radio" name="pre11" value="50"></td>
                    <td class="tg-yw4l">
                        <input type="radio" name="pre11" value="25"></td>
                    <td class="tg-yw4l">
                        <input type="radio" name="pre11" value="0"></td>
                </tr>

                
                    <!--(ZONA C) el total de puntaje obtenido se guarda en en el campo ZONAC de la tabla que crees-->
                <tr>
                    <td class="tg-x9s4" colspan="6">C. Uso de Recursos/Materiales (Aprovechar los recursos de aprendizaje que la institucion pone a disposicion de sus docentes para el mejor logro de los objetivos</td>
                </tr>
                <tr>
                    <td class="tg-yw4l">12 Utilizacion de recursos y/o incorporacion de TICs.</td>
                    <td class="tg-yw4l">
                        <input type="radio" name="pre12" value="100"></td>
                    <td class="tg-yw4l">
                        <input type="radio" name="pre12" value="75"></td>
                    <td class="tg-yw4l">
                        <input type="radio" name="pre12" value="50"></td>
                    <td class="tg-yw4l">
                        <input type="radio" name="pre12" value="25"></td>
                    <td class="tg-yw4l">
                        <input type="radio" name="pre12" value="0"></td>
                </tr>
                <tr>
                    <td class="tg-yw4l">13 Disponibilidad de los recursos.</td>
                    <td class="tg-yw4l">
                        <input type="radio" name="pre13" value="100"></td>
                    <td class="tg-yw4l">
                        <input type="radio" name="pre13" value="75"></td>
                    <td class="tg-yw4l">
                        <input type="radio" name="pre13" value="50"></td>
                    <td class="tg-yw4l">
                        <input type="radio" name="pre13" value="25"></td>
                    <td class="tg-yw4l">
                        <input type="radio" name="pre13" value="0"></td>
                </tr>
                <tr>
                    <td class="tg-yw4l">14 Dominio en el uso de los recursos y/o TICs.</td>
                    <td class="tg-yw4l">
                        <input type="radio" name="pre14" value="100"></td>
                    <td class="tg-yw4l">
                        <input type="radio" name="pre14" value="75"></td>
                    <td class="tg-yw4l">
                        <input type="radio" name="pre14" value="50"></td>
                    <td class="tg-yw4l">
                        <input type="radio" name="pre14" value="25"></td>
                    <td class="tg-yw4l">
                        <input type="radio" name="pre14" value="0"></td>
                </tr>
                
                    <!--(ZONA D) el promedio de puntaje obtenido se guarda en en el campo ZONAD de la tabla que crees-->
                <tr>
                    <td class="tg-x9s4" colspan="6">D. Evaluacion (Evaluar el logro de los aprendizajes definidos para las asignaturas)</td>
                </tr>
                <tr>
                    <td class="tg-yw4l">15 Comunicacion de los criterios de evaluacion</td>
                    <td class="tg-yw4l">
                        <input type="radio" name="pre15" value="100"></td>
                    <td class="tg-yw4l">
                        <input type="radio" name="pre15" value="75"></td>
                    <td class="tg-yw4l">
                        <input type="radio" name="pre15" value="50"></td>
                    <td class="tg-yw4l">
                        <input type="radio" name="pre15" value="25"></td>
                    <td class="tg-yw4l">
                        <input type="radio" name="pre15" value="0"></td>
                </tr>
                <tr>
                    <td class="tg-yw4l">16 Utilidad del proceso de evaluacion</td>
                    <td class="tg-yw4l">
                        <input type="radio" name="pre16" value="100"></td>
                    <td class="tg-yw4l">
                        <input type="radio" name="pre16" value="75"></td>
                    <td class="tg-yw4l">
                        <input type="radio" name="pre16" value="50"></td>
                    <td class="tg-yw4l">
                        <input type="radio" name="pre16" value="25"></td>
                    <td class="tg-yw4l">
                        <input type="radio" name="pre16" value="0"></td>
                </tr>
                <tr>
                    <td class="tg-yw4l">17 Retroalimentacion del proceso enseñanza-aprendizaje.</td>
                    <td class="tg-yw4l">
                        <input type="radio" name="pre17" value="100"></td>
                    <td class="tg-yw4l">
                        <input type="radio" name="pre17" value="75"></td>
                    <td class="tg-yw4l">
                        <input type="radio" name="pre17" value="50"></td>
                    <td class="tg-yw4l">
                        <input type="radio" name="pre17" value="25"></td>
                    <td class="tg-yw4l">
                        <input type="radio" name="pre17" value="0"></td>
                </tr>
                
                    <!--(ZONAE) el promedio de puntaje obtenido se guarda en en el campo ZONAE de la tabla que crees-->
                <tr>
                    <td class="tg-x9s4" colspan="6">E. Aptitud para Transmitir Valores Institucionales (Transmitir valores de igualdad de oportunidades, excelencia, servicio e innovaci˘n)</td>
                </tr>
                <tr>
                    <td class="tg-yw4l">18 Sello del alumno Inacap.</td>
                    <td class="tg-yw4l">
                        <input type="radio" name="pre18" value="100"></td>
                    <td class="tg-yw4l">
                        <input type="radio" name="pre18" value="75"></td>
                    <td class="tg-yw4l">
                        <input type="radio" name="pre18" value="50"></td>
                    <td class="tg-yw4l">
                        <input type="radio" name="pre18" value="25"></td>
                    <td class="tg-yw4l">
                        <input type="radio" name="pre18" value="0"></td>
                </tr>
                <tr>
                    <td class="tg-yw4l">19 Oportunidad a los estudiantes.</td>
                    <td class="tg-yw4l">
                        <input type="radio" name="pre19" value="100"></td>
                    <td class="tg-yw4l">
                        <input type="radio" name="pre19" value="75"></td>
                    <td class="tg-yw4l">
                        <input type="radio" name="pre19" value="50"></td>
                    <td class="tg-yw4l">
                        <input type="radio" name="pre19" value="25"></td>
                    <td class="tg-yw4l">
                        <input type="radio" name="pre19" value="0"></td>
                </tr>
                <tr>
                    <td class="tg-yw4l">20 Actitud de servicio a sus alumnos.</td>
                    <td class="tg-yw4l">
                        <input type="radio" name="pre20" value="100"></td>
                    <td class="tg-yw4l">
                        <input type="radio" name="pre20" value="75"></td>
                    <td class="tg-yw4l">
                        <input type="radio" name="pre20" value="50"></td>
                    <td class="tg-yw4l">
                        <input type="radio" name="pre20" value="25"></td>
                    <td class="tg-yw4l">
                        <input type="radio" name="pre20" value="0"></td>
                </tr>



            </table>


            <a href="#" class="button button-blue">
                <span>Guardar</span>
            </a>
            <a href="Anecdotario.aspx" class="button button-blue">
                <span>Anecdotario</span>
            </a>
            <a href="homeAdmin.aspx" class="button button-blue">
                <span>Salir</span>
            </a>



            
        </div>

        <script>
            $(document).ready(function () {
                $('[data-toggle="tooltip"]').tooltip();
            });
        </script>
</body>
</html>