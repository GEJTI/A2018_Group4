<%@ Page Language="C#" AutoEventWireup="true" CodeFile="LoginS.aspx.cs" Inherits="Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>LOG IN FORM</title>
    <link href="cust-css/loginbg.css" rel="stylesheet" />
</head>
<body> 
    <div class="loginbox">
       <a href="#">
        <img src="img/student1.png" alt="Student" class="user" />
            <span>Taguig City University - CICT</span>
       </a>
        <h2>Log In Here</h2>
        <form runat="server">
            <asp:Label Text="Username" cssClass="lbluser" runat="server" ID="Label1" />
            <asp:Textbox runat="server" cssClass="txtuser" placeholder="Enter Username" ID="user_txtbox"/>
            <br />
            <asp:Label Text="Password" cssClass="lblpass" runat="server" ID="Label2" />

            <asp:Textbox runat="server" cssClass="txtpass" placeholder="********" ID="pass_txtbox"/>
            <br />
            <asp:Button ID="Button1" Text="Sign In" cssclass="btnsign" runat="server" OnClick="Button1_Click"/>
            <br />
            <asp:LinkButton Text="Forget Password" cssclass="lnkforget" runat="server"/>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="reg" runat="server" Text="Create Account" OnClick="reg_Click" />
        </form>
       </div>
</body>
</html>
