<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>ENTRY FORM</title>
    <!-- Required meta tags -->
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />

    <!-- Bootstrap CSS -->
    <link href="Content/bootstrap.min.css" rel="stylesheet" />
</head>
<body style="background-color: #7b6ee6; padding: 20px;">

    <form id="form1" runat="server">
        
        <div class="container" style="background-color: #ffffff; padding: 20px; border-radius: 8px;">
            <h2>Teacher or Student</h2>
            <br/>
            <div class="col-12">
                <asp:Button ID="teacher" runat="server" CssClass="btn btn-primary" Text="Teacher" OnClick="teacher_Click" />
            </div>
            <br/>
            <div class="col-12">
                <asp:Button ID="student" runat="server" CssClass="btn btn-primary" Text="Student" OnClick="student_Click" />
            </div>
        </div>
    </form>

</body>
</html>
