using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using AcompañamientoDocente.clases;
using System.Data;

namespace AcompañamientoDocente.administrador
{
    public partial class listarDocentes : System.Web.UI.Page
    {
        Datos ClaseDatos = new Datos();
        string html = string.Empty;

        protected void Page_Load(object sender, EventArgs e)
        {

            if(Request.Form["RunDocente"] != null){

                string Run = Request.Form["RunDocente"];
                string sql = "DELETE DOCENTE WHERE RunDocente = '" + Run +"'";

                if(ClaseDatos.eliminar(sql)){

                    
                    html += "<div class='alert alert-success alert-dismissable'>";
                    html += "<button type='button' class='close' data-dismiss='alert' aria-hidden='true'>&times;</button>";
                    html += "Docente Eliminado correctamente";
                    html += " </div>";

                    Alerta.Text = html;

                
                } 
                else {

                    html += "<div class='alert alert-danger alert-dismissable'>";
                    html += "<button type='button' class='close' data-dismiss='alert' aria-hidden='true'>&times;</button>";
                    html += "Error al Eliminar el Docente";
                    html += " </div>";

                    Alerta.Text = html;
                
                }
            }

            ////////////////////////////////////////////////////////

            
            

            DataTable tablaDocente = ClaseDatos.consultaTabla("DOCENTE");

            string html1 = string.Empty;
            foreach (DataRow row in tablaDocente.Rows) // Loop over the rows.

            {
                
                
                html1 += "<tr id='" + row["RunDocente"] + "'>";
                html1 += "<td>" + row["RunDocente"] + "</td>";
                html1 += "<td>" + row["NombreDocente"] + "</td>";
                html1 += "<td>" + row["ApPaternoDocente"] +" "+ row["ApMaternoDocente"] + "</td>";
                html1 += "<td>" + row["Fono"] + "</td>";
                html1 += "<td>" + row["Email"] + "</td>";
                html1 += "<td>" + row["Profesion"] + "</td>";
                html1 += "<td align='center'><a class='editarDocente' style='cursor:pointer;' > <i class='fa fa-pencil'> </i> </a>";
                html1 += "<a class='eliminarDocente' style='cursor:pointer;'> <i class='fa fa-trash-o'> </i> </a></td>";
                html1 += "<td>" + row["ApPaternoDocente"] + "</td>";
                html1 += "<td>" + row["ApMaternoDocente"] + "</td>";
                html1 += "<td>" + row["RunDocente"] + "</td>";
                html1 += "</tr>";
                /*
                html += "<tr class='odd gradeX'>";
                html += "<td class='StormyWeatherDataTD2'>" + row["NombreDocente"].ToString() + "</td>";
                html += "<td class='StormyWeatherDataTD2'>" + row["ApPaternoDocente"].ToString() + "</td>";
                html += "</tr>";*/


                //onclick='abrirPopUpModifica();'>
            }

            filasTabla.Text = html1;
        }

    }
}