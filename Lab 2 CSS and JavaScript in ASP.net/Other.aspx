<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="lab2.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<script type="text/javascript">
    function ConToPKR() {
        var fvalue = document.getElementById('TextBox1').value;
        var getCon = document.getElementById('DropDownList1').value;
        if (getCon == "1") {
            fvalue *= 100;
        }
        document.getElementById('TextBox2').value = fvalue;
    }
    function PKRto() {
        var fvalue = document.getElementById('TextBox2').value;
        var getCon = document.getElementById('DropDownList1').value;
        if (getCon == "1") {
            fvalue /= 100;
        }
        document.getElementById('TextBox3').value = fvalue;
    }
    function resetIt() {
        document.getElementById('TextBox1').value = "";
        document.getElementById('TextBox2').value = "";
        document.getElementById('TextBox3').value = "";
        var cur = document.getElementById('DropDownList1').value;
        if (cur == "1") {
            cur = "US$";
        }
        document.getElementById('TextBox4').value = cur;
        document.getElementById('DropDownList1').value = "";
        document.getElementById('TextBox5').value = "16L-4284";

    }

</script>
<style>
    h1 {
        color: blue;
    }
    p {
        color: purple;
    }
    .auto-style1 {
        font-weight: normal;
        text-decoration: underline;
    }
    .buttonCSS {
        color: blue; border-color:Blue;
    }
    .txtboxCSS {
        border-color:blue; border-radius: 5px; padding: 5px;
    }
</style>
<body>
    <form id="form1" runat="server">
    <h1 class="auto-style1"><strong><em>Currency Converting Web Site</em></strong></h1>

    <p>
        Select Currency Medium:&nbsp;&nbsp;&nbsp;
        <asp:DropDownList ID="DropDownList1" runat="server" Width="105px">
            <asp:ListItem>Select</asp:ListItem>
            <asp:ListItem Text="US$" value="1" ></asp:ListItem>
            <asp:ListItem>PKR</asp:ListItem>
            <asp:ListItem>INR</asp:ListItem>
            <asp:ListItem>RMB</asp:ListItem>
        </asp:DropDownList>
        </p>
        <p>
            Please Enter amount in PKR to Convert to your Selected Currency:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="TextBox1"  CssClass="txtboxCSS" runat="server"></asp:TextBox>
        </p>
        <p>
            <asp:Button ID="Button1" CssClass="buttonCSS" OnClientClick ="javascript:ConToPKR();" runat="server" Text="Convert To The Selected Currency" />
        </p>
        <p>
            Amount from PKR to your chosen Currency:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="TextBox2"  CssClass="txtboxCSS" runat="server"></asp:TextBox>
        </p>
        <p>
            <asp:Button ID="Button2" CssClass="buttonCSS"  OnClientClick ="javascript:PKRto();" runat="server" Text="Convert from Selected Currency to PKR" />
        </p>

        <p>
            Amount from your chosen Currency to PKR:&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="TextBox3" CssClass="txtboxCSS" runat="server" style="margin-bottom: 0px"></asp:TextBox>
&nbsp;</p>
        <p>
            Your Previous Chosen Currency was:&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="TextBox4"  CssClass="txtboxCSS" runat="server"></asp:TextBox>
        </p>
        <p>
            Programmed By:&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="TextBox5"  CssClass="txtboxCSS" runat="server"></asp:TextBox>
        </p>
        <p>
            <asp:Button ID="Button3" CssClass="buttonCSS" OnClientClick ="javascript:resetIt();" runat="server" Text="Reset" />
        </p>

    </form>

    </body>
</html>
