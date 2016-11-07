using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using AcompañamientoDocente.clases;

namespace AcompañamientoDocente.administrador
{
    public partial class editarDocente : System.Web.UI.Page
    {
        Datos claseDatos = new Datos();

        protected void Page_Load(object sender, EventArgs e)
        {

            if (Request.Form["RunDocente"] != null)
            {
                string Run = Request.Form["RunDocente"];
                string Nombre = Request.Form["NombreDocente"];
                string ApPaterno = Request.Form["ApPaternoDocente"];
                string Fono = Request.Form["Fono"];
                string Email = Request.Form["Email"];
                string Profesion = Request.Form["Profesion"];
                string ApPaternoDocente = Request.Form["ApPaternoDocente"];
                string ApMaternoDocente = Request.Form["ApMaternoDocente"];

                txtRunDocente.Text = Run;
                txtNomDocente.Text = Nombre;
                txtApPaternoDocente.Text = ApPaternoDocente;
                txtApMaternoDocente.Text = ApMaternoDocente;
                txtFono.Text = Fono;
                txtMail.Text = Email;
                txtProfesion.Text = Profesion;
                //cmbprofesion.SelectedValue = idProfesion;


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

   
        protected void btnGuardar_Click(object sender, EventArgs e)
        {
            string html = string.Empty;
            string a = txtNomDocente.Text;
            string sql = "UPDATE DOCENTE SET NombreDocente = '" + txtNomDocente.Text + "', ApPaternoDocente = '" + txtApPaternoDocente.Text + "', ApMaternoDocente ='" + txtApMaternoDocente.Text + "', Fono ='" + txtFono.Text + "', Email='" + txtMail.Text + "', Profesion = '" + txtProfesion.Text + "' WHERE RunDocente = '" + txtRunDocente.Text + "'";

            if (claseDatos.modificar(sql))
            {
                html += "<div class='alert alert-success alert-dismissable'>";
                html += "<button type='button' class='close' data-dismiss='alert' aria-hidden='true'>&times;</button>";
                html += "Datos modificados correctamente";
                html += " </div>";

                Alerta.Text = html;
                Response.Redirect("listarDocentes.aspx");

            }
            else
            {
                html += "<alert alert-danger alert-dismissable'>";
                html += "<button type='button' class='close' data-dismiss='alert' aria-hidden='true'>&times;</button>";
                html += "Error al modificar los datos";
                html += " </div>";

                Alerta.Text = html;
            }
        }
    }
}