
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using AcompañamientoDocente.clases;

namespace AcompañamientoDocente.administrador
{
    public partial class WebForm1 : System.Web.UI.Page

    {
        Datos claseDatos = new Datos();
         

        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void btnEnviardatos_Click(object sender, EventArgs e)
        {
            string html = string.Empty;
            string sql = "INSERT INTO DOCENTE(RunUsuario, NombreUsuario, ApPaternoUsuario, ApMaternoUsuario, Email) " +
            " VALUES('" + txtRunUsuario.Text + "','" + txtNomUsuario.Text + "', '" + txtApPaternoUsuario.Text + "','" + txtApMaternoUsuario.Text + "','" + txtEmail.Text + "')";

            if (claseDatos.insertar(sql))
            {
                html += "<div class='alert alert-success alert-dismissable'>";
                html += "<button type='button' class='close' data-dismiss='alert' aria-hidden='true'>&times;</button>";
                html += "Datos insertados correctamente";
                html += " </div>";



                txtRunUsuario.Text = "";
                txtNomUsuario.Text = "";
                txtApPaternoUsuario.Text = "";
                txtApMaternoUsuario.Text = "";
                txtEmail.Text = "";
               

            }
            else
            {
                html += "<alert alert-danger alert-dismissable'>";
                html += "<button type='button' class='close' data-dismiss='alert' aria-hidden='true'>&times;</button>";
                html += "Error al insertar los datos";
                html += " </div>";


            }

        }

        protected void btnLimpiardatos_Click(object sender, EventArgs e)
        {

            txtRunUsuario.Text = "";
            txtNomUsuario.Text = "";
            txtApPaternoUsuario.Text = "";
            txtApMaternoUsuario.Text = "";
            txtEmail.Text = "";
        }
    }
}