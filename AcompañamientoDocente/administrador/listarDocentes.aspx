<%@ Page Title="" Language="C#" MasterPageFile="~/plantillas/plantillaHomeAdmin.Master" AutoEventWireup="true" CodeBehind="listarDocentes.aspx.cs" Inherits="AcompañamientoDocente.administrador.listarDocentes" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

    <!-- DataTables CSS 
    <link href="css/dataTables.bootstrap.css" rel="stylesheet"/>
-->
    <!-- DataTables Responsive CSS 
    <link href="css/dataTables.responsive.css" rel="stylesheet"/>
-->
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="regionTitulo" runat="server">
        Lista de Docentes
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="regionContenido" runat="server">

    <asp:literal ID="Alerta" runat="server"></asp:literal>

<div class="row">
                <div class="col-lg-12">
                    <div class="panel panel-default">
                        <div class="panel-heading">
                            Lista de todos los Docentes
                        </div>
                        
                        <!-- /.panel-heading -->
                        <div class="panel-body">
                            <div class="dataTable_wrapper">
                                <table class="table table-striped table-bordered table-hover" id="tablaListaDocentes">
                                    <thead>
                                        <tr>
                                            <th>Run</th>
                                            <th>Nombres</th>
                                            <th>Apellidos</th>
                                            <th>Fono</th>
                                            <th>Email</th>
                                            <th>Profesión</th>
                                            <th></th>
                                            <th>aPaterno</th>
                                          <th>AMaterno</th>
                                          <th>IdProfesion</th>
                                        </tr>
                                    </thead>
                                    <tbody>

                                       <asp:Literal ID="filasTabla" runat="server">

                                       </asp:Literal>
                                        
                                    </tbody>
                                </table>
                            </div>
                        </div>
                        <!-- /.panel-body -->
                    </div>
                    <!-- /.panel -->
                </div>
                <!-- /.col-lg-12 -->
            </div>

    <div style="display:none;">
				<form id="miForm" action="editarDocente.aspx" runat="server">
                    <div class="col-xs-6 eeControles">
                        <div class="input-group">
                            <span class="input-group-addon">Run</span>
                            <input type="text" id="RunDocente" name="RunDocente" value="" class="form-control" placeholder="Run Docente"/>
                        </div>
                    </div>
                    <div class="col-xs-6 eeControles">
                       <div class="input-group">
                            <span class="input-group-addon">Nombre</span>
                            <input type="text" class="form-control" id="NombreDocente" name="NombreDocente" value="" placeholder="Nombre"/>
                       </div>
                    </div>
                    <div class="col-xs-6 eeControles">
                       <div class="input-group">
                            <span class="input-group-addon">A. Paterno</span>
                         <input type="text" id="ApPaternoDocente" name="ApPaternoDocente" value=""  placeholder="A. Paterno" class="form-control"/>
                       </div>
                    </div>
                    <div class="col-xs-6 eeControles">
                       <div class="input-group">
                            <span class="input-group-addon">A. Materno</span>
                         <input type="text" id="ApMaternoDocente" name="ApMaternoDocente" value=""  placeholder="A. Materno" class="form-control"/>
                       </div>
                    </div>
                    <div class="col-xs-6 eeControles">
                       <div class="input-group">
                            <span class="input-group-addon">Fono</span>
                         <input type="text" id="Fono" name="Fono" value=""  placeholder="Fono" class="form-control"/>
                       </div>
                    </div>
                    <div class="col-xs-6 eeControles">
                       <div class="input-group">
                            <span class="input-group-addon">Email</span>
                         <input type="text" id="Email" name="Email" value=""  placeholder="nombre@email.com" class="form-control"/>
                       </div>
                    </div>
                    <div class="col-xs-6 eeControles">
                       <div class="input-group">
                            <span class="input-group-addon">Profesion</span>
                         <input type="text" id="Profesion" name="Profesion" value=""  placeholder="Profesion" class="form-control"/>
                       </div>
                    </div>
                </form>
            </div>


</asp:Content>

<asp:Content ID="script" ContentPlaceHolderID="regionScript" runat="server">

    <script type="text/javascript">

        $(document).ready(function () {
            var TableListaDocentes; //variable para guardar los datos de la tabla
            var FilaSelected = null;//variable para guardar los datos de la fila seleccionada

            TableListaDocentes = $('#tablaListaDocentes').DataTable({
                responsive: true,                
                "columns":[
                    null, null, null, null, null, null, null, 
                   {
                       visible: false,
                       searchable: false
                   },
                    {
                        visible: false,
                        searchable: false
                    },
                    {
                        visible: false,
                        searchable: false
                    }
                ],
                "language": {
                    "url": "../js/Spanish.js"
                    
                }

            });


            //evento que se desencadena cuando se hace click en el lapiz o en cualquier parte de la fila
            $('#tablaListaDocentes tbody').on('click', 'tr', function () {
                FilaSelected = null;//setea en null la variable para limpiarla
                if ($(this).hasClass('selected')) {//si esta seleccionada
                    $(this).removeClass('selected');//la limpia
                }
                else {//si no esta seleccionada
                    FilaSelected = this;//le pasa la seleccion (los datos) a la variable
                    TableListaDocentes.$('tr.selected').removeClass('selected');//limpia la fila seleccionada anteriormente
                    $(this).addClass('selected');//selecciona la fila actual
                }
            });



            $(document).on('click', '.editarDocente', function () {
                var sData = TableListaDocentes.row(FilaSelected).data();//recoge los datos de la fila seleccionada y los asigna al arreglo sData
               // alert(sData);
                var id = $(this).parents("tr").attr("id");
                var Run = $(this).parents("tr").children("td:eq(0)").html();
                var Nombres = $(this).parents("tr").children("td:eq(1)").html();
                var Apellidos = $(this).parents("tr").children("td:eq(2)").html();
                var Fono = $(this).parents("tr").children("td:eq(3)").html();
                var Email = $(this).parents("tr").children("td:eq(4)").html();
                var Profesion = $(this).parents("tr").children("td:eq(5)").html();
                var APaterno = sData[7]; //le pasa los datos del arreglo en la posicion 7 a la variable
                var AMaterno = sData[8];
                var IdProfesion = sData[9];

                $("#RunDocente").val(Run);
                $("#NombreDocente").val(Nombres);
                $("#Fono").val(Fono);
                $("#Email").val(Email);
                $("#Profesion").val(Profesion);
                $("#ApPaternoDocente").val(APaterno);
                $("#ApMaternoDocente").val(AMaterno);


                var form = document.getElementById("miForm");

                form.submit();
                

            });


            $(document).on('click', '.eliminarDocente', function () {
                
                var id = $(this).parents("tr").attr("id");
                $("#RunDocente").val(id);

           //     var form = document.getElementById(miForm);
             //   form.action = "listarDocentes.aspx";
                $('#miForm').attr('action', 'listarDocentes.aspx');

                $('#miForm').submit();


            });
        
        });


        //$("#btnGuardarModifica").on("click", function () {
            
        //});

    </script>

</asp:Content>
