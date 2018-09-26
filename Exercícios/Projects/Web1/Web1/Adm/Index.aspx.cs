using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Web1.Adm
{
    public partial class Index : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            
            
        }

        private bool Verify_Login(string login, string password)
        {
            string _login = "alisson";
            string _password = "123";
            if (login == _login && password==_password)
            {
                return true;
            }
            else
            {
                return false;
            }

        }

        protected void Sign_in_Click(object sender, EventArgs e)
        {
            string login = TxtLogin.Value;
            string password = TxtPassword.Value;
            if (Verify_Login(login, password))
            {
                resultado.Text = "Logado!";
                
            }
            else
            {

                resultado.Text = "login e Senha Inválido";
            }
        }

        protected void btnCreateUser_Click(object sender, EventArgs e)
        {
            Response.Redirect("FormCadUsuario.aspx");
        }
    }
}