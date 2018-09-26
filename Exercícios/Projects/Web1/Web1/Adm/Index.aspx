<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Index.aspx.cs" Inherits="Web1.Adm.Index" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<link href="./CSS/Estilo.css" rel="stylesheet" />
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div class =" login_form">
            <label class="Label_login"  id  ="LblLogin">Login</label>          
            <input type="text" runat="server" id="TxtLogin" class="input"/>           
            <label class="Label_login" id  ="LblPassword">Senha</label>           
            <input type="text" runat="server" id="TxtPassword" class="input" /> 
            <asp:Button text="Sign in" runat="server" id="Sign_in" class="btn_green" OnClick="Sign_in_Click" />
            <asp:Button text="Create user" runat="server" id="btnCreateUser" class="btn_green" Onclick="btnCreateUser_Click" Style="margin-left:250px" />
            <div id="Login_Resultado" runat="server"> 
            <asp:TextBox runat="server" id="resultado" class="Resultado"/>  
        </div>
        </div>
    </form>
</body>
</html>
