using System;
using System.Collections.Generic;
using System.Text;
using System.Data.SqlClient;
using Web1.Controller.Model;
using System.Configuration;

namespace Web1.Controller.DAO
{
    internal class UserDB
    {
        string connect = ConfigurationManager.ConnectionStrings["ConnectDataBase"].ConnectionString;

        internal Users InsertUsers(string name, string cpf, string login, string password)
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
            return null;
        }

        internal List<Users> ConsultUsers()
        {
            List<Users> listUsers = new List<Users>();
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
                user.CadastryDate =Convert.ToDateTime(reader["DataCadastro"]).ToString();

                listUsers.Add(user);
            }
            con.Close();
            

            return listUsers;
        }
    }
}
