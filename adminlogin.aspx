<%@ Page Language="C#" MasterPageFile="~/Master.Master" AutoEventWireup="true" CodeBehind="adminlogin.aspx.cs" Inherits="project.adminlogin" Title="Untitled Page" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
<div id="templatemo_main_top_sb"></div>
    <div id="templatemo_main_sb">
    <form id="form1" runat="server">
    <div>
    
    <center>
    <table>
         <tr>
                <td colspan="2" style="height: 1px">
                    <span style="font-size: 18pt"><span
                        style="font-family: Times New Roman"><b> <span style="color:Olive">
                            Admin Login</span></b></span></span><br />
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
            <b><asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Names="Times New Roman"
                ForeColor="Red"></asp:Label></b></td>
            </tr>
            
            </table></center>
       </div>
    </form>
</div>
 <div class="cleaner"></div>
</asp:Content>
