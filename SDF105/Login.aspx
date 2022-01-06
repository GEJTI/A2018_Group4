﻿<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Login.aspx.cs" Inherits="Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>LOG IN FORM</title>
    <link href="loginbg.css" rel="stylesheet"/>
</head>
<body> 
    <div class="loginbox">
        <img src="img/student1.png" alt="Student" class="user" />
        <h2>Log In Here</h2>
        <form runat="server">
            <asp:Label Text="Username" cssClass="lbluser" runat="server" ID="Label1" />
            <asp:Textbox runat="server" cssClass="txtuser" placeholder="Enter Username"/>
            <br />
            <asp:Label Text="Password" cssClass="lblpass" runat="server" ID="Label2" />

            <asp:Textbox runat="server" cssClass="txtpass" placeholder="********"/>
            <br />
            <asp:Button ID="Button1" Text="Sign In" cssclass="btnsign" runat="server"/>
            <br />
            <asp:LinkButton Text="Forget Password" cssclass="lnkforget" runat="server"/>
        </form>
       </div>
</body>
</html>