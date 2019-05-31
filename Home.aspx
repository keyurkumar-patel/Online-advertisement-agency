<%@ Page Language="C#" MasterPageFile="~/Master.Master" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="project.Home" Title="Untitled Page" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
<div id="templatemo_main_top">
    	<div id="flash_grid_slider">
            <a href="http://www.flashmo.com/preview/flashmo_224_grid_slider" target="_blank">
                Flash XML Grid Slider
            </a>
            <br /><br />
            <a href="http://www.adobe.com/go/getflashplayer">
                <img src="http://www.adobe.com/images/shared/download_buttons/get_flash_player.gif" alt="Get Adobe Flash player" />
            </a>
        </div>
   </div>
    <div id="templatemo_main">
    <form id="form1" runat="server">
    <div>
   <a href="adminlogin.aspx" style="left: 1060px; width: 50px; position:absolute; top: 50px"> 
            <asp:ImageButton ID="i1" runat="server" ImageUrl="~/images/adminlogin.jpg" />
   </a>
    <center>
    <table>
         <tr>
                <td colspan="2" style="height: 1px">
                    <span style="font-size: 18pt">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; <span
                        style="font-family: Times New Roman">&nbsp; &nbsp;<b> <span style="color:Green">
                            Member Login</span></b></span></span><br />
                        <br />
                    
                </td>
            </tr>
            <tr>
                <td style="width: 70px">
                    UserName</td>
                <td style="width: 142px">
                    <asp:TextBox
                ID="TextBox1" runat="server" Style="border-top-style: inset; border-right-style: inset;
                border-left-style: inset; border-bottom-style: inset"></asp:TextBox></td>
            </tr>
            <tr>
                <td style="width: 70px">
                    Password</td>
                <td style="width: 142px">
                    <asp:TextBox
                ID="TextBox2" runat="server" Style="border-top-style: inset; border-right-style: inset;
                border-left-style: inset; border-bottom-style: inset" TextMode="Password"></asp:TextBox></td>
            </tr>
            <tr>
                <td style="width: 70px; height: 38px;">
                </td>
                <td style="width: 142px; height: 38px;">
                    &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;  &nbsp;&nbsp; 
            &nbsp;&nbsp;<asp:ImageButton ID="ImageButton1" runat="server" Height="31px" ImageUrl="~/images/signin.gif"
            Width="84px" OnClick="ImageButton1_Click" /></td>
            </tr>
            <tr>
                <td colspan="2" style="height: 1px">
            <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Names="Times New Roman"
                ForeColor="Red" Height="25px" Width="215px"></asp:Label></td>
            </tr>
            <tr>
                <td colspan="2" style="height: 7px">
                    <span style="color:Teal"><span style= "font-size:larger"> <b>Not Yet Registered ?</b></span></span>
         &nbsp; &nbsp;
            &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;<br />
            &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
            &nbsp; &nbsp; &nbsp; &nbsp;&nbsp; <span style="text-decoration: underline;">
                <a href="register.aspx">Click Here<br />
                </a>
            </span>
                </td>
            </tr>
        </table></center>
    
    </div>
    </form>    
    </div> 
</asp:Content>
