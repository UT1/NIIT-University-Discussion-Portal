<%@ Page Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="software.WebForm1" Title="Untitled Page" %>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
  <form id="form1" runat="server">
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
    <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
 <h3>Subject:</h3>
    <asp:TextBox ID="TextBox2" runat="server" style ="height:50px;"  Columns="40" ></asp:TextBox><br />
    <asp:RequiredFieldValidator ID="rfv1" ErrorMessage="Please enter Subject" 
    ControlToValidate="TextBox2" runat="server" />
 
    <h3>Description:</h3>
    <asp:TextBox ID="TextBox1" runat="server" style ="height:200px;"  Columns="40" TextMode = "MultiLine"></asp:TextBox><br />
   <asp:RequiredFieldValidator ID="rfv2" ErrorMessage="Please enter Description" 
    ControlToValidate="TextBox1" runat="server" />  
    <br />
   
    <asp:Button ID="Button1" runat="server"
        Text="POST" onclick="Button1_Click" /><br/>
    </div>
    </center>
    </form>
</asp:Content>
