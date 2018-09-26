using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Services;
using System.Web.UI;
using System.Web.UI.WebControls;
using Web1.Controller.Controller;
using Web1.Controller.Model;

namespace Web1.Adm
{
    public partial class FormCadUserAjax : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        [WebMethod]
        public static string RegistryUser(string Nome, string CPF, string Login, string Password, string ConfPassword)
        {

            if (Password == ConfPassword)
            {
                Users gravaUsers = new UserController().InsertUser(Nome,CPF,Login,Password);
            }
            return null;
        }
    }
}