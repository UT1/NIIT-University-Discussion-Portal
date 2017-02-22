<%@ Page Language="C#" MasterPageFile="~/Site6.Master" AutoEventWireup="true" CodeBehind="editprofile.aspx.cs" Inherits="software.editprofile" Title="Untitled Page" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

<form id="form1" runat="server">
 <asp:Panel ID="Panel1" runat = "server">
  <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
<center>
<asp:GridView ID="GridView1" runat="server" Width="750px" 
        AllowPaging="True" onselectedindexchanged="GridView1_SelectedIndexChanged" OnPageIndexChanging = "OnPaging"
        AllowSorting="True" AutoGenerateColumns="False" >
         <Columns>
                        <asp:BoundField DataField="UserId" HeaderText="User Id"  ItemStyle-HorizontalAlign="Center" HeaderStyle-HorizontalAlign ="Center"  />     
                        <asp:BoundField DataField="Username" HeaderText="User Name" ItemStyle-HorizontalAlign="Center"  />
                        <asp:BoundField DataField="name" HeaderText="Name" ItemStyle-HorizontalAlign="Center" />  
                        <asp:BoundField DataField="phoneno" HeaderText="Contact" ItemStyle-HorizontalAlign="Center" /> 
                        <asp:BoundField DataField="Branch" HeaderText="Branch " ItemStyle-HorizontalAlign="Center" /> 
                        <asp:BoundField DataField="email" HeaderText="Email ID" ItemStyle-HorizontalAlign="Center" />                  
                        <asp:CommandField  ShowSelectButton="True" ItemStyle-HorizontalAlign="Center" >
                        <ItemStyle HorizontalAlign="Center"></ItemStyle>
                        </asp:CommandField>
                    </Columns>
                        <HeaderStyle BackColor = "Black"  ForeColor ="White"/>
                        
    </asp:GridView>
    <br />
</center>
</asp:Panel>
<asp:Panel ID ="Panel2" runat ="server">
    <style>
.frm {
    background-color: lightgrey;
    width: 40%;
    border: 25px ;
    padding: 25px;
    margin: 2.5%;
}
</style>
<center>
<div class="frm">

