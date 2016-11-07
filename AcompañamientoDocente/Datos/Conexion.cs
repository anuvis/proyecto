using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

namespace AcompañamientoDocente.Datos
{
    public class Conexion
    {
        private string cadena= @"Data Source=(LocalDB)\v11.0;AttachDbFilename=|DataDirectory|\AComDocBD.mdf;Integrated Security=True";
        public SqlConnection cn;
        public SqlDataAdapter da;
        public DataSet ds = new DataSet();
        public SqlCommand comando;


        /*metodo que conecta la DB*/
        public void Conectar()
        {
            cn = new SqlConnection(cadena);
        }

        public Conexion()
        {
            Conectar();
        }


        /*Carga la tabla de cualquier DB*/
        public DataTable consultaTabla(string tabla)
        {
            string sql = "select * from " + tabla;
            da = new SqlDataAdapter(sql, cn);
            DataSet dts = new DataSet();
            da.Fill(dts, tabla);
            DataTable dt = new DataTable();
            dt = dts.Tables[tabla];
            return dt;
        }
        /*retorna para insertar datos*/
        public bool insertar(string sql)
        {
            cn.Open();
            comando = new SqlCommand(sql, cn);
            int i = comando.ExecuteNonQuery();
            cn.Close();

            if (i > 0)
            {

                return true;
            }
            else
            {
                return false;
            }

        }
        /*modifica la tabla de los datos*/
        public bool modificar(string sql)
        {
            cn.Open();
            comando = new SqlCommand(sql, cn);
            int i = comando.ExecuteNonQuery();
            cn.Close();

            if (i > 0)
            {

                return true;
            }
            else
            {
                return false;
            }

        }
        /*Elimina un dato de las tablas*/
        public bool eliminar(string sql)
        {
            cn.Open();
            comando = new SqlCommand(sql, cn);
            int i = comando.ExecuteNonQuery();
            cn.Close();

            if (i > 0)
            {

                return true;
            }
            else
            {
                return false;
            }

        }






    }
}