<%@ Page Title="" Language="C#" MasterPageFile="~/plantillas/plantillaHomeAdmin.Master" AutoEventWireup="true" CodeBehind="agregarDocente.aspx.cs" Inherits="AcompañamientoDocente.administrador.agregarDocente" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="regionTitulo" runat="server">
    Nuevo Docente
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="regionContenido" runat="server">

    <asp:Literal ID="Alerta" runat="server"></asp:Literal>

    <div class="row" >
                <div class="col-lg-12">
                    <div class="panel panel-default">
                        <div class="panel-heading">
                            Ingresar un Nuevo Docente 
                        </div>
                        <div class="panel-body">
                            <div class="row">
                                <div class="col-lg-6">
                                    <form role="form" runat="server">
                                        
                                        <div class="form-group">
                                            <label>RUN : </label>
                                            <asp:TextBox ID="txtRunDocente" runat="server" CssClass="form-control" placeholder="18545789-5"></asp:TextBox>
                                        
                                            <label>Nombres Docente : </label>
                                            <asp:TextBox ID="txtNomDocente" runat="server" CssClass="form-control" placeholder="Nombres"></asp:TextBox>

                                        
                                            <label>Apellido Paterno : </label>
                                            <asp:TextBox ID="txtApPaternoDocente" runat="server" CssClass="form-control" placeholder="Apellido Paterno"></asp:TextBox>
                                            
                                        
                                            <label>Apellido Materno : </label>
                                            <asp:TextBox ID="txtApMaternoDocente" runat="server" CssClass="form-control" placeholder="Apellido Materno"></asp:TextBox>
                                       
                                            <label>Fono : </label>
                                            <asp:TextBox ID="txtFono" runat="server" CssClass="form-control" placeholder="987568743"></asp:TextBox>
                                        
                                            <label>E-mail : </label>
                                            <asp:TextBox ID="txtMail" runat="server" CssClass="form-control" placeholder="ejemplo@email.com"></asp:TextBox>
                                        
                                            <label>Profesión : </label>
                                            <asp:TextBox ID="txtProfesion" runat="server" CssClass="form-control" placeholder="Profesión"></asp:TextBox>
                                        </div>
                                                                                
                                        <asp:Button ID="btnEnviar" text="Guardar" CssClass="btn btn-primary" runat="server" OnClick="btnEnviar_Click" />
                                        <asp:Button ID="btnLimpiar" text="Limpiar" CssClass="btn btn-danger" runat="server" OnClick="btnLimpiar_Click" />

                                        
                                    </form>
                                </div>
                               
                            </div>
                            <!-- /.row (nested) -->
                        </div>
                        <!-- /.panel-body -->
                    </div>
                    <!-- /.panel -->
                </div>
                <!-- /.col-lg-12 -->
            </div>
</asp:Content>
