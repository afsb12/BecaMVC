using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Web1.Controller.Controller;
using Web1.Controller.Model;

namespace Web1.Adm
{
    public partial class FormCadClient : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void SaveCompany_Click(object sender, EventArgs e)
        {
            string _name = this.TxtCompanyName.Value;
            string _cpnj = this.TxtCnpj.Value;
            string _address = this.TxtCompanyAddress.Value;
            string _email = this.TxtCompanyEmail.Value;
            string _phone = this.TxtCompanyPhone.Value;

            Company gravaUser = new CompanyController().InsertCompany(_name, _cpnj, _address, _email, _phone);
            Response.Write("<script>alert('Cadastro quase salvo com sucesso!')</script>");

            this.TxtCompanyName.Value = "";
            this.TxtCnpj.Value = "";
            this.TxtCompanyAddress.Value = "";
            this.TxtCompanyEmail.Value = "";
            this.TxtCompanyPhone.Value = "";

        }
    }
}