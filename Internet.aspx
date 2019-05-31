<%@ Page Language="C#" MasterPageFile="~/Master.Master" AutoEventWireup="true" CodeBehind="Internet.aspx.cs" Inherits="project.Internet" Title="Untitled Page" %>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
 <div id="templatemo_main_top_sb"></div>
    <div id="templatemo_main_sb">
    
                    <form id="Form1" method="post" name="contact" action="#" runat="server">
                    <div>
                    <asp:Label ID="Label2" runat="server"></asp:Label>|<asp:Label
            ID="Label15" runat="server" Width="60px"></asp:Label>
                    <asp:Label ID="Label16" runat="server"></asp:Label>
                    <asp:Label ID="Label21" runat="server" Font-Names="Times New Roman" ForeColor="Red"
         ></asp:Label>
        <asp:Label ID="Label22" runat="server" Font-Names="Times New Roman" ForeColor="Yellow" Font-Size="Large"></asp:Label>
           
        <br />
        <div id="templatemo_menu" class="ddsmoothmenu">
        <div id="templatemo_bottom">
     	<div class="col_allw300">
        	<h4>Pages</h4>
           <ul class="bottom_list">
            <li><a href="magazine.aspx">Magazine</a></li><br /><br /><br />
            <li><a href="Banner.aspx">Banner</a></li><br /><br /><br />
            <li><a href="Radio.aspx">Radio</a></li><br /><br /><br />
            <li><a href="Television.aspx">Television</a></li><br /><br /><br />
            <li><a href="Internet.aspx" class="selected">Internet</a></li><br /><br /><br />
            <li><a href="Newspaper.aspx">Newspaper</a></li><br />
          </ul></div></div></div>
        <table>
            <tr>
                <td colspan="2" style="height: 1px">
                    <span style="font-size: 18pt">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; <span
                        style="font-family: Times New Roman">&nbsp; &nbsp;<b> <span style="color:Green">
                              Advertisethrough Internet</span></b></span></span><br />
                        <br />
                    
                </td>
            </tr>
            <tr>
                <td class="style1">
                    <asp:Label ID="Label1" runat="server" Text="Websites" Width="180px"></asp:Label></td>
                <td style="width: 281px; height: 24px">
                    <asp:DropDownList
                ID="DropDownList11" runat="server" style="left: 183px;">
                <asp:ListItem>Select One</asp:ListItem>
            </asp:DropDownList>
                    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;</td>
            </tr>
            <tr>
                <td style="width: 1px; height: 40px">
                    <asp:Label ID="Label3" runat="server" Height="26px" Text="Advertise Date:" Width="192px"></asp:Label>
                    <asp:Label ID="Label4" runat="server" Text="From:"></asp:Label></td>
                <td style="width: 281px; height: 40px">
                    <br />
                    <br />
                    <asp:DropDownList ID="DropDownList12"
                runat="server" >
                <asp:ListItem>DATE</asp:ListItem>
                <asp:ListItem>1</asp:ListItem>
                <asp:ListItem>2</asp:ListItem>
            </asp:DropDownList>&nbsp;
            <asp:DropDownList ID="DropDownList13" runat="server" style="left: 221px; position: static">
                <asp:ListItem>MONTH</asp:ListItem>
                <asp:ListItem>JAN</asp:ListItem>
                <asp:ListItem>FEB</asp:ListItem>
            </asp:DropDownList>&nbsp;<asp:DropDownList ID="DropDownList14" runat="server" style="left: 289px;">
                <asp:ListItem>YEAR</asp:ListItem>
                <asp:ListItem>2008</asp:ListItem>
            </asp:DropDownList>
                    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;</td>
            </tr>
            <tr>
                <td class="style3">
                    <asp:Label ID="Label5" runat="server" Text="To:"></asp:Label></td>
                <td style="width: 281px; height: 37px">
            <asp:DropDownList
                ID="DropDownList15" runat="server" style="left: 184px;">
                <asp:ListItem>DATE</asp:ListItem>
                <asp:ListItem>1</asp:ListItem>
                <asp:ListItem Value="2"></asp:ListItem>
            </asp:DropDownList>
            <asp:DropDownList ID="DropDownList16" runat="server" style="left: 221px;">
                <asp:ListItem>MONTH</asp:ListItem>
                <asp:ListItem>JAN</asp:ListItem>
                <asp:ListItem>FEB</asp:ListItem>
            </asp:DropDownList>
            <asp:DropDownList ID="DropDownList17" runat="server" style="left: 292px;">
                <asp:ListItem>YEAR</asp:ListItem>
                <asp:ListItem>2008</asp:ListItem>
            </asp:DropDownList></td>
            </tr>
            <tr>
                <td class="style3">
                    <asp:Label ID="Label8" runat="server" Text="AdSize: "></asp:Label></td>
                <td style="width: 281px; height: 37px">
            <asp:DropDownList ID="DropDownList19" runat="server" style="left: 185px;" >
                <asp:ListItem>NONE</asp:ListItem>
                <asp:ListItem>50x50</asp:ListItem>
                <asp:ListItem>100x100</asp:ListItem>
                <asp:ListItem></asp:ListItem>
            </asp:DropDownList>
                    </td>
            </tr>
            <tr>
                <td class="style3">
                    <asp:Label ID="Label10" runat="server" Text="Pattern:  "></asp:Label></td>
                <td style="width: 281px; height: 37px">
            <br />
                    <asp:RadioButtonList ID="RadioButtonList1" runat="server" AutoPostBack="True" OnSelectedIndexChanged="RadioButtonList1_SelectedIndexChanged">
                        <asp:ListItem>STATIC</asp:ListItem>
                        <asp:ListItem>DYNAMIC</asp:ListItem>
                    </asp:RadioButtonList>&nbsp;
                </td>
            </tr>
            <tr>
                <td class="style4">
                    <br />
                    <asp:Label ID="Label11" runat="server" Text="Price: "></asp:Label>
                    &nbsp; &nbsp;&nbsp;</td>
                <td style="width: 281px; height: 28px">
                    <asp:TextBox ID="TextBox1" runat="server" ReadOnly="True"></asp:TextBox></td>
            </tr>
            <tr>
                <td class="style4">
                    <asp:Label ID="Label12" runat="server" Text="Upload Your File" Width="199px"></asp:Label></td>
                <td style="width: 281px; height: 28px">
                    <asp:FileUpload ID="FileUpload1" runat="server" /></td>
            </tr>
            <tr>
                <td colspan="2">
                    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
          
                    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;<asp:Button ID="Button4" runat="server" Text="SUBMIT" OnClick="Button4_Click" />
                    </td>
            </tr>
        </table>
         <table style="left: 1000px; width: 208px; position: absolute; top: 250px">
            <tr><td>
                <span style="font-size: 14pt"><span
                        style="font-family: Times New Roman"><span style="color:Olive">Advertise On This</span></span></span></td>
            </tr>
            <tr>
                <td>
                    <asp:Image ID="Image1" runat="server" ImageUrl="~/images/media/i1.jpg" /></td>
            </tr>
             <tr><td></td></tr><tr><td></td></tr>
           <tr>
                <td>
                    <asp:Image ID="Image2" runat="server" ImageUrl="~/images/media/i2.jpg" /></td>
            </tr>
            <tr><td></td></tr><tr><td></td></tr>
            <tr>
                <td>
                    <asp:Image ID="Image3" runat="server" ImageUrl="~/images/media/i3.jpg" /></td>
            </tr>
              <tr><td></td></tr><tr><td></td></tr>
              <tr>
                <td>
                    <asp:Image ID="Image4" runat="server" ImageUrl="~/images/media/i4.jpg" /></td>
            </tr>
        </table>       
                     </div>
                    </form>
            
                </div>
           
            <div class="cleaner"></div>
</asp:Content>
