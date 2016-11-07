using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;

namespace AcompañamientoDocente.clases
{
    public class Datos
    {
        private string cadena = @"Data Source=(LocalDB)\v11.0;AttachDbFilename=|DataDirectory|\AcomDocBD.mdf;Integrated Security=True";
        public SqlConnection cn;
        public SqlCommandBuilder cmb;

        private void conectar()
        {

            cn = new SqlConnection(cadena);
        }

        public Datos()
        {
            conectar();
        }


        //consultar por partes
        public DataSet ds = new DataSet();
        public SqlDataAdapter da;
        public void consultar(string sql, string tabla)
        {
            ds.Tables.Clear();
            da = new SqlDataAdapter(sql, cn);
            cmb = new SqlCommandBuilder(da);
            da.Fill(ds, tabla);

        }

        //insertar
        private SqlCommand comando;
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


        //consultar tabla
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


        //consulta un campo
        public DataTable consultaTabla(string tabla, string condicion)
        {
            string sql = "select * from " + tabla + " where " + condicion;
            da = new SqlDataAdapter(sql, cn);
            DataSet dts = new DataSet();
            da.Fill(dts, tabla);
            DataTable dt = new DataTable();
            dt = dts.Tables[tabla];
            return dt;


        }

        //eliminar
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

        //actualizar
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

    }
}