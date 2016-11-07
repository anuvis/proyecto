using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using AcompañamientoDocente.clases;

namespace AcompañamientoDocente.administrador
{
    public partial class agregarDocente : System.Web.UI.Page
    {

        Datos claseDatos = new Datos();

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnEnviar_Click(object sender, EventArgs e)
        {
            string html = string.Empty;
            string sql = "INSERT INTO DOCENTE(RunDocente, NombreDocente, ApPaternoDocente, ApMaternoDocente, Fono, Email, Profesion) " +
            " VALUES('"+ txtRunDocente.Text +"','" + txtNomDocente.Text + "', '" + txtApPaternoDocente.Text + "','"+ txtApMaternoDocente.Text +"','"+ txtFono.Text +"','"+ txtMail.Text +"','"+ txtProfesion.Text +"')";

            if (claseDatos.insertar(sql))
            {
               html += "<div class='alert alert-success alert-dismissable'>";
               html += "<button type='button' class='close' data-dismiss='alert' aria-hidden='true'>&times;</button>";
               html += "Datos insertados correctamente";
               html += " </div>";


               Alerta.Text = html;
             

               txtRunDocente.Text = "";
               txtNomDocente.Text = "";
               txtApPaternoDocente.Text = "";
               txtApMaternoDocente.Text = "";
               txtFono.Text = "";
               txtMail.Text = "";
               txtProfesion.Text = "";

            }
            else
            {
                html += "<alert alert-danger alert-dismissable'>";
                html += "<button type='button' class='close' data-dismiss='alert' aria-hidden='true'>&times;</button>";
                html += "Error al insertar los datos";
                html += " </div>";

                Alerta.Text = html;
            }

        }

        protected void btnLimpiar_Click(object sender, EventArgs e)
        {

            txtRunDocente.Text = "";
            txtNomDocente.Text = "";
            txtApPaternoDocente.Text = "";
            txtApMaternoDocente.Text = "";
            txtFono.Text = "";
            txtMail.Text = "";
            txtProfesion.Text = "";

        }
    }
}