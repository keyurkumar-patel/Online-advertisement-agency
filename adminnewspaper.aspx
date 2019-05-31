<%@ Page Language="C#" MasterPageFile="~/adminmaster.Master" AutoEventWireup="true" CodeBehind="adminnewspaper.aspx.cs" Inherits="project.adminnewspaper" Title="Untitled Page" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
<div id="templatemo_main_top_sb"></div>
    <div id="templatemo_main_sb">
    
                    <form id="Form1" method="post" name="admintelevision" action="#" runat="server">
 <div>
 <a href="adminlogin.aspx" style="left: 1060px; width: 50px; position:absolute; top: 50px"> 
            <asp:ImageButton ID="i1" runat="server" ImageUrl="~/images/signout.jpg" />
   </a>
 <table>
            <tr>
                <td colspan="2" style="height: 1px"><center>
                    <span style="font-size: 15pt"> <span
                        style="font-family: Times New Roman"><b> <span style="color:Olive">
                              WELCOME ADMIN</span></b></span></span></center>                    
                </td>
            </tr>
            <tr>
                <td colspan="3">
                    &nbsp; <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Names="Arial" ForeColor="DarkSeaGreen" 
                        Text="Newspaper Registration"></asp:Label>
        <asp:DataGrid ID="DataGrid1" runat="server" AllowPaging="True" AllowSorting="True"
            AutoGenerateColumns="False" BackColor="White" Height="120px" 
            PageSize="5"
            Width="270px" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="2">
            <PagerStyle Mode="NumericPages" BackColor="White" ForeColor="#000066" HorizontalAlign="Left" />
            <Columns>
                <asp:BoundColumn DataField="cid" HeaderText="C-ID" SortExpression="cuid">
                </asp:BoundColumn>
                <asp:BoundColumn DataField="name" HeaderText="C-Name" SortExpression="cuname">
                </asp:BoundColumn>
                <asp:BoundColumn DataField="papername" HeaderText="Newspaper" SortExpression="papername">
                </asp:BoundColumn>
                <asp:BoundColumn DataField="dfrom" HeaderText="F-Dat" SortExpression="fromdate">
                </asp:BoundColumn>
                <asp:BoundColumn DataField="dto" HeaderText="T-Dat" SortExpression="todate">
                </asp:BoundColumn>
                <asp:BoundColumn DataField="advertisingpage" HeaderText="AdvertisingPage" SortExpression="advertisingpage">
                </asp:BoundColumn>
                <asp:BoundColumn DataField="edition" HeaderText="Edition" SortExpression="edition"></asp:BoundColumn>
                <asp:BoundColumn DataField="adsize" HeaderText="Adsize" SortExpression="adsize">
                </asp:BoundColumn>
                <asp:BoundColumn DataField="issues" HeaderText="Issues" SortExpression="issues">
                </asp:BoundColumn>
                <asp:BoundColumn DataField="pattern" HeaderText="Pattern" SortExpression="pattern">
                </asp:BoundColumn>
                <asp:BoundColumn DataField="price" HeaderText="Price">
                    <HeaderStyle Font-Bold="True" Font-Italic="False" Font-Names="Arial" Font-Overline="False"
                        Font-Strikeout="False" Font-Underline="False" ForeColor="White" />
                </asp:BoundColumn>
                <asp:TemplateColumn HeaderText="UplaodContent" SortExpression="uploadcontent">
                    <ItemTemplate>
                       <asp:LinkButton ID="uploadcontent" runat="server" CommandName="EDIT" Text='<%# DataBinder.Eval(Container.DataItem,"uploadcontent")%>'></asp:LinkButton>
                    </ItemTemplate>
                </asp:TemplateColumn>
                <asp:ButtonColumn CommandName="Delete" HeaderText="DELETE" Text="Delete"></asp:ButtonColumn>
            </Columns>
            <FooterStyle BackColor="White" ForeColor="#000066" />
            <SelectedItemStyle BackColor="#669999" Font-Bold="True" ForeColor="White" />
            <ItemStyle ForeColor="#000066" />
            <HeaderStyle BackColor="#006699" Font-Bold="True" ForeColor="White" />
        </asp:DataGrid>
                   </td>
            </tr>
            <tr>
                <td colspan="3">
                    &nbsp;&nbsp;
                </td>
            </tr>
        </table>
        <br />
        
        <asp:Label ID="Label8" runat="server" ForeColor="DarkSeaGreen" Font-Bold="True"
             Text="NEWSPAPER DETAILS"></asp:Label>
           
        <asp:DataGrid ID="DataGrid2" runat="server" AllowPaging="True" AllowSorting="True"
            AutoGenerateColumns="False" BackColor="White" Height="120px" 
            PageSize="5" 
            Width="238px" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="3">
            <PagerStyle Mode="NumericPages" BackColor="White" ForeColor="#000066" HorizontalAlign="Left" />
            <Columns>
                <asp:BoundColumn DataField="newspaper" HeaderText="Newspaper Name" SortExpression="newspaper">
                </asp:BoundColumn>
                <asp:ButtonColumn CommandName="Delete" HeaderText="DELETE" Text="Delete"></asp:ButtonColumn>
                <asp:EditCommandColumn CancelText="Cancel" EditText="Edit" HeaderText="Edit" UpdateText="Update">
                </asp:EditCommandColumn>
            </Columns>
            <FooterStyle BackColor="White" ForeColor="#000066" />
            <SelectedItemStyle BackColor="#669999" Font-Bold="True" ForeColor="White" />
            <ItemStyle ForeColor="#000066" />
            <HeaderStyle BackColor="#006699" Font-Bold="True" ForeColor="White" />
        </asp:DataGrid>
        <br /> 
            
            
            <table>
            <tr>
                <td colspan="3" style="height: 24px">
                    <asp:Label ID="Label7" runat="server" ForeColor="DarkSeaGreen" Font-Bold="True" Text="UPDATE NEWSPAPER DETAILS"
                        Width="195px"></asp:Label></td>
            </tr>
            <tr>
                <td style="width: 66px; height: 24px">
                    <asp:Label ID="Label3" runat="server" Text="Newspaper"></asp:Label></td>
                <td colspan="2" style="width: 133px; height: 24px;">
                    <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox></td>
            </tr>
            <tr>
                <td style="height: 24px; width: 66px;">
                </td>
                <td colspan="2" style="height: 24px; width: 133px;">
                    <asp:Button ID="ADD" runat="server" Text="ADD" OnClick="ADD_Click"/></td>
                    </tr>
        </table>
        
        
            
            
             </div>
    </form>
</div>
 <div class="cleaner"></div> 
</asp:Content>
