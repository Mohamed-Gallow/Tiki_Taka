<%@ Page Language="C#" AutoEventWireup="true" UnobtrusiveValidationMode="none" CodeBehind="reset_password.aspx.cs" Inherits="Tiki_Taka.reset_password" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <!-- Font-Awesome library  -->
    <link rel="stylesheet" href="libraries/fontawesome-free-6.4.0-web/css/all.min.css">
        <link rel="stylesheet" href="css/reset_password_style.css">
        



    <title>Reset password</title>
</head>
<body>
    <form id="form1" runat="server">
        <div class="container">

        <div class="form-container sign-in-container">
            <div class="form">
                <h1>Reset password</h1>
                <div class="social-container">
                </div>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="email" ErrorMessage="Email is Wrong" ForeColor="Red" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" Font-Size="Small"></asp:RegularExpressionValidator>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="email" ErrorMessage="These Field is Empty" ForeColor="Red" Font-Size="Small"></asp:RequiredFieldValidator>
                <asp:TextBox ID="email" runat="server" placeholder="Email" TextMode="Email"  autocomplete="off"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="password" ErrorMessage="These Field is Empty" ForeColor="Red" Font-Size="Small"></asp:RequiredFieldValidator>
                <asp:TextBox ID="password" runat="server" class="pass_reset_pass" placeholder="New Password" TextMode="Password" autocomplete="off" ></asp:TextBox>
                 
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="password" ErrorMessage="These Field is Empty" ForeColor="Red" Font-Size="Small"></asp:RequiredFieldValidator>
                 
                <asp:TextBox ID="cpassword" class="pass_reset_confirm" placeholder="Confirm Password" runat="server" TextMode="Password" autocomplete="off"></asp:TextBox>

                <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="cpassword" ControlToValidate="password" ErrorMessage="Not Same Password" ForeColor="Red" Font-Size="Small"></asp:CompareValidator>

                <asp:Button ID="reset" runat="server" class="btn" Text="Reset" OnClick="reset_Click" />
            </div>
        </div>
        <div class="overlay-container">
            <div class="overlay">
                <img src="images/password-bro.png" />
            </div>
        </div>

    </div>
    </form>
</body>
</html>
