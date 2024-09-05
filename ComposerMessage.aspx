<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ComposerMessage.aspx.cs" Inherits="PrjWebCsFriendbookP1.ComposerMessage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Envoyer un Message</title>
    <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@400;600;700&display=swap" rel="stylesheet">
    <style type="text/css">
        body {
            font-family: 'Poppins', sans-serif;
            background-color: #ffefef;
            margin: 0;
            padding: 0;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
        }

        .container {
            background-color: #ffffff;
            width: 600px;
            padding: 40px;
            border-radius: 15px;
            box-shadow: 0 10px 30px rgba(0, 0, 0, 0.1);
            border: 1px solid #e6e6e6;
            position: relative;
            text-align: center;
        }

        h1 {
            font-size: 2.5em;
            color: #ff5a5f;
            margin-bottom: 30px;
            font-weight: 700;
        }

        label {
            display: block;
            margin-bottom: 10px;
            color: #4a4a4a;
            font-size: 1.1em;
            text-align: left;
        }

        input[type="text"], textarea, select {
            width: 100%;
            padding: 15px;
            border-radius: 5px;
            border: 1px solid #cccccc;
            background-color: #f9f9f9;
            color: #333;
            margin-bottom: 20px;
            font-size: 1em;
            box-shadow: inset 0 1px 3px rgba(0, 0, 0, 0.1);
            transition: border-color 0.3s ease, box-shadow 0.3s ease;
        }

        input[type="text"]:focus, textarea:focus, select:focus {
            border-color: #ff5a5f;
            box-shadow: 0 0 10px rgba(255, 90, 95, 0.1);
            outline: none;
        }

        .buttons {
            display: flex;
            justify-content: space-between;
            margin-top: 30px;
        }

        .buttons .aspNetButton {
            flex: 1;
            padding: 15px;
            margin: 5px;
            border: none;
            border-radius: 50px;
            font-size: 1em;
            cursor: pointer;
            background-color: #ff5a5f;
            color: #ffffff;
            text-transform: uppercase;
            font-weight: 600;
            transition: background-color 0.3s ease, transform 0.2s ease;
        }

        .buttons .aspNetButton:hover {
            background-color: #e54954;
            transform: translateY(-3px);
        }

        .error-message {
            text-align: center;
            color: #ff5a5f;
            margin-top: 15px;
            font-size: 1.1em;
            display: none;
        }

        .neon-glow {
            color: #ff5a5f;
            text-shadow: 0 0 10px rgba(255, 90, 95, 0.5);
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="container neon-glow">
            <h1>Envoyer un Message</h1>
                 <asp:Label ID="lbl" runat="server"></asp:Label>
            <label for="cboDestinataires">Destinataire du message:</label>
            <asp:DropDownList ID="cboDestnataires" Font-Bold="true" runat="server" Width="100%"></asp:DropDownList>
             
            <label for="txtTitre">Titre du message:</label>
            <asp:TextBox ID="txtTitre" runat="server"></asp:TextBox>

            <label for="txtMessage">Message:</label>
            <asp:TextBox ID="txtMessage" runat="server" TextMode="MultiLine" Height="150px"></asp:TextBox>

            <div class="buttons">
                <asp:Button ID="btnEnvoie" runat="server" Text="Envoyer" CssClass="aspNetButton" OnClick="btnEnvoie_Click" />
                <asp:Button ID="btnEffacer" runat="server" Text="Effacer" CssClass="aspNetButton" onclick="btnEffacer_Click"/>
                <asp:Button ID="btnAnnuler" runat="server" Text="Annuler" CssClass="aspNetButton" onclick="btnAnnuler_Click"/>
            </div>


        </div>
                           

    </form>
</body>
</html>