using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.Script.Serialization;
using System.Web.Services;
using System.Web.UI;
using System.Web.UI.WebControls;
using Web1.Controller.Model;

namespace Web1.Adm
{
    public partial class ConsultaUsuariosAjax : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        [WebMethod]
        public static string ListUsers()
        {
            List<Users> lstUsers = new List<Users>();
            string connect = ConfigurationManager.ConnectionStrings["ConnectDataBase"].ConnectionString;

            SqlConnection con = new SqlConnection(connect);
            string sqlQuery = "Select u.IdUser,u.Fullname,u.CPF,u.Userlogin , u.DataCadastro  from  Users u";
            SqlCommand comand = new SqlCommand(sqlQuery, con);
            con.Open();
            SqlDataReader reader = comand.ExecuteReader();
            while (reader.Read())
            {
                Users user = new Users();
                user.IdUser = Convert.ToInt32(reader["IdUser"].ToString());
                user.FullName = reader["FullName"].ToString();
                user.Cpf = reader["CPF"].ToString();
                user.Userlogin = reader["UserLogin"].ToString();
                user.CadastryDate = Convert.ToDateTime(reader["DataCadastro"]).ToString();

                lstUsers.Add(user);
            }

            var jsonSerializer = new JavaScriptSerializer();
            string result = jsonSerializer.Serialize(lstUsers);            

            con.Close();
            return result ;
        }

    }
}