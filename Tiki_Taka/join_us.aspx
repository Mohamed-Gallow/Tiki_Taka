<%@ Page Language="C#" AutoEventWireup="true" UnobtrusiveValidationMode="none" CodeBehind="join_us.aspx.cs" Inherits="Tiki_Taka.join_us" %>

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
          <link rel="stylesheet" href="css/join_us_style.css" />
      


    <title>join</title>
</head>
<body>
    <form id="form1" runat="server">
         <header>
        <div class="header">
            <div class="title">
                <a href="defult.aspx"><img class="Photo" src="images/logo.png"></a>
                <a href="defult.aspx" class="logo"><span style="color:#fff ;">TiKi</span> Taka</a>
            </div>
            <nav>
                <ul class="navigation">
                    <li><a href="defult.aspx">Home</a></li>
                    <li class="menu">
                        <a>Sports <span class="arrow"><i class="fa-sharp fa-solid fa-angle-down"></i></span></a>
                        <ul class="sub_menu">
                            <li><a href="soccer.aspx" class="game_hover">Soccer</a></li>
                            <li><a href="tennis.aspx" class="game_hover">Tennis</a></li>
                            <li><a href="Basket.aspx" class="game_hover">Basketball</a></li>
                            <li><a href="Swimming.aspx" class="game_hover">Swimming</a></li>
                            <li><a href="add.aspx" class="game_hover">Add Court</a></li>
                        </ul>
                    </li>
                    <li><a href="join_us.aspx">Join Us</a></li>
                    <li><a href="About_Us.aspx"> About Us</a></li>
                    <div class="animation"></div>
                </ul>

            </nav>
            <div class="toggle_btn">
                <span></span>
                <span></span>
                <span></span>
            </div>
        </div>
        <!-- Drop Menu From Responsive to show in responsive-->
        <div class="drop_down_menu ">
            <div class="cont">
                <li><a href="defult.aspx">Home</a></li>
                <li class="menu">
                    <a>Sports <span class="arrow"><i class="fa-sharp fa-solid fa-angle-down"></i></span></a>
                    <ul class="sub_menu">
                        <li><a href="soccer.aspx" class="game_hover">Soccer</a></li>
                        <li><a href="tennis.aspx" class="game_hover">Tennis</a></li>
                        <li><a href="Basket.aspx" class="game_hover">Basketball</a></li>
                        <li><a href="Swimming.aspx" class="game_hover">Swimming</a></li>

                    </ul>
                </li>
                <li><a href="join_us.aspx">Join Us</a></li>
                <li><a href="About_Us.aspx"> About Us</a></li>
                <div class="background_sports"></div>
            </div>
        </div>
    </header>

    <section>
        <div class="about-section">
            <h1>JOIN THE <span>TIKI TAKA</span></h1>
            <p>join us to have your own playground and customized service
                and be a member of our family</p>
        </div>
    </section>
    <section>
        <div class="step3">
            <div class="content">
                <div class="input-box">
                    <asp:TextBox ID="fname" runat="server" placeholder="First Name" autocomplete="off"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="fname" ErrorMessage="These field is requierd" ForeColor="Red" ValidationGroup="registration" Font-Size="Small"></asp:RequiredFieldValidator>
                </div>
                <div class="input-box">
                    <asp:TextBox ID="lname" runat="server" placeholder="Last Name" autocomplete="off"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="lname" ErrorMessage="These field is requierd" ForeColor="Red" ValidationGroup="registration" Font-Size="Small"></asp:RequiredFieldValidator>
                </div>
                <div class="input-box">
                    <asp:TextBox ID="email" runat="server" placeholder="Email" TextMode="Email" autocomplete="off"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="email" ErrorMessage="These field is requierd" ForeColor="Red" ValidationGroup="registration" Font-Size="Small"></asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="email" ErrorMessage="Wrong Email" ForeColor="Red" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" Font-Size="Small"></asp:RegularExpressionValidator>
                </div>
                <div class="input-box">
                    <asp:TextBox ID="age" runat="server" placeholder="Age" autocomplete="off"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="age" ErrorMessage="These field is requierd" ForeColor="Red" ValidationGroup="registration" Font-Size="Small"></asp:RequiredFieldValidator>
                </div>
                <div class="input-box">
                    <asp:TextBox ID="password" runat="server" placeholder="Password" class="password_input" TextMode="Password" ValidationGroup="registration" autocomplete="off"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="password" ErrorMessage="These field is requierd" ForeColor="Red" ValidationGroup="registration" Font-Size="Small"></asp:RequiredFieldValidator>
                    <asp:RangeValidator ID="RangeValidator1" runat="server" ControlToValidate="password" ErrorMessage="Password is Short" Font-Size="Small" ForeColor="Red" MaximumValue="16" MinimumValue="8" Type="Integer"></asp:RangeValidator>
                    

                </div>
                <div class="input-box">
                    <asp:TextBox ID="cpassword" runat="server" placeholder="Confirm password" class="confirm_password_input" TextMode="Password" ValidationGroup="registration" autocomplete="off"></asp:TextBox>
                    

                    <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="cpassword" ErrorMessage="These field is requierd" ForeColor="Red" ValidationGroup="registration" Font-Size="Small"></asp:RequiredFieldValidator>
                    

                    <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="cpassword" ControlToValidate="password" ErrorMessage="Confirm Your Pass" ForeColor="Red" ValidationGroup="registration" Font-Size="Small"></asp:CompareValidator>
                    

                </div>
                <div class="btn">
                    <asp:Button ID="Register" runat="server" Text="Register" class="button" OnClick="Register_Click" ValidationGroup="registration"/>
                    <a href="login.aspx">Already a member? <span>Login</span></a>
                </div>
            </div>
        </div>
    </section>


    <!-- ==== Footer Section ==== -->
    <footer class="footer">
        <div class="content_footer">
            <div>
                <div class="footer_logo">
                    <a href="defult.aspx"><img class="photo_of_logo" src="images/logo.png"></a>
                    <a href="defult.aspx" class="title_of_logo"><span style="color:#fff ;">TiKi</span> Taka</a>
                </div>
                <div class="social_media_icon">
                    <p>FOLLOW US ON:</p>
                    <div class="icons">
                        <a href="https://www.instagram.com" title="Instagram" target="_blank">
                            <i class="fa-brands fa-instagram"></i>
                        </a>
                        <a href="https://www.facebook.com" title="Facebook" target="_blank">
                            <i class="fa-brands fa-facebook"></i>
                        </a>
                        <a href="https://www.youtube.com" title="Youtube" target="_blank">
                            <i class="fa-brands fa-youtube"></i></a>
                        <a href="https://www.twitter.com" title="Twitter" target="_blank">
                            <i class="fa-brands fa-twitter"></i>
                        </a>
                        <a href="https://www.linkedin.com" title="Linkedin" target="_blank">
                            <i class="fa-brands fa-linkedin"></i>
                        </a>
                        <a href="https://www.tiktok.com" title="Tiktok" target="_blank">
                            <i class="fa-brands fa-tiktok"></i>
                        </a>
                        <a href="https://www.whatsapp.com" title="Whatsapp" target="_blank">
                            <i class="fa-brands fa-whatsapp"></i>
                        </a>
                    </div>
                </div>
            </div>

            <div class="all_pages">
                <p>All <span>Pages</span></p>
                <div class="pages">
                    <div class="part_1_pages">
                        <a href="defult.aspx">Home</a>
                        <a href="soccer.aspx">Soccer</a>
                        <a href="Basket.aspx">Basketball</a>
                        <a href="tennis.aspx">Tennis</a>
                    </div>
                    <div class="part_1_pages part_2_pages">
                        <a href="Swimming.aspx">Swimming</a>
                        <a href="join_us.aspx">Join Us</a>
                        <a href="login.aspx">Login</a>
                        <a href="About_Us.aspx">About Us</a>
                    </div>

                </div>
            </div>
            <div class="contact_us">
                <div class="contact-form">
                    <h2>Contact Us</h2>
                    <div class="contact" action="" method="post">
                        <asp:TextBox ID="name" runat="server" class="text-box" placeholder="Your Name" autocomplete="off"></asp:TextBox>
                        <asp:TextBox ID="kemail" runat="server" class="text-box" placeholder="Your Email" autocomplete="off"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" ControlToValidate="message" ErrorMessage="These Field is Empty" ForeColor="Red" Font-Size="Small"></asp:RequiredFieldValidator>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="kemail" ErrorMessage="These Field is Empty" ForeColor="Red" Font-Size="Small"></asp:RequiredFieldValidator>
                        <asp:TextBox ID="message" runat="server" placeholder="Your Message" class="main-input" TextMode="MultiLine" autocomplete="off"></asp:TextBox>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" ControlToValidate="kemail" ErrorMessage="Email is Wrong" ForeColor="Red" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" Font-Size="Small"></asp:RegularExpressionValidator>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ControlToValidate="name" ErrorMessage="These Field is Empty" ForeColor="Red" Font-Size="Small"></asp:RequiredFieldValidator>
                        <asp:Button ID="Button1" runat="server" Text="Send" class="send-btn" OnClick="Button1_Click"/>
                    </div>
                </div>
            </div>
        </div>

        <div class="copy_right">
            <p>Copyrights © 2023 All Rights Reserved by <span><a href="home.html">Tiki Taka Inc.</a></span></p>
        </div>

    </footer>

 
    <script src="libraries/jquery-3.6.4.js"></script><!-- jQuery library -->
    <script src="jquery/jQuery.js"></script>
    <script src="libraries/aos-master/dist/aos.js"></script> <!-- AOS library -->

    <script type="text/javascript" src="javaScript/main.js"></script>
    </form>
</body>
</html>
