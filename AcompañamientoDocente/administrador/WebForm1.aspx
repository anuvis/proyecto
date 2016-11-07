<%@ Page Title="" Language="C#" MasterPageFile="~/plantillas/plantillaHomeAdmin.Master" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="AcompañamientoDocente.administrador.WebForm1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="regionTitulo" runat="server">
    Nuevo Usuario
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
                                            <asp:TextBox ID="txtRunUsuario" runat="server" CssClass="form-control" placeholder="18545789-5"></asp:TextBox>
                                        
                                            <label>Nombres Docente : </label>
                                            <asp:TextBox ID="txtNomUsuario" runat="server" CssClass="form-control" placeholder="Nombres"></asp:TextBox>

                                        
                                            <label>Apellido Paterno : </label>
                                            <asp:TextBox ID="txtApPaternoUsuario" runat="server" CssClass="form-control" placeholder="Apellido Paterno"></asp:TextBox>
                                            
                                        
                                            <label>Apellido Materno : </label>
                                            <asp:TextBox ID="txtApMaternoUsuario" runat="server" CssClass="form-control" placeholder="Apellido Materno"></asp:TextBox>
                                       
                                            <label>Fono : </label>
                                            <asp:TextBox ID="txtEmail" runat="server" CssClass="form-control" placeholder="987568743"></asp:TextBox>
                                        
                                            
                                        </div>
                                                                                
                                       <asp:Button ID="btnEnviardatos" text="Guardar" CssClass="btn btn-primary" runat="server" OnClick="btnEnviardatos_Click" />
                                        <asp:Button ID="btnLimpiardatos" text="Limpiar" CssClass="btn btn-danger" runat="server" OnClick="btnLimpiardatos_Click" />
                                        
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
