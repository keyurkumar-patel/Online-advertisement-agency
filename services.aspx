<%@ Page Language="C#" MasterPageFile="~/Master.Master" AutoEventWireup="true" CodeBehind="services.aspx.cs" Inherits="project.services" Title="Untitled Page" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">


<script type="text/javascript" src="js/jquery.min.js"></script>
<script type="text/javascript" src="ddsmoothmenu.js"></script>

<script type="text/javascript">

ddsmoothmenu.init({
	mainmenuid: "templatemo_menu", //menu DIV id
	orientation: 'h', //Horizontal or vertical menu: Set to "h" or "v"
	classname: 'ddsmoothmenu', //class added to menu's outer DIV
	//customtheme: ["#1c5a80", "#18374a"],
	contentsource: "markup" //"markup" or ["container_id", "path_to_menu_file"]
})

</script>

<!--////// CHOOSE ONE OF THE 3 PIROBOX STYLES  \\\\\\\-->
<link href="css_pirobox/white/style.css" media="screen" title="shadow" rel="stylesheet" type="text/css" />
<!--<link href="css_pirobox/white/style.css" media="screen" title="white" rel="stylesheet" type="text/css" />
<link href="css_pirobox/black/style.css" media="screen" title="black" rel="stylesheet" type="text/css" />-->
<!--////// END  \\\\\\\-->

<!--////// INCLUDE THE JS AND PIROBOX OPTION IN YOUR HEADER  \\\\\\\-->
<script type="text/javascript" src="scripts/jquery.min.js"></script>
<script type="text/javascript" src="scripts/piroBox.1_2.js"></script>
<script type="text/javascript">
$(document).ready(function() {
	$().piroBox({
			my_speed: 600, //animation speed
			bg_alpha: 0.5, //background opacity
			radius: 4, //caption rounded corner
			scrollImage : false, // true == image follows the page, false == image remains in the same open position
			pirobox_next : 'piro_next', // Nav buttons -> piro_next == inside piroBox , piro_next_out == outside piroBox
			pirobox_prev : 'piro_prev',// Nav buttons -> piro_prev == inside piroBox , piro_prev_out == outside piroBox
			close_all : '.piro_close',// add class .piro_overlay(with comma)if you want overlay click close piroBox
			slideShow : 'slideshow', // just delete slideshow between '' if you don't want it.
			slideSpeed : 4 //slideshow duration in seconds(3 to 6 Recommended)
	});
});
</script>

<div id="templatemo_main_top_sb"></div>
    <div id="templatemo_main_sb">
    	
        <h2>Our Services</h2>
            <p>The process of making the advertisement is little because we are going to provide the execution environment for the end users to select the available templates in which the users can easily create their advertisement based on the Media Types (News Paper, Radio, Television, Banners etc).</p>   
            
            <div class="cleaner h30"></div>
          	<div id="gallery">
                <div class="gallery_box">
                	<div class="gb_img"><a class="pirobox" href="images/portfolio/image_02_b.jpg" title="Lorem ipsum dolor sit amet, consectetur adipiscing elit."><img width="450" height="200" src="images/portfolio/image_02.jpg" alt="Image" /></a></div>
                    <div class="gb_detail">
                    	<h3>This Is For Banner </h3>
                        <p>The end users to select the available templates in which the users can easily create their advertisement based on the Media Types like Banner.</p>
                    	<a class="more" href="#">Download</a>
					</div>
                    <div class="cleaner"></div>
                </div>
                <div class="gallery_box">
                	<div class="gb_img"><a class="pirobox" href="images/portfolio/image_01_b.jpg" title="Lorem ipsum dolor sit amet, consectetur adipiscing elit."><img width="450" height="200" src="images/portfolio/image_01.jpg" alt="Image" /></a></div>
                    <div class="gb_detail">
                    	<h3>This Is For Newsapes</h3>
                           <p>The end users to select the available templates in which the users can easily create their advertisement based on the Media Types like Newspaper.</p>
                    	<a class="more" href="#">Download</a>
					</div>
                    <div class="cleaner"></div>
                </div>
                <div class="gallery_box">
                	<div class="gb_img">
                    	<a class="pirobox" href="images/portfolio/image_03_b.jpg" title="Lorem ipsum dolor sit amet, consectetur adipiscing elit."><img width="450" height="200" src="images/portfolio/image_03.jpg" alt="Image" /></a>
                    </div>
                    <div class="gb_detail">
                    	<h3>This Is For Magazine</h3>
                         <p>The end users to select the available templates in which the users can easily create their advertisement based on the Media Types like Magazine.</p>
                    	<a class="more" href="#">Download</a>
					</div>
                    <div class="cleaner"></div>
                </div>
 
            </div>
            <div class="cleaner"></div>
            
            <div class="pagging">
            	<ul>
                	<li><a href="http://www.templatemo.com" target="_parent">Previous</a></li>
                    <li><a href="http://www.templatemo.com/page/1" target="_parent">1</a></li>
                    <li><a href="http://www.templatemo.com/page/2" target="_parent">2</a></li>
                    <li><a href="http://www.templatemo.com/page/3" target="_parent">3</a></li>
                    <li><a href="http://www.templatemo.com/page/4" target="_parent">4</a></li>
                    <li><a href="http://www.templatemo.com/page/5" target="_parent">5</a></li>
                    <li><a href="http://www.templatemo.com/page/6" target="_parent">6</a></li>
                    <li><a href="http://www.templatemo.com/page/7" target="_parent">Next</a></li>
				</ul>
            </div>
            <div class="cleaner"></div></div>
</asp:Content>
