<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ConsultaUsuariosAjax.aspx.cs" Inherits="Web1.Adm.ConsultaUsuariosAjax" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<link href="CSS/Estilo.css" rel="stylesheet" />
<head runat="server">
    <title></title>
     <script src="https://ajax.googleapis.com/ajax/libs/jqueryui/1.8/jquery-ui.min.js" type="text/javascript"></script>
    <script
        src="https://code.jquery.com/jquery-3.3.1.min.js" integrity="sha256-FgpCb/KJQlLNfOu91ta32o/NMZxltwRo8QtmkMRdAu8=" crossorigin="anonymous"></script>
        
    <script>    
        window.onload = function () {
            $.ajax({
                type: "POST",
                url: "ConsultaUsuariosAjax.aspx/ListUsers",
                contentType: "application/json; charset = utf-8",
                dataType: "json",
                success: function (result, status) {
                    var trHTML = '';
                    $('#resultUser').empty();
                    $.each(JSON.parse(result.d), function (idx, obj) {
                        trHTML += '<tr><td>' + obj.FullName +
                            '</td><td>' + obj.Cpf +
                            '</td><td>' + obj.Userlogin +
                            '</td><td>' + obj.CadastryDate
                        '</td></tr>'
                    })
                    $('#resultUser').append(trHTML);
                }, failure: function (erro) {
                    alert("deu erro");
                }
            });
        };
    </script>
</head>
<body>
    <form id="form1" runat="server">
        <div style="width: 546px" class="login_form">
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
                <tbody id="resultUser" runat="server">
                </tbody>
            </table>
        </div>
    </form>
</body>
</html>
