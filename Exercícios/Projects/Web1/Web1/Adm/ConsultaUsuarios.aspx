<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ConsultaUsuarios.aspx.cs" Inherits="Web1.Adm.ConsultaUsuarios" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<link href="CSS/Estilo.css" rel="stylesheet" />
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server" class="login_form">
        <div style="width: 546px">
            <h1>Consulta de Usuários</h1>
            <table>
                <thead>
                    <tr>
                        <th>Nome Completo</th>
                        <th>CPF</th>
                        <th>Login</th>
                        <th>Data</th>
                    </tr>
                </thead>
                <tbody id="resultUser" runat="server" >   

                </tbody>
            </table>
        </div>
        <div>
        </div>

    </form>
</body>
</html>
