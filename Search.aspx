<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Search.aspx.cs" Inherits="PrjWebCsFriendbookP1.Search" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
       <style>
        body {
            font-family: 'Poppins', sans-serif;
            background-color: #f8f9fa;
            margin: 0;
            padding: 0;
            display: flex;
            justify-content: center;
            align-items: center;
            min-height: 100vh;
        }
        .container {
            width: 100%;
            max-width: 800px;
            padding: 20px;
            background-color: #ffffff;
            border-radius: 10px;
            box-shadow: 0 10px 20px rgba(0, 0, 0, 0.1);
            box-sizing: border-box;
        }
        h1 {
            text-align: center;
            color: #007bff;
            margin-bottom: 20px;
        }
        .form-group {
            margin-bottom: 20px;
        }
        label {
            display: block;
            font-size: 1em;
            color: #333;
            margin-bottom: 5px;
        }
        input[type="text"], select {
            width: calc(100% - 24px);
            padding: 12px;
            border-radius: 5px;
            border: 1px solid #ddd;
            background-color: #f9f9f9;
            color: #333;
            font-size: 1em;
            box-shadow: inset 0 1px 3px rgba(0, 0, 0, 0.1);
            transition: border-color 0.3s ease, box-shadow 0.3s ease;
        }
        input[type="text"]:focus, select:focus {
            border-color: #007bff;
            box-shadow: 0 0 8px rgba(0, 123, 255, 0.2);
            outline: none;
        }
        .form-group button {
            width: 100%;
            padding: 15px;
            border: none;
            border-radius: 5px;
            font-size: 1.1em;
            cursor: pointer;
            background-color: #007bff;
            color: #ffffff;
            text-transform: uppercase;
            font-weight: 600;
            transition: background-color 0.3s ease, transform 0.2s ease;
        }
        .form-group button:hover {
            background-color: #0056b3;
            transform: translateY(-2px);
        }
    </style>
<body>
    <form id="form1" runat="server">
      <div>
            <label for="AgeFrom">Âge:</label>
            <asp:TextBox ID="AgeFromTextBox" runat="server" Placeholder="De"></asp:TextBox>
            <asp:TextBox ID="AgeToTextBox" runat="server" Placeholder="À"></asp:TextBox>
        </div>
        <div>
            <label for="Country">Pays:</label>
            <asp:TextBox ID="CountryTextBox" runat="server"></asp:TextBox>
        </div>
        <div>
            <label for="Gender">Sexe:</label>
            <asp:DropDownList ID="GenderDropDown" runat="server">
               
            </asp:DropDownList>
        </div>
        <div>
            <label for="LookingForListBoxs">Cherche:</label>
          
                <asp:DropDownList ID="LookingForListBoxs" runat="server"></asp:DropDownList>
          
        </div>
        <div>
            <label for="Religion">Religion:</label>
            
        
          <asp:DropDownList ID="cboReligion" runat="server"></asp:DropDownList>
        </div>
       
        <div>
            <asp:Button ID="SearchButton" runat="server" Text="Rechercher" onclick="SearchButton_Click"/>
             <asp:Button ID="Button1" runat="server" Text="Retour" onclick="Button1_Click"/>
        </div>

 <br />
        <asp:Label ID="Label1" runat="server" Text=""></asp:Label>

    </form>
</body>
</html>
