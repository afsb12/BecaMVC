<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="FormCadUserAjax.aspx.cs" Inherits="Web1.Adm.FormCadUserAjax" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<link href="CSS/Estilo.css" rel="stylesheet" />
<head runat="server">
    <script src="https://ajax.googleapis.com/ajax/libs/jqueryui/1.8/jquery-ui.min.js" type="text/javascript"></script>
    <script
        src="https://code.jquery.com/jquery-3.3.1.min.js" integrity="sha256-FgpCb/KJQlLNfOu91ta32o/NMZxltwRo8QtmkMRdAu8=" crossorigin="anonymous"></script>
    <script>    
        function RegisterUser() {

            var name = $('#txtNameAjax').val();
            var cpf = $('#txtCpfAjax').val();
            var login = $('#txtLoginAjax').val();
            var password = $('#txtPasswordAjax').val();
            var confpassword = $('#txtConfirmPasswordAjax').val();  

            if (password != confpassword) {
                alert("As senhas não Coicidem. Por favor tente novamente.");
                return;
            }
            else {
                
                var obj = new Object();
                obj.Nome = name;
                obj.CPF = cpf;
                obj.Login = login;
                obj.Password = password;
                obj.ConfPassword = confpassword;

                var parametros = JSON.stringify(obj);

                $.ajax({
                    type: "POST",
                    url: "FormCadUserAjax.aspx/RegistryUser",
                    contentType: "application/json; charset=utf-8",
                    data: parametros,
                    datatype: "Json",
                    success: function (result, status) {
                        alert("funciona!");
                    },
                    failure: function (erro) {
                        alert("deu erro!");
                    }

                });
            }

        }
    </script>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div class=" login_form">
            <label class="Label_login" id="LblName" title="Nome">Name</label>
            <input type="text" id="txtNameAjax" class="input" title="Digite seu nome aqui." />
            <label class="Label_login" id="LblCpf" title="CPF">CPF</label>
            <input type="text" id="txtCpfAjax" class="input" title="Digite seu CPF aqui." />
            <label class="Label_login" id="LblLogin" title="Login">Login</label>
            <input type="text"  id="txtLoginAjax" class="input" title="Digite seu Login aqui." />
            <label class="Label_login" id="LblPassword" title="Senha">Senha</label>
            <input type="password"  id="txtPasswordAjax" class="input" title="Digite sua Senha aqui." />
            <label class="Label_login" id="LblConfirmPassword" title="Confirmar Senha">Confirmar Senha</label>
            <input type="password" id="txtConfirmPasswordAjax" class="input" title="Confimrme sua Senha aqui." />
            <br />
            <br />
            <asp:Button Text="Create" runat="server" ID="Save" class="btn_green" />
            <input type="Button" name="btn_Save" value="Save User" onclick="RegisterUser();" />
        </div>
    </form>
</body>
</html>
