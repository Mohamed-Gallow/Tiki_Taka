<%@ Page Language="C#" AutoEventWireup="true" UnobtrusiveValidationMode="none" CodeBehind="Swim.aspx.cs" Inherits="Tiki_Taka.Swim" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
        <!-- Font-Awesome library  -->
    <link rel="stylesheet" href="libraries/fontawesome-free-6.4.0-web/css/all.min.css">
    <link rel="stylesheet" href="css/Book.css">
   <title>Booking</title>
     <style type="text/css">
      
         .grid td{
             padding:10px;
             background-color:#fff;
                border:2px solid #ccc;         
         }

          .grid thead td{
              text-align:center;
              background-color:#57b55a;
              color:#fff;
              font-weight:500;
              border:1px solid #ccc
              
          }
    </style>
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
                    <div class="animation">

                    </div>
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
                        <li><a href="add.aspx" class="game_hover">Add Court</a></li>
                    </ul>
                </li>
                <li><a href="join_us.aspx">Join Us</a></li>
                <li><a href="About_Us.aspx"> About Us</a></li>
                <div class="background_sports"></div>
            </div>
        </div>
    </header>
         <section class="title_page">
        <h1>Booking Your <span class="span">Court</span> </h1>
        <p>Please Fill out all the fields with complete importance so that
            we can provide you with the service</p>
    </section>

    <section class="body_of_form">
        <div class="image">
            <img src="images/booking.jpg"/>
        </div>
        <div class="form">
            <div class="title_of_detail">
               <!-- <input class="court_title" type="text" value="SPORTING COURT" readonly>
                <input class="price_court" type="text" value="$550" readonly> -->
                <asp:TextBox ID="TextBox2" class="court_title" runat="server" ReadOnly></asp:TextBox>
                <asp:TextBox ID="TextBox3" class="price_court" runat="server" ReadOnly>"LE"</asp:TextBox>
            </div>
            <div class="address">
                <asp:TextBox ID="TextBox1" runat="server" class="address_court" ReadOnly></asp:TextBox>
              <!--  <input class="address_court" type="text" value="Sporting court in Alexandria" readonly> -->
            </div>
            <div class="form_data">
                 <asp:TextBox ID="name" class="input" runat="server" placeholder="Your Name" autocomplete="off" ></asp:TextBox>
                 
                 <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="name" ErrorMessage="Field is Empty" Font-Size="Small" ForeColor="Red" ValidationGroup="Reserve"></asp:RequiredFieldValidator>
                 
                <asp:TextBox ID="namber" runat="server" class="input" placeholder="Your Phone Number"  autocomplete="off"></asp:TextBox>
                
                 <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="namber" ErrorMessage="Field is Empty" Font-Size="Small" ForeColor="Red" ValidationGroup="Reserve"></asp:RequiredFieldValidator>
                
                <asp:TextBox ID="email" runat="server" class="input" placeholder="Your Email"  autocomplete="off" TextMode="Email"></asp:TextBox>


                 <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="email" ErrorMessage="Email is Wrong" Font-Size="Small" ForeColor="Red" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>


                 <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="email" ErrorMessage="Fiel is Empty" Font-Size="Small" ForeColor="Red" ValidationGroup="Reserve"></asp:RequiredFieldValidator>


                <asp:TextBox ID="date" runat="server" class="input" TextMode="Date"></asp:TextBox>
                 <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="date" ErrorMessage="Field is Empty" Font-Size="Small" ForeColor="Red" ValidationGroup="Reserve"></asp:RequiredFieldValidator>
                <asp:TextBox ID="time" runat="server" class="input" TextMode="Time"></asp:TextBox>

                 <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="time" ErrorMessage="Field is Empty" Font-Size="Small" ForeColor="Red" ValidationGroup="Reserve"></asp:RequiredFieldValidator>

                 <asp:TextBox ID="hour" runat="server"  class="input" placeholder="Number of Hours?"  autocomplete="off"></asp:TextBox>
                 <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="hour" ErrorMessage="Field is Empty" Font-Size="Small" ForeColor="Red" ValidationGroup="Reserve"></asp:RequiredFieldValidator>
            </div>
            <div class="btn">
                <asp:Button ID="Button1" runat="server" class="button" Text="Reserve" ValidationGroup="Reserve" OnClick="Button1_Click"/>
                 <asp:Button ID="Button2" runat="server" class="button" Text="Busy Hours" OnClick="Button2_Click"  />
              <!--  <button class="button">Reserve</button>
                <button class="button">Busy Hours</button> -->
            </div>
        </div>

    </section> <br />
    <section class="grid_view">
        <asp:GridView ID="GridView1" runat="server"  CssClass="grid" Width="1160px" CellPadding="4" ForeColor="#333333" GridLines="None" style="margin-top: 170px; margin-left: 168px; margin-right: 400px; text-align: center;">
            <AlternatingRowStyle BackColor="White" />
            <EditRowStyle BackColor="#7C6F57" />
            <FooterStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#57b55a" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#666666" ForeColor="White" HorizontalAlign="Center" />
            <RowStyle BackColor="#E3EAEB" />
            <SelectedRowStyle BackColor="#C5BBAF" Font-Bold="True" ForeColor="#333333" />
            <SortedAscendingCellStyle BackColor="#F8FAFA" />
            <SortedAscendingHeaderStyle BackColor="#246B61" />
            <SortedDescendingCellStyle BackColor="#D4DFE1" />
            <SortedDescendingHeaderStyle BackColor="#15524A" />
        </asp:GridView>
    </section><br />

        
    <script src="libraries/jquery-3.6.4.js"></script><!-- jQuery library -->
    <script src="jquery/jQuery.js"></script>
    <script src="libraries/aos-master/dist/aos.js"></script> <!-- AOS library -->

    <script type="text/javascript" src="javaScript/main.js"></script>
    </form>
</body>
</html>
