<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="liremessage.aspx.cs" Inherits="PrjWebCsFriendbookP1.liremessage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>

    <style type="text/css">
        body {
    font-family: 'Poppins', sans-serif;
    background-color: #fce4ec;
    margin: 0;
    padding: 0;
    display: flex;
    justify-content: center;
    align-items: center;
    height: 100vh;
    background: linear-gradient(135deg, #ffafbd, #ffc3a0);
}

.container {
    background-color: #ffffff;
    width: 600px;
    padding: 40px;
    border-radius: 20px;
    box-shadow: 0 15px 35px rgba(0, 0, 0, 0.15);
    border: 1px solid #f3f3f3;
    position: relative;
    text-align: center;
    animation: fadeIn 0.7s ease-in-out;
}

@keyframes fadeIn {
    0% { opacity: 0; transform: scale(0.95); }
    100% { opacity: 1; transform: scale(1); }
}

h1 {
    font-size: 2.5em;
    color: #ff5a5f;
    margin-bottom: 30px;
    font-weight: 700;
    text-shadow: 0 3px 6px rgba(0, 0, 0, 0.1);
}

.message-content {
    text-align: left;
    font-size: 1.2em;
    color: #4a4a4a;
    margin-bottom: 20px;
    line-height: 1.8;
    padding: 10px 20px;
    border-radius: 10px;
    background-color: #f9f9f9;
    box-shadow: inset 0 1px 4px rgba(0, 0, 0, 0.05);
}

.buttons {
    display: flex;
    justify-content: space-between;
    margin-top: 30px;
}

.btnRetour {
    flex: 1;
    padding: 15px;
    margin: 5px;
    border: none;
    border-radius: 50px;
    font-size: 1.1em;
    cursor: pointer;
    background-color: #ff5a5f;
    color: #ffffff;
    text-transform: uppercase;
    font-weight: 600;
    transition: background-color 0.3s ease, transform 0.2s ease, box-shadow 0.2s ease;
    box-shadow: 0 5px 10px rgba(255, 90, 95, 0.2);
}

.btnRetour:hover {
    background-color: #e54954;
    transform: translateY(-3px);
    box-shadow: 0 7px 14px rgba(255, 90, 95, 0.3);
}

hr {
    border: none;
    border-top: 1px solid #e6e6e6;
    margin: 20px 0;
    width: 80%;
}
    </style>
<body>
    <form id="form1" runat="server">
               <div>

            <h1 style="text-align:center">LAVALIFE<br />
    Lire Message
</h1>
<hr style="width:600px" />
<p>
    <asp:Label ID="lblMessage" runat="server" Font-Bold="true" Text="Label"></asp:Label>
</p>
<hr style="width:600px" />
         
                   <asp:Button ID="btnRetour" runat="server" Text="Retourner a la Boite des Messages" OnClick="btnRetour_Click" CssClass="btnRetour"/>
        </div>
    </form>
</body>
</html>
