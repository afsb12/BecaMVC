using System;
using Web1.Controller.Model;
using Web1.Controller.Controller;

namespace Web1.Adm
{
    public partial class FormCadUsuario : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Save_Click(object sender, EventArgs e)
        {
            string _name = this.TxtName.Value;
            string _cpf = this.TxtCpf.Value;
            string _login = this.TxtLogin.Value;
            string _password = this.TxtPassword.Value;
            string _confirmPassword = this.TxtConfirmPassword.Value;

            if (_password != _confirmPassword)
            {
                Response.Write("<script>alert('As senhas não iguais. Por favor digite uma nova senha!')</script>");
            }
            else
            {
                Response.Write("<script>alert('Cadastro quase salvo com sucesso!')</script>");
            }

            Users gravaUser = new UserController().InsertUser(_name, _cpf, _login, _password);
        }
    }
}