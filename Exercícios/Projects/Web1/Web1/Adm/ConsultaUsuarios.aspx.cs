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
    public partial class ConsultaUsuarios : System.Web.UI.Page
    {
  
        protected void Page_Load(object sender, EventArgs e)
        {
            List<Users> listUsers = new UserController().ConsultUsers();
           
            if (listUsers.Count > 0)
            {
                StringBuilder gridUser = new StringBuilder();

                foreach (var user in listUsers)
                {
                    gridUser.Append(" <tr>");
                    gridUser.Append(String.Format(" <td>{0}</td> ", user.CadastryDate));
                    gridUser.Append(String.Format(" <td>{0}</td> ", user.FullName));
                    gridUser.Append(String.Format(" <td>{0}</td> ", user.Cpf));
                    gridUser.Append(String.Format(" <td>{0}</td> ", user.Userlogin));
                    gridUser.Append(" <tr>");
                }

                resultUser.InnerHtml = gridUser.ToString();
            }     
        }
    }
}