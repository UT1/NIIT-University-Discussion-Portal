<%@ Page Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Manage_Profile.aspx.cs" Inherits="software.Manage_Profile" Title="Untitled Page" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

<form id = "form1" runat = "server">
<asp:Label ID="Label21" runat="server" Text="Label"></asp:Label>
<center>
<table >
<tr>
<td>
    <asp:Label ID="Label1" runat="server" Text="User Id"></asp:Label>
</td>
<td>
    <asp:Label ID="Label2" runat="server" Text=":"></asp:Label>
</td>
<td >
    <asp:TextBox ID="Txtid" runat="server" Columns ="50" style ="margin-left:20px;" Enabled ="false"></asp:TextBox>
    
</td>
</tr>

<tr >
<td>
    <asp:Label ID="Label3" runat="server" Text="Username"></asp:Label>
</td>
<td>
    <asp:Label ID="Label4" runat="server" Text=":"></asp:Label>
</td>
<td>
    <asp:TextBox ID="Txtusername" runat="server" Columns ="50" style ="margin-left:20px;" Enabled ="false"></asp:TextBox>
    
</td>
</tr>
<br />
<tr>
<td>
    <asp:Label ID="Label5" runat="server" Text="Password"></asp:Label>
</td>
<td>
    <asp:Label ID="Label6" runat="server" Text=":"></asp:Label>
</td>
<td>
    <asp:TextBox ID="Txtpassword" runat="server" Columns ="50" style ="margin-left:20px;"></asp:TextBox>
    
</td>
</tr>
<br />
<tr>
<td>
    <asp:Label ID="Label7" runat="server" Text="Full Name"></asp:Label>
</td>
<td>
    <asp:Label ID="Label8" runat="server" Text=":"></asp:Label>
</td>
<td>
    <asp:TextBox ID="Txtname" runat="server" Columns ="50" style ="margin-left:20px;"></asp:TextBox>
    
</td>
</tr>
<br />
<tr>
<td>
    <asp:Label ID="Label9" runat="server" Text="Age"></asp:Label>
</td>
<td>
    <asp:Label ID="Label10" runat="server" Text=":"></asp:Label>
</td>
<td>
    <asp:TextBox ID="TxtAge" runat="server" Columns ="50" style ="margin-left:20px;"></asp:TextBox>
    
</td>
</tr>
<br />
<tr>
<td>
    <asp:Label ID="Label11" runat="server" Text="Father's Name"></asp:Label>
</td>
<td>
    <asp:Label ID="Label12" runat="server" Text=":"></asp:Label>
</td>
<td>
    <asp:TextBox ID="Txtfname" runat="server" Columns ="50" style ="margin-left:20px;"></asp:TextBox>
    
</td>
</tr>
<br />
<tr>
<td>
    <asp:Label ID="Label13" runat="server" Text="Address"></asp:Label>
</td>
<td>
    <asp:Label ID="Label14" runat="server" Text=":"></asp:Label>
</td>
<td>
    <asp:TextBox ID="TxtAddress" runat="server" Columns ="50" style ="margin-left:20px;"></asp:TextBox>
    
</td>
</tr>
<br />
<tr>
<td>
    <asp:Label ID="Label15" runat="server" Text="Contact No."></asp:Label>
</td>
<td>
    <asp:Label ID="Label16" runat="server" Text=":"></asp:Label>
</td>
<td>
    <asp:TextBox ID="Txtcontact" runat="server" Columns ="50" style ="margin-left:20px;"></asp:TextBox>
    
</td>
</tr>
<br />
<tr>
<td>
    <asp:Label ID="Label17" runat="server" Text="Gender"></asp:Label>
</td>
<td>
    <asp:Label ID="Label18" runat="server" Text=":"></asp:Label>
</td>
<td>
    <asp:TextBox ID="TxtGender" runat="server" Columns ="50" style ="margin-left:20px;"></asp:TextBox>
    
</td>
</tr>
<br />
<tr>
<td>
    <asp:Label ID="Label19" runat="server" Text="Email-id"></asp:Label>
</td>
<td>
    <asp:Label ID="Label20" runat="server" Text=":"></asp:Label>
</td>
<td>
    <asp:TextBox ID="Txtemail" runat="server" Columns ="50" style ="margin-left:20px;"></asp:TextBox>
</td>
</tr>
<tr>
<td>
</td>
<td></td>
<td>
    <asp:Button ID="Button2" runat="server" Text="Update" onclick="Button2_Click" style ="margin-left:160px;" />
     
</td>
</tr>
<br />
</table>
</center>
</form>
</asp:Content>
