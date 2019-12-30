<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="WebApplication1.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
    <style>
        body
        {
            font-family: @'Malgun Gothic';
            font-size: 1em;
            color: purple;
            background-color:lightgray
        }
        h1
        {
            font-family: 'Microsoft JhengHei';
            font-size:4em;
            color:blue;
        }
        .buttonCSS
        {
            height:auto;
            color:blue;
            border:3px solid;
            border-color:blue;
            border-radius:40px;
        }
        .box
        {
            height:auto;
            border:3px solid;
            border-color:blue;
            border-radius:4px;
        }
         .last
        {
            height:auto;
            border:5px solid;
            border-color:red;
            border-radius:10px;
        }
    </style>
<body>
    <form id="form1" runat="server">
    <div>
        <br />
    <h1>Currency Converting Website</h1>
        <br />
        <br />
       Select Currency Medium:  	&nbsp	&nbsp      
<asp:DropDownList ID="ddlDepartment" runat="server" BorderColor="Blue"  >
<asp:ListItem Text="Select" Value="0"></asp:ListItem>
<asp:ListItem Text="Dollar" Value="CS"></asp:ListItem>
<asp:ListItem Text="Euro" Value="EE"></asp:ListItem>
<asp:ListItem Text="Pound" Value="BBA"></asp:ListItem>
</asp:DropDownList>

        <br />
    Please Enter amount in Rupees to Convert to your Selected Medium:	&nbsp	&nbsp
        <asp:TextBox ID="box" runat="server" CssClass="box" BorderColor="Blue" Width="100" text-shadow="blue"></asp:TextBox>
        <br /> <br />
        <asp:Button ID="Button1" CssClass="buttonCSS" Text="Convert Rupees To Selected Medium" runat="server" />
        <br /> <br />
        Amount from Rupees to your chosen medium:&nbsp	&nbsp
          <asp:TextBox ID="TextBox1" runat="server" CssClass="box" BorderColor="Blue" Width="100" text-shadow="blue"></asp:TextBox>
        <br /> <br />
         Please Enter amount in your chosen medium to convert to Rupees:&nbsp	&nbsp
          <asp:TextBox ID="TextBox3" runat="server" CssClass="box" BorderColor="Blue" Width="100" text-shadow="blue"></asp:TextBox>
       <br /> <br />
      <asp:Button ID="Button2" CssClass="buttonCSS" Text="Convert from Selected Medium to Rupees" runat="server" />
        <br /> <br />
         Amount from your chosen medium to Rupees :&nbsp	&nbsp
          <asp:TextBox ID="TextBox4" runat="server" CssClass="box" BorderColor="Blue" Width="100" text-shadow="blue"></asp:TextBox>
        <br /> <br />
         Your previous chosen medium was:&nbsp	&nbsp
          <asp:TextBox ID="TextBox5" runat="server" CssClass="box" BorderColor="Blue" Width="100" text-shadow="blue"></asp:TextBox>
       <br /> <br />
          Programed by:&nbsp	&nbsp
          <asp:TextBox ID="TextBox6" runat="server" CssClass="box" BorderColor="Blue" Width="100" text-shadow="blue"></asp:TextBox>
       <br /> <br />
        <asp:Button ID="btnSave" CssClass="last" Text="Reset" BorderColor="Red" ForeColor="Red"  runat="server" />
    </div>
    </form>
</body>
</html>
