<%@ Page Language="C#" MasterPageFile="~/adminmaster.Master" AutoEventWireup="true" CodeBehind="admintelevision.aspx.cs" Inherits="project.admintelevision" Title="Untitled Page" %>
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
                    &nbsp;   <asp:Label ID="Label1" runat="server"  Font-Names="Arial" ForeColor="DarkSeaGreen" Font-Bold="True" 
                        Text="Television Registration"></asp:Label>
        <asp:DataGrid ID="DataGrid1" runat="server" AllowPaging="True" AllowSorting="True"
            AutoGenerateColumns="False" BackColor="White" Height="120px" 
            PageSize="5" 
            Width="291px" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="3">
            <PagerStyle Mode="NumericPages" BackColor="White" ForeColor="#000066" HorizontalAlign="Left" />
            <Columns>
                <asp:BoundColumn DataField="cid" HeaderText="C-ID" SortExpression="cuid">
                </asp:BoundColumn>
                <asp:BoundColumn DataField="name" HeaderText="C-Name" SortExpression="cuname">
                </asp:BoundColumn>
                <asp:BoundColumn DataField="station" HeaderText="Channel" SortExpression="station">
                </asp:BoundColumn>
                <asp:BoundColumn DataField="dfrom" HeaderText="F-Dat" SortExpression="fromdate">
                </asp:BoundColumn>
                <asp:BoundColumn DataField="dto" HeaderText="T-Dat" SortExpression="todate">
                </asp:BoundColumn>
                <asp:BoundColumn DataField="program" HeaderText="Prog" SortExpression="program">
                </asp:BoundColumn>
                <asp:BoundColumn DataField="btime" HeaderText="B-Time" SortExpression="btime">
                </asp:BoundColumn>
                <asp:BoundColumn DataField="bduration" HeaderText="P-duration" SortExpression="bduration">
                </asp:BoundColumn>
                <asp:BoundColumn DataField="adduration" HeaderText="Ad-Duration" SortExpression="adduration">
                </asp:BoundColumn>
                <asp:BoundColumn DataField="repeat" HeaderText="Repeat" SortExpression="repeat">
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
        </asp:DataGrid></td>
            </tr>
             </table>
        <br />&nbsp;
        
         <asp:Label ID="Label8" runat="server" ForeColor="DarkSeaGreen" Font-Bold="True" Text="TELEVISION DETAILS"></asp:Label>
        <asp:DataGrid ID="DataGrid2" runat="server" AllowPaging="True" AllowSorting="True"
            AutoGenerateColumns="False" BackColor="White" Height="120px" 
            PageSize="5" 
            Width="881px" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="3">
            <PagerStyle Mode="NumericPages" BackColor="White" ForeColor="#000066" HorizontalAlign="Left" />
            <Columns>
                <asp:BoundColumn DataField="station" HeaderText="Channel" SortExpression="station">
                </asp:BoundColumn>
                <asp:BoundColumn DataField="program" HeaderText="program" SortExpression="program">
                </asp:BoundColumn>
                <asp:BoundColumn DataField="ptime" HeaderText="ptime" SortExpression="ptime">
                </asp:BoundColumn>
                <asp:BoundColumn DataField="pduration" HeaderText="pduration" SortExpression="pduration">
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
                    &nbsp;<asp:Label ID="Label7" runat="server" ForeColor="DarkSeaGreen" Font-Bold="True" Text="UPDATE TELEVISION DETAILS"
                        Width="195px"></asp:Label></td>
            </tr>
            <tr>
                <td style="width: 66px; height: 24px">
                    <asp:Label ID="Label3" runat="server" Text="Station"></asp:Label></td>
                <td colspan="2" style="width: 133px; height: 24px;">
                    <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox></td>
            </tr>
            <tr>
                <td style="width: 66px">
                    <asp:Label ID="Label4" runat="server" Text="Program"></asp:Label></td>
                <td colspan="2" style="width: 133px">
                    <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox></td>
            </tr>
            <tr>
                <td style="width: 66px">
                    <asp:Label ID="Label5" runat="server" Text="Ptime"></asp:Label></td>
                <td colspan="2" style="width: 133px">
                    <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox></td>
            </tr>
            <tr>
                <td style="width: 66px">
                    <asp:Label ID="Label6" runat="server" Text="Pduration"></asp:Label></td>
                <td colspan="2" style="width: 133px">
                    <asp:TextBox ID="TextBox5" runat="server"></asp:TextBox></td>
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
