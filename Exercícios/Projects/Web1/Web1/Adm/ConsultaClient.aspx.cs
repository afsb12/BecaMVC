using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Web1.Controller.Controller;
using Web1.Controller.Model;

namespace Web1.Adm
{
    public partial class ConsultaClient : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            List<Company> listClient = new CompanyController().ConsultClient();

            if (listClient.Count > 0)
            {
                StringBuilder gridClient = new StringBuilder();

                foreach (var client in listClient)
                {
                    gridClient.Append(" <tr>");
                    gridClient.Append(String.Format(" <td>{0}</td> ", client.NameCompany));
                    gridClient.Append(String.Format(" <td>{0}</td> ", client.CNPJ));
                    gridClient.Append(String.Format(" <td>{0}</td> ", client.EmailCompany));
                    gridClient.Append(String.Format(" <td>{0}</td> ", client.PhoneCompany));
                    gridClient.Append(" <tr>");
                }

                resultClient.InnerHtml = gridClient.ToString();
            }
        }
    }
}