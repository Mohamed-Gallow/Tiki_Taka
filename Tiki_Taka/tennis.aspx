<%@ Page Title="" Language="C#" MasterPageFile="~/masterPage.Master" AutoEventWireup="true" UnobtrusiveValidationMode="none" CodeBehind="tennis.aspx.cs" Inherits="Tiki_Taka.tennis" %>
<asp:Content ID="Content1" ContentPlaceHolderID="Css_Link" runat="server">
    <link rel="stylesheet" href="css/tenniss_style.css">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Title" runat="server">
    <title>Tennis</title>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="header_place" runat="server">
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
                            <li><a href="tennis.aspx" class="game_active">Tennis</a></li>
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
                        <li><a href="tennis.aspx" class="game_active">Tennis</a></li>
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
</asp:Content>




<asp:Content ID="Content4" ContentPlaceHolderID="Body_place" runat="server">
    <section class="main">
        <div>
            <h2 data-aos="fade-up">Hello Great Player<br><span>Welcome to Tiki Taka</span></h2>
            <h3 data-aos="fade-up">We make tennis more fun</h3>
            <a data-aos="fade-up-edit-scale" href="#courts" class="main-btn">View courts</a>
        </div>
    </section>

    <section class="courts" id="courts">
        <h2 class="title">Courts</h2>
        <div class="content">



            <asp:ListView ID="ListView1" runat="server" DataSourceID="SqlDataSource1" OnItemCommand="ListView1_ItemCommand">
                <ItemTemplate>
            <div class="card" data-aos="fade-up">
                <div class="project-image">
                    
                   
                    <img src="<%#Eval("image") %>">
                </div>
                <div class="project-info">
                    <p class="project-category"><%#Eval("place") %></p>
                    <strong class="project-title">
                        <span><%#Eval("name") %></span>

                       <asp:Button ID="Button1" runat="server" Text="Reserve" class="book" CommandArgument='<%# Eval("id") %>' CommandName="tennid" /> 

                     <!--    <a href="login.aspx" class="book">Reserve</a> -->
                    </strong>
                </div>
            </div>
                    </ItemTemplate>
             </asp:ListView>
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:Tiki_TakaConnectionString %>" SelectCommand="SELECT * FROM [tennis]"></asp:SqlDataSource>

        </div>
    </section>
</asp:Content>





<asp:Content ID="Content5" ContentPlaceHolderID="Other_Services" runat="server">
    <section class="bools services" id="services">
        <h2 data-aos="fade-up" class="title">Our other services</h2>
        <div class="content">
            <div class="card" data-aos="fade-up-edit">
                <div class="project-image">
                    <img src="images/photos_tennis_page/football.jpg">
                </div>
                <div class="project-info">
                    <p class="project-category">Reserve your soccer field</p>
                    <strong class="project-title">
                        <span>ٍSoccer</span>
                        <a href="soccer.aspx" class="book">Go</a>
                    </strong>
                </div>
            </div>
            <div class="card" data-aos="fade-up-edit">
                <div class="project-image">
                    <img src="images/photos_tennis_page/basket.jpg">
                </div>
                <div class="project-info">
                    <p class="project-category">Reserve your basketball court</p>
                    <strong class="project-title">
                        <span>Basketball</span>
                        <a href="Basket.aspx" class="book">Go</a>
                    </strong>
                </div>
            </div>
            <div class="card" data-aos="fade-up-edit">
                <div class="project-image">
                    <img src="images/photos_tennis_page/swimmer.jpg">
                </div>
                <div class="project-info">
                    <p class="project-category">Reserve your swimming bool</p>
                    <strong class="project-title">
                        <span>Swimming</span>
                        <a href="Swimming.aspx" class="book">Go</a>
                    </strong>
                </div>
            </div>
        </div>
    </section>
</asp:Content>
