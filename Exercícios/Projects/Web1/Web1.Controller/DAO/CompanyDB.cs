using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Text;
using Web1.Controller.Model;

namespace Web1.Controller.DAO
{
    public class CompanyDB
    {
        public CompanyDB()
        {

        }
        string connect = ConfigurationManager.ConnectionStrings["ConnectDataBase"].ConnectionString;

        internal Company InsertCompany(string name, string cnpj, string address, string email, string phone)
        {
            SqlConnection con = new SqlConnection(connect);
            string sqlQuery = "Insert into Company(NameCompany,cpnj,AddressCompany,EmailCompany,PhoneCompany) values (@Name, @cnpj, @AddressCompany, @EmailCompany, @PhoneCompany)";
            SqlCommand comand = new SqlCommand(sqlQuery, con);
            comand.Parameters.Add(new SqlParameter("@Name", name));
            comand.Parameters.Add(new SqlParameter("@cnpj", cnpj));
            comand.Parameters.Add(new SqlParameter("@AddressCompany", address));
            comand.Parameters.Add(new SqlParameter("@EmailCompany", email));
            comand.Parameters.Add(new SqlParameter("@PhoneCompany", phone));
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

        internal List<Company> ConsultCompany()
        {
            List<Company> listCompanies = new List<Company>();
            SqlConnection con = new SqlConnection(connect);
            string sqlQuery = "Select c.IdCompany ,c.NameCompany, c.cpnj ,c.EmailCompany , c.PhoneCompany  from  Company c";
            SqlCommand comand = new SqlCommand(sqlQuery, con);
            con.Open();
            SqlDataReader reader = comand.ExecuteReader();
            while (reader.Read())
            {
                Company company = new Company();
                company.IdCompany = Convert.ToInt32(reader["IdCompany"].ToString());
                company.NameCompany = reader["NameCompany"].ToString();
                company.CNPJ = reader["cpnj"].ToString();
                company.EmailCompany = reader["EmailCompany"].ToString();
                company.PhoneCompany = reader["PhoneCompany"].ToString();

                listCompanies.Add(company);
            }
            con.Close();


            return listCompanies;
        }
    }
}
