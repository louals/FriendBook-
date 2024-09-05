<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WelcomePage.aspx.cs" Inherits="PrjWebCsFriendbookP1.WelcomePage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>

        <style>
        body {
            font-family: 'Poppins', sans-serif;
            margin: 0;
            padding: 0;
            background-color: #f8f9fa;
            color: #333;
        }
        .container {
            width: 80%;
            margin: auto;
            overflow: hidden;
            padding: 40px;
            background-color: #ffffff;
            border-radius: 15px;
            box-shadow: 0 10px 30px rgba(0, 0, 0, 0.1);
        }
        .centrer {
            text-align: center;
            margin-top: 20px;
        }
        h1 {
            font-size: 2.5em;
            color: #007bff;
            margin-bottom: 20px;
            font-weight: 700;
        }
        hr {
            width: 50%;
            border: 1px solid #ddd;
            margin-bottom: 30px;
        }
        #lblMessage {
            display: block;
            text-align: center;
            font-size: 1.2em;
            margin: 20px 0;
            color: #555;
        }
        #TabMessage {
            width: 100%;
            border-collapse: collapse;
            margin: 20px 0;
            font-size: 1em;
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
        }
        #TabMessage th, #TabMessage td {
            padding: 15px;
            border: 1px solid #ddd;
            text-align: left;
        }
        #TabMessage th {
            background-color: #007bff;
            color: #ffffff;
            text-transform: uppercase;
        }
        #TabMessage tr:nth-child(even) {
            background-color: #f9f9f9;
        }
        #TabMessage tr:hover {
            background-color: #f1f1f1;
        }
        #TabMessage a {
            color: #007bff;
            text-decoration: none;
        }
        #TabMessage a:hover {
            text-decoration: underline;
        }
        .button-container {
            display: flex;
            justify-content: flex-end;
            margin-top: 20px;
        }
        .aspNetButton {
            padding: 10px 20px;
            font-size: 1.1em;
            color: #ffffff;
            background-color: #28a745;
            border: none;
            border-radius: 5px;
            cursor: pointer;
            transition: background-color 0.3s ease, transform 0.2s ease;
        }
        .aspNetButton:hover {
            background-color: #218838;
            transform: translateY(-2px);
        }
        .aspNetButton1 {
    padding: 10px 20px;
    font-size: 1.1em;
    color: #ffffff;
    background-color: #ffd800;
    border: none;
    border-radius: 5px;
    cursor: pointer;
    transition: background-color 0.3s ease, transform 0.2s ease;
}
.aspNetButton1:hover {
    background-color: #f1e42b;
    transform: translateY(-2px);
}
    </style>
</head>
<body>
       <form id="form1" runat="server">
    <div class="container">
        <h1 class="centrer">LAVAL MESSAGES</h1>
        <hr>

        <asp:Label ID="lblMessage" Font-Bold="true" ForeColor="Brown" runat="server"></asp:Label>
        <br />

        <asp:Table ID="TabMessage" Font-Bold="true" Width="1400px" GridLines="Both" runat="server" CssClass="TabMessage">
            
        </asp:Table>

            <asp:Button ID="Composer" runat="server" Text="Composer" CssClass="aspNetButton" Onclick="Composer_Click"/>

            <asp:Button ID="Button1" runat="server" Text="Rechercher" CssClass="aspNetButton1" Onclick="Button1_Click"/>

    </div>
     </form>
</body>
</html>