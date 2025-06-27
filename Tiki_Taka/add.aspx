<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="add.aspx.cs" Inherits="Tiki_Taka.add" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
      <title>Add Court</title>

    <!-- Font-Awesome library  -->
    <link rel="stylesheet" href="libraries/fontawesome-free-6.4.0-web/css/all.min.css">

    <link rel="stylesheet" href="css/add_court_style.css">
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
                            <li><a href="add.aspx" class="game_active">Add Court</a></li>
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
                        <li><a href="soccer.aspx" class="game_hover>Soccer</a></li>
                        <li><a href=" tennis.aspx" class="game_hover">Tennis</a></li>
                        <li><a href="Basket.aspx" class="game_hover">Basketball</a></li>
                        <li><a href="Swimming.aspx" class="game_hover">Swimming</a></li>
                        <li><a href="add.aspx" class="game_active">Add Court</a></li>
                    </ul>
                </li>
                <li><a href="join_us.aspx">Join Us</a></li>
                <li><a href="About_Us.aspx"> About Us</a></li>
                <div class="background_sports"></div>
            </div>
        </div>
    </header>

    <section class="title_add">
        <h1>Add Your <span>Court</span></h1>
        <p>Tiki Taka allows you to add your own court to be easily booked with the click of a button</p>
    </section>

    <section class="main">
        <div class="all_inputs">
            <div class="part_1_input">
                     
                  <asp:TextBox ID="select" runat="server" placeholder="Write sport" class="input_1"></asp:TextBox>
              
                <asp:TextBox ID="place" runat="server" class="input_1" placeholder="Place of Court"></asp:TextBox>
               <!-- <label for="photo" class="title_upload">*upload a photo of court </label>
                <asp:FileUpload ID="FileUpload1" runat="server" class="input_1 file_photo" />-->
                <asp:TextBox ID="name" runat="server" placeholder="Your Name" class="input_1" ></asp:TextBox>


            </div>
           
            <div>
                 <asp:TextBox ID="court_name" runat="server" placeholder="Court Name" class="input_2"></asp:TextBox>
                <asp:TextBox ID="price" runat="server" placeholder="Price of Court" class="input_2"></asp:TextBox>
                 <asp:TextBox ID="email" runat="server" placeholder="Your Email" class="input_2"></asp:TextBox>

            </div>
        </div>
        <div class="all_buttons">
            <asp:Button ID="Button1" class="btn" runat="server" Text="Add" OnClick="Button1_Click"  />
            <asp:Button ID="Button2" class="btn" runat="server" Text="Delete" OnClick="Button2_Click" />

            <asp:Button ID="Button4" class="btn" runat="server" Text="Show" OnClick="Button4_Click" />
            </div>
    </section>

         <section class="grid_view">
        <asp:GridView ID="GridView1" runat="server" cssclass="grid" Width="1160px" CellPadding="4" ForeColor="#333333" GridLines="None" style="margin-top: 170px; margin-left: 168px; margin-right: 400px; text-align: center;">
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

    <script type="text/javascript" src="javaScript/main.js"></script>
    </form>
</body>
</html>
