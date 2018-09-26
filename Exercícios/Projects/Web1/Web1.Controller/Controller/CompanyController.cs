using System;
using System.Collections.Generic;
using Web1.Controller.DAO;
using Web1.Controller.Model;

namespace Web1.Controller.Controller
{
    public class CompanyController
    {

        public Company InsertCompany(string name, string cnpj, string address, string email, string phone)
        {
            return new CompanyDB().InsertCompany(name, cnpj, address, email, phone);
        }

        public List<Company> ConsultClient()
        {
            return new CompanyDB().ConsultCompany();
        }
    }
}
