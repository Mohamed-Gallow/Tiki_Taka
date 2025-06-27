<%@ Page Language="C#" AutoEventWireup="true" UnobtrusiveValidationMode="none" CodeBehind="login.aspx.cs" Inherits="Tiki_Taka.login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <!-- Font-Awesome library  -->
    <link rel="stylesheet" href="libraries/fontawesome-free-6.4.0-web/css/all.min.css">

    <!-- AOS library -->
    <link rel="stylesheet" href="libraries/aos-master/dist/aos.css">
    <link rel="stylesheet" href="css/login_style.css">
        

     
   
    <title>Login</title>
</head>
<body>
    <form id="form1" runat="server">
         <div class="container">

        <div class="form-container sign-in-container">
            <div class="form">
                <h1>Login</h1>
                <div class="social-container">
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="email" ErrorMessage="Email is Wrong" ForeColor="Red" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                </div>

                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="email" ErrorMessage="These Field is Empty" ForeColor="Red"></asp:RequiredFieldValidator>

                <asp:TextBox ID="email" runat="server" placeholder="Email" autocomplete="off"></asp:TextBox>

                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="password" ErrorMessage="These Field is Empty" ForeColor="Red"></asp:RequiredFieldValidator>

                <asp:TextBox ID="password" runat="server" class="pass_login" placeholder="Password" autocomplete="off" TextMode="Password"></asp:TextBox>


                <a class="forgot_pass" href="reset_password.aspx">Forgot your password?</a>
                <asp:Button ID="Login" runat="server" Text="Login" CssClass="btn" OnClick="Login_Click" />
            </div>
        </div>
        <div class="overlay-container">
            <div class="overlay">
                <div class="overlay-panel overlay-right">
                    <h1>Hello, Friend!</h1>
                    <p>Enter your personal details and start journey with us</p>
                </div>
            </div>
        </div>
        <a href="join_us.aspx" class="already_log">Create account! <span class="log">Sin up</span></a>

    </div>
    <script>

        var eye_btn_password = document.querySelector('.eye_log');
        var password_login = document.querySelector('.pass_login');
        var icon_eye = document.querySelector('.icon_eye');

        eye_btn_password.addEventListener('click', function () {
            if (password_login.type === 'password') {
                password_login.type = 'text';
                icon_eye.classList.remove('fa-eye');
                icon_eye.classList.add('fa-eye-slash');
            }
            else {
                password_login.type = 'password';
                icon_eye.classList.add('fa-eye');
                icon_eye.classList.remove('fa-eye-slash');
            }
        })
    </script>
    </form>
</body>
</html>
