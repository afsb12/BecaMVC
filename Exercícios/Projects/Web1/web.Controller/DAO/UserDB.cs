using System;
using System.Collections.Generic;
using System.Configuration;
using System.Text;
using System.Data.SqlClient;
using Web.Controller.Model;

namespace Web.Controller.DAO
{
    internal class UserDB
    {
        string connect = ConfigurationManager.ConnectionStrings["ConnectDataBase"].ConnectionString;
        
        internal Users InsertUsers(string name,string cpf, string login, string password)
        {
            SqlConnection con = new SqlConnection(connect);
            string sqlQuery = "Insert into Users(FullName,CPF,Userlogin,UserSenha) values (@FullName, @CPF, @Userlogin, @UserSenha)";
            SqlCommand comand = new SqlCommand(sqlQuery, con);
            comand.Parameters.Add(new SqlParameter("@FullName", name));
            comand.Parameters.Add(new SqlParameter("@CPF", cpf));
            comand.Parameters.Add(new SqlParameter("@Userlogin", login));
            comand.Parameters.Add(new SqlParameter("@UserSenha", password));
            try
            {
                con.Open();
                comand.ExecuteNonQuery();
            }
            catch (Exception e)
            {
                throw new Exception("Houve um problema na gravação dos dados!" + e);
            }
            finally
            {
                con.Close();
            }
        }
    }
}
