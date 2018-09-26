<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="FormCadUsuario.aspx.cs" Inherits="Web1.Adm.FormCadUsuario" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<link href="CSS/Estilo.css" rel="stylesheet" />
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
         <div class =" login_form">
            <label class="Label_login"  id  ="LblName" title="Nome">Name</label>          
            <input type="text" runat="server" id="TxtName" class="input" title="Digite seu nome aqui."/>           
            <label class="Label_login" id  ="LblCpf" title="CPF">CPF</label>           
            <input type="text" runat="server" id="TxtCpf" class="input" title="Digite seu CPF aqui." /> 
             <label class="Label_login" id  ="LblLogin"title="Login">Login</label>           
            <input type="text" runat="server" id="TxtLogin" class="input" title="Digite seu Login aqui." /> 
             <label class="Label_login" id  ="LblPassword" title="Senha">Senha</label>           
            <input type="text" runat="server" id="TxtPassword" class="input" title="Digite sua Senha aqui." /> 
             <label class="Label_login" id  ="LblConfirmPassword" title="Confirmar Senha">Confirmar Senha</label>           
            <input type="text" runat="server" id="TxtConfirmPassword" class="input" title="Confimrme sua Senha aqui."/> 
            <asp:Button text="Create" runat="server" id="Save" class="btn_green" OnClick="Save_Click" />
            
        </div>
    </form>
</body>
</html>
