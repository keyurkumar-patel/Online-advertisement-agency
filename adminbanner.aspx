<%@ Page Language="C#" MasterPageFile="~/adminmaster.Master" AutoEventWireup="true" CodeBehind="adminbanner.aspx.cs" Inherits="project.adminbanner" Title="Untitled Page" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
<div id="templatemo_main_top_sb"></div>
    <div id="templatemo_main_sb">
    
                    <form id="Form1" method="post"  action="#" runat="server">
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
                    &nbsp;<asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Names="Arial" ForeColor="DarkSeaGreen"
                        Text="BANNER REGISTRATION"></asp:Label>
                
        <asp:DataGrid ID="DataGrid1" runat="server" AllowPaging="True" AllowSorting="True"
            AutoGenerateColumns="False" BackColor="White" Height="120px" 
            PageSize="5" Width="291px" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="3">
            <PagerStyle Mode="NumericPages" BackColor="White" ForeColor="#000066" HorizontalAlign="Left" />
            <Columns>
                <asp:BoundColumn DataField="cid" HeaderText="C-ID" SortExpression="cuid">
                </asp:BoundColumn>
                <asp:BoundColumn DataField="name" HeaderText="C-Name" SortExpression="cuname">
                </asp:BoundColumn>
                <asp:BoundColumn DataField="state" HeaderText="State" SortExpression="state">
                </asp:BoundColumn>
                <asp:BoundColumn DataField="location" HeaderText="Location" SortExpression="location">
                </asp:BoundColumn>
                <asp:BoundColumn DataField="place" HeaderText="Place" SortExpression="place"></asp:BoundColumn>
                <asp:BoundColumn DataField="dfrom" HeaderText="F-Dat" SortExpression="dfrom"></asp:BoundColumn>
                <asp:BoundColumn DataField="dto" HeaderText="T-Dat" SortExpression="todate">
                </asp:BoundColumn>
                <asp:BoundColumn DataField="btype" HeaderText="Banner-type" SortExpression="btype">
                </asp:BoundColumn>
                <asp:BoundColumn DataField="bsize" HeaderText="B-size" SortExpression="bsize">
                </asp:BoundColumn>
                <asp:BoundColumn DataField="price" HeaderText="price" SortExpression="price">
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
          
        </table><br />
        
      
                    &nbsp;<asp:Label ID="Label8" runat="server" Font-Bold="True" Font-Names="Arial" ForeColor="DarkSeaGreen"
                        Text="BANNER DETAILS"></asp:Label>
     
        
       
        <asp:DataGrid ID="DataGrid2" runat="server" AllowPaging="True" AllowSorting="True"
            AutoGenerateColumns="False" BackColor="White" Height="120px" 
            PageSize="5" 
            Width="501px" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="3">
            <PagerStyle Mode="NumericPages" BackColor="White" ForeColor="#000066" HorizontalAlign="Left" />
            <Columns>
                <asp:BoundColumn DataField="state" HeaderText="State" SortExpression="state">
                </asp:BoundColumn>
                <asp:BoundColumn DataField="location" HeaderText="Location" SortExpression="location">
                </asp:BoundColumn>
                <asp:BoundColumn DataField="place" HeaderText="Place" SortExpression="place">
                </asp:BoundColumn>
                <asp:ButtonColumn CommandName="Delete" HeaderText="DELETE" Text="Delete"></asp:ButtonColumn>
                <asp:EditCommandColumn CancelText="Cancel" EditText="Edit" HeaderText="Edit" UpdateText="Update">
                </asp:EditCommandColumn>
               
            </Columns>
            <FooterStyle BackColor="White" ForeColor="#000066" />
            <SelectedItemStyle BackColor="#669999" Font-Bold="True" ForeColor="White" />
            <ItemStyle ForeColor="#000066" />
            <HeaderStyle BackColor="#006699" Font-Bold="True" ForeColor="White" />
        </asp:DataGrid><br />
        
        <table>
            <tr>
               <td colspan="3">
                    &nbsp;<asp:Label ID="Label7" runat="server" Font-Bold="True" Font-Names="Arial" ForeColor="DarkSeaGreen"
                        Text="UPDATE BANNER DETAILS"></asp:Label></td>
            </tr>
            <tr>
                <td style="width: 66px; height: 24px">
                    <asp:Label ID="Label3" runat="server" Text="State"></asp:Label></td>
                <td colspan="2" style="width: 133px; height: 24px;">
                    <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox></td>
            </tr>
            <tr>
                <td style="width: 66px">
                    <asp:Label ID="Label4" runat="server" Text="Location"></asp:Label></td>
                <td colspan="2" style="width: 133px">
                    <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox></td>
            </tr>
            <tr>
                <td style="width: 66px">
                    <asp:Label ID="Label5" runat="server" Text="Place"></asp:Label></td>
                <td colspan="2" style="width: 133px">
                    <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox></td>
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