<TABLE >
<tr>
  <td>
  <br />
  </td>
  <td>
  <br />
  </td>
  <td>
  <br />
  </td>
  </tr>
  <TR>
    <TD>Name</TD>
    <td>:</td>
    <TD>
        <asp:TextBox ID="Txtname" runat="server"></asp:TextBox><span style="color:red;">*</span><br />
        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" ErrorMessage="Please enter Name" 
    ControlToValidate="Txtname" runat="server" /><br />
    
    </TD>
  </TR>
  <tr>
  <td>
  <br />
  </td>
  <td>
  <br />
  </td>
  <td>
  <br />
  </td>
  </tr>
  <TR>
    <TD>Father's Name</TD>
    <td>:</td>
    <TD>
        <asp:TextBox ID="Txtfname" runat="server"></asp:TextBox>
    </TD>
  </TR>
  <tr>
  <td>
  <br />
  </td>
  <td>
  <br />
  </td>
  <td>
  <br />
  </td>
  </tr>
  <TR>
    
    <TD>Age</TD>
    <td>:</td>
    <TD>
        <asp:TextBox ID="TxtAge" runat="server"></asp:TextBox><span style="color:red;">*</span><br />
        <asp:RequiredFieldValidator ID="RequiredFieldValidator7" ErrorMessage="Please enter Age" 
    ControlToValidate="TxtAge" runat="server" /><br />
    </TD>
  </TR>
  <tr>
  <td>
  <br />
  </td>
  <td>
  <br />
  </td>
  <td>
  <br />
  </td>
  </tr>
  <TR>
    <TD>Gender</TD>
    <td style ="width:15px;">:</td>
    <TD>
        <asp:TextBox ID="TxtGender" runat="server"></asp:TextBox>
    </TD>
  </TR>
  <tr>
  <td>
  <br />
  </td>
  <td>
  <br />
  </td>
  <td>
  <br />
  </td>
  </tr>

  <TR>
    <TD>E-mail address</TD>
    <td style ="width:15px;">:</td>
    <TD>
        <asp:TextBox ID="Txtemail" runat="server"></asp:TextBox>
    </TD>
  </TR>
  <tr>
  <td>
  <br />
  </td>
  <td>
  <br />
  </td>
  <td>
  <br />
  </td>
  </tr>
  <TR>
    <TD>Contact</TD>
    <td>:</td>
    <TD>
        <asp:TextBox ID="Txtcontact" runat="server"></asp:TextBox><span style="color:red;">*</span>
        </br>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" ErrorMessage="Please enter your contact no." 
    ControlToValidate="Txtcontact" runat="server" /><br />
    
    </TD>
  </TR>
  <tr>
  <td>
  <br />
  </td>
  <td>
  <br />
  </td>
  <td>
  <br />
  </td>
  </tr>
  <TR>
    <TD> Address</TD>
    <td>:</td>
    <TD>
        <asp:TextBox ID="TxtAddress" runat="server"></asp:TextBox>
    
    </TD>
  </TR>
  <tr>
  <td>
  <br />
  </td>
  <td>
  <br />
  </td>
  <td>
  <br />
  </td>
  </tr>
  <TR>
    <TD>Type</TD>
    <td style ="width:15px;">:</td>
    <TD>
        <asp:TextBox ID="Txttype" runat="server"></asp:TextBox><span style="color:red;">*</span><br />
        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" ErrorMessage="Please enter Type" 
    ControlToValidate="Txttype" runat="server" /><br />
    
    </TD>
  </TR>
  <tr>
  <td>
  <br />
  </td>
  <td>
  <br />
  </td>
  <td>
  <br />
  </td>
  </tr>

<TR>
    <TD>Username</TD>
    <td style ="width:15px;">:</td>
    <TD>
        <asp:TextBox ID="Txtusername" runat="server"></asp:TextBox><span style="color:red;">*</span><br />
        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" ErrorMessage="Please enter Username" 
    ControlToValidate="Txtusername" runat="server" /><br />
    
    </TD>
  </TR>
  <tr>
  <td>
  <br />
  </td>
  <td>
  <br />
  </td>
  <td>
  <br />
  </td>
  </tr>

<TR>
    <TD>Password</TD>
    <td style ="width:15px;">:</td>
    <TD>
        <asp:TextBox ID="Txtpassword" runat="server"></asp:TextBox><span style="color:red;">*</span><br />
        <asp:RequiredFieldValidator ID="RequiredFieldValidator5" ErrorMessage="Please enter Password" 
    ControlToValidate="Txtpassword" runat="server" /><br />
    </TD>
  </TR>
  <tr>
  <td>
  <br />
  </td>
  <td>
  <br />
  </td>
  <td>
  <br />
  </td>
  </tr>

<TR>
    <TD>Branch</TD>
    <td style ="width:15px;">:</td>
    <TD>
        <asp:TextBox ID="Txtbranch" runat="server"></asp:TextBox><span style="color:red;">*</span><br />
        <asp:RequiredFieldValidator ID="RequiredFieldValidator6" ErrorMessage="Please enter Branch" 
    ControlToValidate="Txtbranch" runat="server" /><br />
    </TD>
  </TR>
  <tr>
  <td>
  <br />
  </td>
  <td>
  <br />
  </td>
  <td>
  <br />
  </td>
  </tr>


</TABLE>
<P>
    <asp:Button ID="Edit" runat="server" Text="Add User" 
     onclick="Button1_Click"    /></P>
        
</div>
    </center>
</asp:Panel>
 </form>
 <center>
    <asp:Label ID="Label2" runat="server" Text="Label"></asp:Label>
    </center>
</asp:Content>
