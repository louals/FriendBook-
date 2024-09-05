<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="SearchResult.aspx.cs" Inherits="PrjWebCsFriendbookP1.SearchResult" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
    <style>
   
        .centrer {
            text-align: center;
            color: #333;
            font-size: 2.5em;
            margin-bottom: 30px;
            font-weight: 700;
        }
        .TabMessage {
            width: 100%;
            border-collapse: collapse;
            margin-top: 30px;
        }
        .TabMessage th, .TabMessage td {
            padding: 15px;
            text-align: left;
            border-bottom: 1px solid #ddd;
            font-size: 1.1em;
        }
        .TabMessage th {
            background-color: #007BFF;
            color: white;
            font-weight: 600;
            text-transform: uppercase;
        }
        .TabMessage tr:hover {
            background-color: #f8f9fa;
        }
        .TabMessage td a {
            color: #007BFF;
            text-decoration: none;
            font-weight: bold;
            transition: color 0.2s ease;
        }
        .TabMessage td a:hover {
            color: #0056b3;
            text-decoration: underline;
        }
        hr {
            border: 0;
            height: 1px;
            background: #ddd;
            margin-bottom: 30px;
        }
        .no-results {
            text-align: center;
            color: #888;
            font-size: 1.8em;
            margin-top: 30px;
        }
    </style>
<body>
    <form id="form1" runat="server">
 
            <div class="container">
    <h1 class="centrer">LAVAL Results</h1>
    <hr>

    <asp:Label ID="lblMessage" Font-Bold="true" ForeColor="Brown" runat="server"></asp:Label>
    <br />

    <asp:Table ID="TAB" Font-Bold="true" Width="1400px" GridLines="Both" runat="server" CssClass="TabMessage">
        
    </asp:Table>

</div>
       
    </form>
</body>
</html>
