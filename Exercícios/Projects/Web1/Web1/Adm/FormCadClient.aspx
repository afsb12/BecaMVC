<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="FormCadClient.aspx.cs" Inherits="Web1.Adm.FormCadClient" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<link href="CSS/Estilo.css" rel="stylesheet" />
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <div class =" login_form">
            <label class="Label_login"  id  ="LblCompanyName" title="Nome">Nome do Cliente</label>          
            <input type="text" runat="server" id="TxtCompanyName" class="input" title="Digite o nome da companhia aqui."/>           
            <label class="Label_login" id  ="LblCnpj" title="CPF">CNPJ</label>           
            <input type="text" runat="server" id="TxtCnpj" class="input" title="Digite o CNPJ aqui." /> 
            <label class="Label_login" id  ="LblCompanyAddress"title="CompanyAddress">Endereço</label>           
            <input type="text" runat="server" id="TxtCompanyAddress" class="input" title="Digite o Endereço aqui." /> 
            <label class="Label_login" id  ="LblCompanyEmail"title="CompanyEmail">Email</label>           
            <input type="text" runat="server" id="TxtCompanyEmail" class="input" title="Digite o Email da empresa aqui." />  
            <label class="Label_login" id  ="LblCompanyPhone"title="CompanyPhone">Telefone</label>           
            <input type="text" runat="server" id="TxtCompanyPhone" class="input" title="Digite o Telefone da empresa aqui." />            
            <asp:Button text="Save" runat="server" id="SaveCompany" class="btn_green" Onclick="SaveCompany_Click" />
        </div>
        </div>
    </form>
</body>
</html>
