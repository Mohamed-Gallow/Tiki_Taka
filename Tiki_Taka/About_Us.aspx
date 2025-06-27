<%@ Page Title="" Language="C#" MasterPageFile="~/masterPage.Master" UnobtrusiveValidationMode="none" AutoEventWireup="true" CodeBehind="About_Us.aspx.cs" Inherits="Tiki_Taka.About_Us" %>
<asp:Content ID="Content1" ContentPlaceHolderID="Css_Link" runat="server">
      <link rel="stylesheet" href="css/about_us_style.css" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Title" runat="server">
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
        <li><a href="home.aspx">Home</a></li>
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
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="Body_place" runat="server">
     <section>
    <div class="about-section">
      <h1 data-aos="fade-up">About <span>Us</span></h1>
      <h3 data-aos="fade-up" data-aos-delay="100">
        <p>We at Tiki Taka aim to make the fun and health gained from sports
          available at any time and anywhere to anyone by providing the closest place
          available to him to practice his favorite sport as easily as possible.</p>
      </h3>

    </div>

  </section>
  <section class="us">
    <h1 data-aos="fade-up" data-aos-delay="180" style="text-align:center">Our <span>Team</span></h1>
    <h3 data-aos="fade-up" data-aos-delay="250">Recognize the Tiki Taka team</h3>


    <div class="content">
      <div class="card" data-aos="fade-up" data-aos-delay="300">
        <div class="person_photo">
          <img src="images/photo_about_us/mahalawy.jpg">
        </div>
        <div class="info">
          <p class="person_name">Mohamed Elmhalawy</p>
          <p class="title_1">FCI Student</p>
          <p class="title_2">Web Devoloper</p>
          <p class="title_3">elmahlawy@gmail.com </p>
        </div>
      </div>
      <div class="card" data-aos="fade-up" data-aos-delay="300">
        <div class="person_photo">
          <img src="images/photo_about_us/gallow.jpg">
        </div>
        <div class="info">
          <p class="person_name">Mohamed Gallow</p>
          <p class="title_1">FCI Student</p>
          <p class="title_2">Web Devoloper</p>
          <p class="title_3">Gallow@gmail.com </p>
        </div>
      </div>
      <div class="card" data-aos="fade-up" data-aos-delay="300">
        <div class="person_photo">
          <img src="images/photo_about_us/youssef.jpg">
        </div>
        <div class="info">
          <p class="person_name">Youssef salah</p>
          <p class="title_1">FCI Student</p>
          <p class="title_2">Web Devoloper</p>
          <p class="title_3">youssef@gmail.com </p>
        </div>
      </div>
    </div>
  </section>

</asp:Content>
<asp:Content ID="Content5" ContentPlaceHolderID="Other_Services" runat="server">
</asp:Content>
