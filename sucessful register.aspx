<%@ Page Language="C#" MasterPageFile="~/Master.Master" AutoEventWireup="true" CodeBehind="sucessful register.aspx.cs" Inherits="project.sucessful_register" Title="Untitled Page" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
 <div id="templatemo_main_top_sb"></div>
    <div id="templatemo_main_sb">
    
                    <form id="Form1" method="post" name="sucessful register" action="#" runat="server">
                    <div>
 
            <table>
                <tr>
                    <td colspan="3">
            Hi&nbsp;
                        <asp:Label ID="Label2" runat="server" Font-Bold="True"
                 ForeColor="Yellow"></asp:Label>&nbsp;
            you have successfully Registered.<br />
                    </td>
                </tr>
                <tr>
                    <td style="width: 90px">
                    </td>
                    <td colspan="2" style="width: 289px">
                        &nbsp;Your USERNAME:<asp:Label ID="Label3" runat="server" Font-Bold="True" ForeColor="Red"></asp:Label></td>
                </tr>
                <tr>
                    <td style="width: 90px">
                    </td>
                    <td colspan="2" style="width: 289px">
                        Your USER ID:<asp:Label ID="Label1" runat="server" Font-Names="Times New Roman" ForeColor="Red"></asp:Label></td>
                </tr>
                <tr>
                    <td colspan="3" style="height: 72px">
                        &nbsp; A Confirmation
            message is send to your MAIL-ID<br />
                        <asp:Label ID="Label5" runat="server" Font-Bold="True" ForeColor="Red"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td colspan="3" style="height: 19px">
                        <strong><span style="color:Red"><a href="Mediaselection.aspx">Login</a></span></strong>
            to select the Media types for Advertising.<br />
                    </td>
                </tr></table>
     </div>
                    </form>
            
                </div>
           
            <div class="cleaner"></div>
</asp:Content>
