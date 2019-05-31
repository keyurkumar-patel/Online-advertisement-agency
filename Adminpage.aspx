<%@ Page Language="C#" MasterPageFile="~/adminmaster.Master" AutoEventWireup="true" CodeBehind="Adminpage.aspx.cs" Inherits="project.Adminpage" Title="Untitled Page" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
<div id="templatemo_main_top_sb"></div>
    <div id="templatemo_main_sb">
    
                    <form id="Form1" method="post" name="adminpage" action="#" runat="server">
 <div>
  <a href="adminlogin.aspx" style="left: 1060px; width: 50px; position:absolute; top: 50px"> 
            <asp:ImageButton ID="i1" runat="server" ImageUrl="~/images/signout.jpg" />
   </a>
 <center>
     <span style="font-size: 18pt"> <span
                        style="font-family: Times New Roman"><b> <span style="color:Olive">
                              WELCOME ADMIN</span></b></span></span></center>   
        
        <br />
        <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Names="Times New Roman" Font-Size="18px"
            ForeColor="OrangeRed" Text="Choose Media Tabs For Registered Users"></asp:Label>
          </div>
    </form>
</div>
 <div class="cleaner"></div>
</asp:Content>
