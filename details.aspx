<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="details.aspx.cs" Inherits="PrjWebCsFriendbookP1.details" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
  
     <title>User Details</title>
    <style>
        body {
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            background-color: #f4f4f4;
            margin: 0;
            padding: 0;
        }
        .container {
            width: 50%;
            margin: 50px auto;
            background-color: #fff;
            padding: 20px;
            box-shadow: 0px 0px 15px rgba(0, 0, 0, 0.1);
            border-radius: 10px;
        }
        .header {
            text-align: center;
            color: #007BFF;
            font-size: 2em;
            margin-bottom: 20px;
        }
        .info {
            font-size: 1.2em;
            color: #333;
        }
        .info p {
            margin: 10px 0;
        }
        .info p span {
            font-weight: bold;
            color: #007BFF;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="container">
            <h1 class="header">User Details</h1>
            <div class="info">
                <asp:Label ID="lblMessage" runat="server" Text=""></asp:Label>
            </div>

            <asp:Button ID="btnreturn" runat="server" Text="Retourner a la page de recherche" onclick="btnreturn_Click" CssClass="btnRetour"/>
        </div>
    </form>
</body>
</html>
