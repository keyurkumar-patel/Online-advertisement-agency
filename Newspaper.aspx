<%@ Page Language="C#" MasterPageFile="~/Master.Master" AutoEventWireup="true" CodeBehind="Newspaper.aspx.cs" Inherits="project.Newspaper" Title="Untitled Page" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
 <div id="templatemo_main_top_sb"></div>
    <div id="templatemo_main_sb">
    
                    <form id="Form1" method="post" name="contact" action="#" runat="server">
                    <div>
                    <asp:Label ID="Label2" runat="server" ></asp:Label>|<asp:Label
            ID="Label15" runat="server" Width="60px"></asp:Label>
                    <asp:Label ID="Label16" runat="server"></asp:Label>
                    
        <asp:Label ID="Label21" runat="server" Font-Names="Times New Roman" ForeColor="Red"
           ></asp:Label>
            <asp:Label ID="Label22" runat="server" Font-Names="Times New Roman" ForeColor="Yellow" Font-Size="Large"
           ></asp:Label>
                                <div id="templatemo_menu" class="ddsmoothmenu">
        <div id="templatemo_bottom">
     	<div class="col_allw300">
        	<h4>Pages</h4>
           <ul class="bottom_list">
            <li><a href="magazine.aspx">Magazine</a></li><br /><br /><br />
            <li><a href="Banner.aspx">Banner</a></li><br /><br /><br />
            <li><a href="Radio.aspx">Radio</a></li><br /><br /><br />
            <li><a href="Television.aspx" >Television</a></li><br /><br /><br />
            <li><a href="Internet.aspx">Internet</a></li><br /><br /><br />
            <li><a href="Newspaper.aspx" class="selected">Newspaper</a></li><br />
          </ul></div></div></div>
  <table>
           <tr>
                <td colspan="2" style="height: 1px">
                    <span style="font-size: 18pt">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; <span
                        style="font-family: Times New Roman">&nbsp; &nbsp;<b> <span style="color:Green">
                             Advertise in Newspaper</span></b></span></span><br />
                        <br />
                    
                </td>
            </tr>
            <tr>
                <td style="width: 1px; height: 24px">
                    <asp:Label ID="Label1" runat="server" Text=" News Paper Name: " Width="180px"></asp:Label></td>
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
                runat="server" AutoPostBack="True" OnSelectedIndexChanged="DropDownList12_SelectedIndexChanged">
                <asp:ListItem>DATE</asp:ListItem>
                <asp:ListItem>1</asp:ListItem>
                <asp:ListItem>2</asp:ListItem>
                        <asp:ListItem>3</asp:ListItem>
                        <asp:ListItem>4</asp:ListItem>
                        <asp:ListItem>5</asp:ListItem>
                        <asp:ListItem>6</asp:ListItem>
                        <asp:ListItem>7</asp:ListItem>
                        <asp:ListItem>8</asp:ListItem>
                        <asp:ListItem>9</asp:ListItem>
                        <asp:ListItem>10</asp:ListItem>
                        <asp:ListItem>11</asp:ListItem>
                        <asp:ListItem>12</asp:ListItem>
                        <asp:ListItem>13</asp:ListItem>
                        <asp:ListItem>14</asp:ListItem>
                        <asp:ListItem>15</asp:ListItem>
                        <asp:ListItem>16</asp:ListItem>
                        <asp:ListItem>17</asp:ListItem>
                        <asp:ListItem>18</asp:ListItem>
                        <asp:ListItem>19</asp:ListItem>
                        <asp:ListItem>20</asp:ListItem>
                        <asp:ListItem>21</asp:ListItem>
                        <asp:ListItem>22</asp:ListItem>
                        <asp:ListItem>23</asp:ListItem>
                        <asp:ListItem>24</asp:ListItem>
                        <asp:ListItem>25</asp:ListItem>
                        <asp:ListItem>26</asp:ListItem>
                        <asp:ListItem>27</asp:ListItem>
                        <asp:ListItem>28</asp:ListItem>
                        <asp:ListItem>29</asp:ListItem>
                        <asp:ListItem>30</asp:ListItem>
                        <asp:ListItem>31</asp:ListItem>
                        <asp:ListItem></asp:ListItem>
            </asp:DropDownList>&nbsp;
            <asp:DropDownList ID="DropDownList13" runat="server" style="left: 221px; position: static">
                <asp:ListItem>MONTH</asp:ListItem>
                <asp:ListItem>JAN</asp:ListItem>
                <asp:ListItem>FEB</asp:ListItem>
                <asp:ListItem>MAR</asp:ListItem>
                <asp:ListItem>APR</asp:ListItem>
                <asp:ListItem>MAY</asp:ListItem>
                <asp:ListItem>JUN</asp:ListItem>
                <asp:ListItem>JUL</asp:ListItem>
                <asp:ListItem>AUG</asp:ListItem>
                <asp:ListItem>SEP</asp:ListItem>
                <asp:ListItem>OCT</asp:ListItem>
                <asp:ListItem>NOV</asp:ListItem>
                <asp:ListItem>DEC</asp:ListItem>
            </asp:DropDownList><asp:DropDownList ID="DropDownList14" runat="server" style="left: 289px;">
                <asp:ListItem>YEAR</asp:ListItem>
                <asp:ListItem>2008</asp:ListItem>
                <asp:ListItem>2009</asp:ListItem>
                <asp:ListItem></asp:ListItem>
            </asp:DropDownList>
                    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;</td>
            </tr>
            <tr>
                <td style="width: 1px; height: 37px">
                    <asp:Label ID="Label5" runat="server" Text="To:"></asp:Label></td>
                <td style="width: 281px; height: 37px">
            <asp:DropDownList
                ID="DropDownList15" runat="server" style="left: 184px;">
                <asp:ListItem>DATE</asp:ListItem>
                <asp:ListItem>1</asp:ListItem>
                <asp:ListItem Value="2"></asp:ListItem>
                <asp:ListItem>3</asp:ListItem>
                <asp:ListItem>4</asp:ListItem>
                <asp:ListItem>5</asp:ListItem>
                <asp:ListItem>6</asp:ListItem>
                <asp:ListItem>7</asp:ListItem>
                <asp:ListItem>8</asp:ListItem>
                <asp:ListItem>9</asp:ListItem>
                <asp:ListItem>10</asp:ListItem>
                <asp:ListItem>11</asp:ListItem>
                <asp:ListItem>12</asp:ListItem>
                <asp:ListItem>13</asp:ListItem>
                <asp:ListItem>14</asp:ListItem>
                <asp:ListItem>15</asp:ListItem>
                <asp:ListItem>16</asp:ListItem>
                <asp:ListItem>17</asp:ListItem>
                <asp:ListItem>18</asp:ListItem>
                <asp:ListItem>19</asp:ListItem>
                <asp:ListItem>20</asp:ListItem>
                <asp:ListItem>21</asp:ListItem>
                <asp:ListItem>22</asp:ListItem>
                <asp:ListItem>23</asp:ListItem>
                <asp:ListItem>24</asp:ListItem>
                <asp:ListItem>25</asp:ListItem>
                <asp:ListItem>26</asp:ListItem>
                <asp:ListItem>27</asp:ListItem>
                <asp:ListItem>28</asp:ListItem>
                <asp:ListItem>29</asp:ListItem>
                <asp:ListItem>30</asp:ListItem>
                <asp:ListItem>31</asp:ListItem>
                <asp:ListItem></asp:ListItem>
            </asp:DropDownList>
            <asp:DropDownList ID="DropDownList16" runat="server" style="left: 221px;">
                <asp:ListItem>MONTH</asp:ListItem>
                <asp:ListItem>JAN</asp:ListItem>
                <asp:ListItem>FEB</asp:ListItem>
                <asp:ListItem>MAR</asp:ListItem>
                <asp:ListItem>APR</asp:ListItem>
                <asp:ListItem>MAY</asp:ListItem>
                <asp:ListItem>JUN</asp:ListItem>
                <asp:ListItem>JUL</asp:ListItem>
                <asp:ListItem>AUG</asp:ListItem>
                <asp:ListItem>SEP</asp:ListItem>
                <asp:ListItem>OCT</asp:ListItem>
                <asp:ListItem>NOV</asp:ListItem>
                <asp:ListItem>DEC</asp:ListItem>
            </asp:DropDownList>
            <asp:DropDownList ID="DropDownList17" runat="server" style="left: 292px;">
                <asp:ListItem>YEAR</asp:ListItem>
                <asp:ListItem>2008</asp:ListItem>
                <asp:ListItem>2009</asp:ListItem>
            </asp:DropDownList></td>
            </tr>
            <tr>
                <td style="width: 1px; height: 37px">
                    <asp:Label ID="Label6" runat="server" Text="Advertising page: " Width="188px"></asp:Label></td>
                <td style="width: 281px; height: 37px">
            <asp:DropDownList ID="DropDownList18" runat="server" style="left: 184px;" AutoPostBack="True" OnSelectedIndexChanged="DropDownList18_SelectedIndexChanged">
                <asp:ListItem>NONE</asp:ListItem>
                <asp:ListItem>First page</asp:ListItem>
                <asp:ListItem>Middle Page</asp:ListItem>
                <asp:ListItem>Last Page</asp:ListItem>
            </asp:DropDownList>
                    <asp:Label ID="Label17" runat="server" Font-Names="Times New Roman" ForeColor="Red"></asp:Label>
                </td>
            </tr>
            <tr>
                <td style="width: 1px; height: 37px">
                    <asp:Label ID="Label7" runat="server" Text="Newspaper Edition:" Width="189px"></asp:Label></td>
                <td style="width: 281px; height: 37px">
            <br />
                    <asp:CheckBoxList ID="CheckBoxList1" runat="server" AutoPostBack="True" OnSelectedIndexChanged="CheckBoxList1_SelectedIndexChanged">
                        <asp:ListItem Value="0">MORNING</asp:ListItem>
                        <asp:ListItem Value="1">EVENING</asp:ListItem>
                    </asp:CheckBoxList>
                    <asp:Label ID="Label18" runat="server" Font-Names="Times New Roman" ForeColor="Red"
                        Style="left: 333px; position: absolute; top: 308px" Width="216px"></asp:Label>
                </td>
            </tr>
            <tr>
                <td style="width: 1px; height: 37px">
                    <asp:Label ID="Label8" runat="server" Text="AdSize: "></asp:Label></td>
                <td style="width: 281px; height: 37px">
            <asp:DropDownList ID="DropDownList19" runat="server" style="left: 185px;" AutoPostBack="True" OnSelectedIndexChanged="DropDownList19_SelectedIndexChanged">
                <asp:ListItem>NONE</asp:ListItem>
                <asp:ListItem>50x50</asp:ListItem>
                <asp:ListItem>100x100</asp:ListItem>
                <asp:ListItem></asp:ListItem>
            </asp:DropDownList>
                    <asp:Label ID="Label19" runat="server" Font-Names="Times New Roman" ForeColor="Red"></asp:Label></td>
            </tr>
            <tr>
                <td style="width: 1px; height: 37px">
                    <asp:Label ID="Label9" runat="server" Text="Issues: "></asp:Label></td>
                <td style="width: 281px; height: 37px">
            <asp:DropDownList ID="DropDownList20" runat="server" Style="left: 185px;">
                <asp:ListItem>NONE</asp:ListItem>
                <asp:ListItem>Weekly</asp:ListItem>
                <asp:ListItem>Monthly</asp:ListItem>
            </asp:DropDownList></td>
            </tr>
            <tr>
                <td style="width: 1px; height: 37px">
                    <asp:Label ID="Label10" runat="server" Text="Pattern:  "></asp:Label></td>
                <td style="width: 281px; height: 37px">
            <br />
                    <asp:RadioButtonList ID="RadioButtonList1" runat="server" AutoPostBack="True" OnSelectedIndexChanged="RadioButtonList1_SelectedIndexChanged">
                        <asp:ListItem>MONO</asp:ListItem>
                        <asp:ListItem>COLOR</asp:ListItem>
                    </asp:RadioButtonList>
                    <asp:Label ID="Label20" runat="server" Font-Names="Times New Roman" ForeColor="Red"
                   ></asp:Label>
                </td>
            </tr>
            <tr>
                <td style="width: 1px; height: 28px">
                    <asp:Label ID="Label11" runat="server" Text="Price: "></asp:Label>
                    &nbsp; &nbsp;&nbsp;</td>
                <td style="width: 281px; height: 28px">
                    <asp:TextBox ID="TextBox1" runat="server" ReadOnly="True"></asp:TextBox></td>
            </tr>
            <tr>
                <td style="width: 1px; height: 28px">
                    <asp:Label ID="Label12" runat="server" Text="Upload Your File" Width="120px"></asp:Label></td>
                <td style="width: 281px; height: 28px">
                    <asp:FileUpload ID="FileUpload1" runat="server" /></td>
            </tr>
            <tr>
                <td colspan="2">
              
                    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;<asp:Button ID="Button4" runat="server" Text="SUBMIT" OnClick="Button4_Click" />
                    <asp:Button ID="Button1" runat="server" Text="CANCEL" /></td>
            </tr>
        </table>
              <table style="left: 1000px; width: 208px; position: absolute; top: 300px">
            <tr><td>
                <span style="font-size: 14pt"><span
                        style="font-family: Times New Roman"><span style="color:Olive">Advertise On This</span></span></span></td>
            </tr>
            <tr>
                <td>
                    <asp:Image ID="Image1" runat="server" ImageUrl="~/images/media/n1.jpg" /></td>
            </tr>
             <tr><td></td></tr><tr><td></td></tr>
           <tr>
                <td>
                    <asp:Image ID="Image2" runat="server" ImageUrl="~/images/media/n2.jpg" /></td>
            </tr>
            <tr><td></td></tr><tr><td></td></tr>
            <tr>
                <td>
                    <asp:Image ID="Image3" runat="server" ImageUrl="~/images/media/n3.jpg" /></td>
            </tr>
              <tr><td></td></tr><tr><td></td></tr>
              <tr>
                <td>
                    <asp:Image ID="Image4" runat="server" ImageUrl="~/images/media/n4.jpg" /></td>
            </tr>
        </table>              
                     </div>
                    </form>
            
                </div>
           
            <div class="cleaner"></div>
</asp:Content>
