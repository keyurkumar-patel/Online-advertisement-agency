<%@ Page Language="C#" MasterPageFile="~/Master.Master" AutoEventWireup="true" CodeBehind="register.aspx.cs" Inherits="project.register" Title="Untitled Page" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
<div id="templatemo_main_top_sb"></div>
    <div id="templatemo_main_sb">
    	
                    <form id="Form1" method="post" name="register" action="#" runat="server">
                    <div>
                    
                      <table  style="left: 230px; width: 208px; position: absolute; top: 270px">
            <tr>
                <td>
                       <span style="font-size: 16pt"><span
                        style="font-family: Times New Roman"><span style="color:Olive">Advertising media </span></span></span></td>
            </tr>
           <tr>
                <td>
                    <asp:Image ID="Image1" runat="server" ImageUrl="~/images/magazine.jpg" /></td>
            </tr>
             <tr><td></td></tr><tr><td></td></tr>
           <tr>
                <td>
                    <asp:Image ID="Image2" runat="server" ImageUrl="~/images/internet.jpg" /></td>
            </tr>
            <tr><td></td></tr><tr><td></td></tr>
            <tr>
                <td>
                    <asp:Image ID="Image3" runat="server" ImageUrl="~/images/banner.jpg" /></td>
            </tr>
            </table>
                    
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="TextBox4"
            ErrorMessage="Not a Valid Email-ID"
            ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
        
       
       <asp:Label ID="Label2"
            runat="server" Font-Bold="True" Font-Size="Medium" ForeColor="Red" 
            style="left: 421px; position: absolute; top: 138px; height: 11px;" 
            Font-Names="Times New Roman"></asp:Label>
         
        <center><table >
            <tr>
                <td colspan="2" style="height: 1px">
                    <span style="font-size: 18pt">&nbsp; &nbsp; <span
                        style="font-family: Times New Roman">&nbsp;<b> <span style="color:Green">
                            Member Registration</span></b></span></span><br /><br />
         
                </td>
            </tr>
            
                    <tr>
                        <td colspan="3" style="height: 50px">
                            <span style="color:Red">&nbsp; &nbsp; &nbsp; &nbsp; <span
                                style="font-size: 12pt">*</span></span><span style="font-size:large; font-family: Times New Roman"><span style="color:Red">Fields are mandatory</span><br />
                                </span>
                            </td>
                    </tr>
                    <tr>
                        <td style="width: 189px; height: 25px">
                            <span style="font-size: 12pt; font-family: Times New Roman">Email ID:</span></td>
                        <td style="width: 110px; height: 25px">
                            <asp:TextBox ID="TextBox4" runat="server" Height="23px" Width="152px"></asp:TextBox></td>
                        <td style="width: 37px; height: 25px">
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" ControlToValidate="TextBox4"
                                Display="Static" InitialValue="" Width="100%" Font-Size="XX-Small">
            *
        </asp:RequiredFieldValidator></td>
                    </tr>
                    <tr>
                        <td style="width: 189px; height: 25px">
                            <span style="font-size: 12pt; font-family: Times New Roman">
                            User Name:</span></td>
                        <td style="width: 110px; height: 25px">
                            <asp:TextBox ID="TextBox6" runat="server" Height="23px" Width="152px"></asp:TextBox></td>
                        <td style="width: 37px; height: 25px">
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="TextBox6"
                                Display="Static" InitialValue="" Width="100%" Font-Size="XX-Small">
            *
        </asp:RequiredFieldValidator></td>
                    </tr>
                    <tr>
                        <td style="width: 189px; height: 26px">
                            <span style="font-size: 12pt; font-family: Times New Roman">
                            Password:</span></td>
                        <td style="width: 110px; height: 26px">
                            <asp:TextBox
                        ID="TextBox7" runat="server" TextMode="Password" Width="152px" Height="23px"></asp:TextBox></td>
                        <td style="width: 37px; height: 26px">
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="TextBox7"
                                Display="Static" InitialValue="" Width="100%" Font-Size="XX-Small">
            *
        </asp:RequiredFieldValidator></td>
                    </tr>
                    <tr>
                        <td style="width: 189px; height: 26px">
                            <span style="font-size: 12pt; font-family: Times New Roman">
                            Retype Pasword</span></td>
                        <td style="width: 110px; height: 26px">
                            <asp:TextBox ID="TextBox5" runat="server" Height="23px" Width="152px" TextMode="Password"></asp:TextBox></td>
                        <td style="width: 37px; height: 26px">
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ControlToValidate="TextBox5"
                                Display="Static" Font-Size="XX-Small" InitialValue="" Width="100%">
            *
        </asp:RequiredFieldValidator></td>
        <asp:CompareValidator ID="CompareValidator1" runat="server" 
                                ControlToCompare="TextBox7" ControlToValidate="TextBox5" 
                                ErrorMessage="Password did not match" Style="left: 406px; position: absolute; top:250px; width: 255px;">
                                </asp:CompareValidator>
                    </tr>
                    <tr>
                        <td style="width: 189px; height: 26px"><span style="font-size: 12pt; font-family: Times New Roman">Name:</span></td>
                        <td style="width: 110px; height: 26px">
                            <asp:TextBox ID="TextBox8"
                            runat="server" Height="23px" Width="152px" ></asp:TextBox></td>
                        <td style="width: 37px; height: 26px">
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="TextBox8"
                                Display="Static" InitialValue="" Width="100%" Font-Size="XX-Small">
            *
        </asp:RequiredFieldValidator>&nbsp;
                        </td>
                    </tr>
                    <tr>
                        <td style="width: 189px; height: 45px">
                            <span style="font-size: 12pt; font-family: Times New Roman">
                            Address:</span></td>
                        <td style="width: 110px; height: 45px">
                            <asp:TextBox ID="TextBox9" runat="server"
                            Height="50px" TextMode="MultiLine" Width="152px"></asp:TextBox></td>
                        <td style="width: 37px; height: 45px">
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="TextBox9"
                                Display="Static" InitialValue="" Width="100%" Font-Size="XX-Small">
            *
        </asp:RequiredFieldValidator></td>
                    </tr>
                    <tr>
                        <td style="width: 189px; height: 21px">
                            <span style="font-size: 12pt; font-family: Times New Roman">
                            Mobile
                        No:</span></td>
                        <td style="width: 110px; height: 21px">
                            <asp:TextBox ID="TextBox10" runat="server" Height="23px" Width="152px"></asp:TextBox></td>
                        <td style="width: 37px; height: 21px">
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="TextBox10"
                                Display="Static" InitialValue="" Width="100%" Font-Size="XX-Small">
            *
        </asp:RequiredFieldValidator></td>
                    </tr>
                    <tr>
                        <td style="width: 189px">
                            <span style="font-size: 12pt; font-family: Times New Roman">
                            Phone No:</span></td>
                        <td style="width: 110px">
                            <asp:TextBox
                        ID="TextBox11" runat="server" Height="23px" Width="152px"></asp:TextBox></td>
                        <td style="width: 37px">
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox11"
                                Display="Static" InitialValue="" Width="100%" Font-Size="XX-Small">
            *
        </asp:RequiredFieldValidator></td>
                    </tr>
                    <tr>
                        <td style="width: 189px">
                            <span style="font-size: 12pt; font-family: Times New Roman">
                            Designation:</span></td>
                        <td style="width: 110px">
                            <asp:TextBox
                        ID="TextBox12" runat="server" Height="23px" Width="152px"></asp:TextBox></td>
                        <td style="width: 37px">
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox12"
                                Display="Static" InitialValue="" Width="100%" Font-Size="XX-Small">
            *
        </asp:RequiredFieldValidator></td>
                         <td>
                             &nbsp;</td>
                    </tr>
                    <tr>
                        <td colspan="3" style="height: 48px">
                    <asp:CheckBox ID="CheckBox1" runat="server" Text="I agree the terms and Conditions" Width="327px" Font-Names="Times New Roman" Font-Size="Larger" />
                            &nbsp;<span><span style="font-size: 12pt"> &nbsp; &nbsp;<br />
                        <br />
                            </span></span>
                        </td>
                    </tr>
                    <tr>
                        <td colspan="3" style="height: 35px">
                            
                          <asp:Button ID="Button1" runat="server" Text="SUBMIT" OnClick="Button1_Click" />
                         

                            <br />
                        </td>
                    </tr>
                
                &nbsp; &nbsp; &nbsp; 
                <asp:Label ID="Label3" runat="server" Font-Names="Times New Roman" Font-Size="Small"
                    ForeColor="Red" Style="left: 24px; position: absolute; top: 550px"></asp:Label>
                &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;<span style="color: #ff0033">&nbsp; &nbsp;&nbsp;
                   </span> </table></center>
                   
                   <table style="left: 950px; width: 208px; position: absolute; top: 270px">
            <tr>
                <td>
                       <span style="font-size: 16pt"><span
                        style="font-family: Times New Roman"><span style="color:Olive">Advertising media </span></span></span></td>
            </tr>
            
             <tr>
                <td>
                    <asp:Image ID="Image4" runat="server" ImageUrl="~/images/Radio.jpg" /></td>
            </tr>
             <tr><td></td></tr><tr><td></td></tr>
           <tr>
                <td>
                    <asp:Image ID="Image5" runat="server" ImageUrl="~/images/newspaper.jpg" /></td>
            </tr>
            <tr><td></td></tr><tr><td></td></tr>
            <tr>
                <td>
                    <asp:Image ID="Image6" runat="server" ImageUrl="~/images/television.jpg" /></td>
            </tr>
            </table>
            
                    </div>
                    </form>
            
                </div>
           
            <div class="cleaner"></div>
    
    
</asp:Content>
