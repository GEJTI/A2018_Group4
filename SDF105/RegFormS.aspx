<%@ Page Language="C#" AutoEventWireup="true" CodeFile="RegFormS.aspx.cs" Inherits="RegistrationForm" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <!-- Required meta tags -->
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />

    <!-- Bootstrap CSS -->
    <link href="Content/bootstrap.min.css" rel="stylesheet" />

    <title>Student Registration Form</title>
</head>
<body style="background-color: #7b6ee6; padding: 20px;">

    <form id="form1" runat="server">
        
        <div class="container" style="background-color: #ffffff; padding: 20px; border-radius: 8px;">
            <h2>Student Registration Form</h2>
            
            <p>Please the fill the form below</p>
            <p style="color:red">* Required</p>
            <div class="col-md-12">
                <label><asp:Label runat="server" for="inputstud_id" CssClass="form-label">Student ID Number&nbsp;</asp:Label><span style="font-size:10px">(NUMBERS ONLY) &nbsp</span><span style="color:red">*</span></label>
                <asp:TextBox runat="server" type="text" CssClass="form-control" ID="inputstud_id" placeholder="Student Number" OnTextChanged="inputstud_id_TextChanged" required="true"/>
            </div>
            <br />
            <div class="col-md-12">
                <label><asp:Label runat="server" for="inputusername" CssClass="form-label">Username&nbsp;</asp:Label><span style="color:red">*</span></label>
                <asp:TextBox runat="server" type="text" CssClass="form-control" ID="inputusername" placeholder="Username" required="true"/>
            </div>
            <br />
            <div class="col-md-12">
                <label><asp:Label runat="server" for="inputPassword" CssClass="form-label">Password </asp:Label><span style="color:red">*</span></label>
                <asp:TextBox runat="server" type="password" CssClass="form-control" ID="inputPassword" placeholder="Password" required="true"/>
            </div>
            <div class="col-12">
                    <label style="font-size:13px"><asp:CheckBox  runat="server" CssClass="form-check-label" id="gridCheck" Text="&nbsp;Show Password"/></label>
            </div>
            <br />
            <div class="col-md-12">
                <label><asp:Label runat="server" for="inputCPassword" CssClass="form-label">Confirm Password </asp:Label><span style="color:red">*</span></label>
                <asp:TextBox runat="server" type="password" CssClass="form-control" ID="inputCPassword" placeholder="Password" required="true"/>
            </div>
            <div class="col-12">
                    <label style="font-size:13px"><asp:CheckBox  runat="server" CssClass="form-check-label" id="CheckBox1" Text="&nbsp;Show Password"/></label>
            </div>
            <br />
            
            <div class="col-md-12">
                <asp:Label runat="server" for="inputLastname" CssClass="form-label">Last Name</asp:Label>
                <asp:TextBox runat="server" type="text" CssClass="form-control" ID="inputLastname" placeholder="Last Name" required="true"/>
            </div>
            <br />
            <div class="col-md-12">
                <asp:Label runat="server" for="inputfirstname" CssClass="form-label">First Name</asp:Label>
                <asp:TextBox runat="server" type="text" CssClass="form-control" ID="inputfirstname" placeholder="First Name" required="true"/>
            </div>
            <br />
            <div class="col-md-12">
                <asp:Label runat="server" for="inputmiddlename" CssClass="form-label">Middle Name</asp:Label>
                <asp:TextBox runat="server" type="text" CssClass="form-control" ID="inputmiddlename" placeholder="Middle Name" required="true"/>
            </div>
            <br />
            <div class="col-md-12">
            <asp:Label runat="server" for="inputmiddlename" CssClass="form-label">Gender</asp:Label>
            <br />
            <asp:RadioButton ID="RMale" runat="server" Text="&nbsp;Male" GroupName="Gender"/>
            <br />
            <asp:RadioButton ID="RFemale" runat="server" Text="&nbsp;Female" GroupName="Gender"/>
            <br />
                </div>
            <br />
            <div class="col-12">
                <asp:Label runat="server" for="inputAddress" CssClass="form-label">Address</asp:Label>
                <asp:TextBox runat="server" type="text" CssClass="form-control" ID="inputAddress" placeholder="1234 Main St" required="true"/>
            </div>
            <br />
            <div class="col-md-12">
                <asp:Label runat="server" for="inputCity" CssClass="form-label">City</asp:Label>
                <asp:TextBox runat="server" type="text" CssClass="form-control" ID="inputCity" required="true"/>
            </div>
            <br />
            <div class="col-md-12">
                <asp:Label runat="server" for="inputState" CssClass="form-label">State / Province</asp:Label>&nbsp;
                <asp:TextBox runat="server" type="text" CssClass="form-control" ID="inputState" required="true"/>
            </div>
            <br />
            <div class="col-md-12">
                <asp:Label runat="server" for="inputZip" CssClass="form-label">Postal / Zip</asp:Label>
                <asp:TextBox runat="server" type="text" CssClass="form-control" ID="inputZip" placeholder="Ex. 1234" required="true"/>
            </div>
            <br />
            <div class="col-md-12">
                <asp:Label runat="server" for="inputcountry" CssClass="form-label">Country</asp:Label>
                <asp:TextBox runat="server" type="text" CssClass="form-control" ID="inputcountry" placeholder="Country" required="true"/>
            </div>
            <br />
            <div class="col-md-12">
                <asp:Label runat="server" for="inputpnumber" CssClass="form-label">Phone Number</asp:Label>
                <asp:TextBox runat="server" type="text" CssClass="form-control" ID="inputpnumber" placeholder="Phone Number" required="true"/>
            </div>
            <br />
            <div class="col-md-12">
                <asp:Label runat="server" for="inputEmail" CssClass="form-label">Email</asp:Label>
                <asp:TextBox runat="server" type="email" CssClass="form-control" ID="inputEmail" placeholder="Email" required="true"/>
            </div>
            <br />
            <div class="col-12">
                <asp:Button ID="submit" runat="server" CssClass="btn btn-primary" Text="SUBMIT" OnClick="submit_Click" />
            </div>
        </div>
    </form>

</body>
</html>
