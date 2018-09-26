<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ConsultaClient.aspx.cs" Inherits="Web1.Adm.ConsultaClient" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<link href="CSS/Estilo.css" rel="stylesheet" />
<head runat="server">
    <script src="https://ajax.googleapis.com/ajax/libs/jqueryui/1.8/jquery-ui.min.js" type="text/javascript"></script>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div style="width: 546px" class="login_form">
            <h1>Consulta de Clientes</h1>
            <table>
                <thead>
                    <tr>
                        <th>Nome do Cliente</th>
                        <th>CNPJ</th>
                        <th>Email</th>
                        <th>Phone</th>
                    </tr>
                </thead>
                <tbody id="resultClient" runat="server">
                </tbody>
            </table>
        </div>
    </form>
</body>
</html>
