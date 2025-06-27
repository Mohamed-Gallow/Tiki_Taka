<%@ Page Title="" Language="C#" MasterPageFile="~/masterPage.Master" UnobtrusiveValidationMode="none" AutoEventWireup="true" CodeBehind="defult.aspx.cs" Inherits="Tiki_Taka.defult" %>
<asp:Content ID="Content1" ContentPlaceHolderID="Css_Link" runat="server">
    <link rel="stylesheet" href="css/home_style.css">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Title" runat="server">
    <title>Tiki Taka</title>
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
                            <li><a href="soccer.aspx">Soccer</a></li>
                            <li><a href="tennis.aspx">Tennis</a></li>
                            <li><a href="Basket.aspx">Basketball</a></li>
                            <li><a href="Swimming.aspx">Swimming</a></li>
                            <li><a href="add.aspx">Add Court</a></li>
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
        <div class="drop_down_menu">
            <div class="cont">
                <li><a href="home.html">Home</a></li>
                <li class="menu">
                    <a>Sports <span class="arrow"><i class="fa-sharp fa-solid fa-angle-down"></i></span></a>
                    <ul class="sub_menu">
                                      <li><a href="soccer.aspx">Soccer</a></li>
                            <li><a href="tennis.aspx">Tennis</a></li>
                            <li><a href="Basket.aspx">Basketball</a></li>
                            <li><a href="Swimming.aspx">Swimming</a></li>
                        <li><a href="add.aspx">Add Court</a></li>
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
        <div class="image_stadiums">
            <img data-aos="zoom-in" data-aos-duration="500" data-aos-delay="0" src="images/stadium_photo.png">
            <!-- change the value of AOS library -->
        </div>
        <div>
            <video autoplay loop muted plays-inline class="video-background">
                <source src="videos/X2Download.app-3D SPORT INTRO-(1080p).mp4" type="video/mp4">
            </video>
        </div>
        <div>
            <h2><span class="title-h2" data-aos="fade" data-aos-duration="2000" data-aos- delay="0">Get </span><br><span
                    class="h2" data-aos="fade-right" data-aos-delay="15"> Your Court</span></h2>
            <h3 data-aos="fade" data-aos-duration="2000" data-aos- delay="0">In order to enjoy
                your time and health, you should practice sport, and you should choose the right place,
                so book the right court at the right time and place with the click of a button.</h3>
        </div>
    </section>
    <div class="box"></div>

    <!-- ==== Games Section ==== -->
    <section class="section_games">
        <div>
            <div class="join_tiki_taka" data-aos="fade-up">
                <p class="join">JOIN <span>TIKI TAKA</span> </p>
                <p class="text">Join the biggest social platform for sport players in the World</p>
                <hr>
            </div>
            <div class="football">
                <div class="photo_football">
                    <img class="img_football" data-aos="fade-right" data-aos-duration="1100" data-aos-delay="200"
                        src="images/foot.png">
                </div>
                <div class="text_football" data-aos="fade-up" data-aos-delay="0" data-aos-duration="300">
                    <p class="title_football">WANT TO <span>GO PRO?</span></p>
                    <p class="text_title_football">Reserve your soccer court at the right time and place.
                        Play and enjoy with all your might.Try to be the man of the match.Prove your worth and the
                        worth of your team.</p>
                </div>
            </div>
            <div class="tennis">
                <div class="photo_tennis">
                    <img class="img_tennis" data-aos="fade-down" data-aos-duration="650" data-aos-delay="190"
                        src="images/tennis.png">
                </div>
                <div class="text_tennis" data-aos="fade-up">
                    <p class="title_tennis">LOOKING TO PLAY <span>MORE?</span></p>
                    <p class="text_title_tennis">Tennis is the sport of heros. Damage your opponent and rip your racket.
                        Be the person who does not know
                        the taste of defeat. All you have to do is gather your friends, choose the closest place to
                        you and them, and reserve the appropriate
                        tennis court through Tiki Taka.
                    </p>
                </div>
            </div>
            <div class="basket">
                <div class="photo_basket">
                    <img class="img_basket" data-aos="fade-up" data-aos-duration="700" data-aos-delay="200"
                        src="images/basket.png">
                </div>
                <div class="text_basket" data-aos="fade-up">
                    <p class="title_basket">WANT TO CONNECT AND <span>BRAG </span></p>
                    <p class="text_title_basket">Be a giant of the basketball giants. Make the ball part of your
                        body
                        and mind. Exhaust your muscles, bleed a sea of sweat.
                        Make the court scream from the severity of your steps. Gather your friends and book a
                        basketball court through Tiki Taka.
                    </p>
                </div>
            </div>
        </div>
    </section>

    <!-- ==== Another Sports Section ==== -->
    <section class="sports">
        <h2 class="title" data-aos="fade-up" data-aos-duration="500" data-aos-delay="0">sports</h2>
        <div class="content">
            <div class="card" data-aos="fade-up-edit">
                <div class="sport_image">
                    <img src="images/football.png">
                </div>
                <div class="info">
                    <p class="sport_category">Reserve your soccer court</p>
                    <div class="sport_title">
                        <span>soccer</span>
                        <a href="soccer.aspx" class="go_button">GO</a>
                    </div>
                </div>
            </div>
            <div class="card" data-aos="fade-up-edit">
                <div class="sport_image">
                    <img src="images/basket_img.jpg">
                </div>
                <div class="info">
                    <p class="sport_category">Reserve your basketball court</p>
                    <div class="sport_title">
                        <span>basketball</span>
                        <a href="Basket.aspx" class="go_button">GO</a>
                    </div>
                </div>
            </div>
            <div class="card" data-aos="fade-up-edit">
                <div class="sport_image">
                    <img class="tennis_image" src="images/tennis_img.png">
                </div>
                <div class="info">
                    <p class="sport_category">Reserve your tennis field</p>
                    <div class="sport_title">
                        <span>tennis</span>
                        <a href="tennis.aspx" class="go_button">GO</a>
                    </div>
                </div>
            </div>
            <div class="card" data-aos="fade-up-edit">
                <div class="sport_image">
                    <img src="images/swimmer.png">
                </div>
                <div class="info">
                    <p class="sport_category">Reserve your Swimming bool</p>
                    <div class="sport_title">
                        <span>Swimming</span>
                        <a href="Swimming.aspx" class="go_button">GO</a>
                    </div>
                </div>
            </div>
        </div>
    </section>


</asp:Content>

