<%@ Page Language="C#" MasterPageFile="~/Site6.Master" AutoEventWireup="true" CodeBehind="adduser.aspx.cs" Inherits="software.adduser" Title="Untitled Page" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

<center>
<div id="frm">
<FORM id="POST" runat  = "server" >
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
        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" ErrorMessage="Please enter Name"  Display ="Dynamic"
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
        <asp:RequiredFieldValidator ID="RequiredFieldValidator7" ErrorMessage="Please enter Age" Display ="Dynamic"
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
        <asp:TextBox ID="Txtcontact" runat="server" MaxLength ="10"></asp:TextBox><span style="color:red;">*</span>
        </br>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" ErrorMessage="Please enter your contact no." Display ="Dynamic"
    ControlToValidate="Txtcontact" runat="server" /><br />
    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
      ControlToValidate="Txtcontact" ErrorMessage="Enter Valid Contact No." Display ="Dynamic" 
    ValidationExpression="[0-9]{10}"></asp:RegularExpressionValidator>
    
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
        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" ErrorMessage="Please enter Type" Display ="Dynamic"
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
        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" ErrorMessage="Please enter Username" Display ="Dynamic"
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
        <asp:RequiredFieldValidator ID="RequiredFieldValidator5" ErrorMessage="Please enter Password" Display ="Dynamic"
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
        <asp:RequiredFieldValidator ID="RequiredFieldValidator6" ErrorMessage="Please enter Branch" Display ="Dynamic"
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
    <asp:Button ID="Button1" runat="server" Text="Add User" 
        onclick="Button1_Click" /></P>
        
    <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
</FORM>
</div>
</center>
</body>
<head>
<style>
#frm {
    background-color: lightgrey;
    width: 40%;
    border: 25px ;
    padding: 25px;
    margin: 2.5%;
}
</style>
</head>

</asp:Content>
