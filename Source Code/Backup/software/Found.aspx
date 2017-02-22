<%@ Page Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Found.aspx.cs" Inherits="software.Found" Title="Untitled Page" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <form id="form1" runat="server">
<style>
#frm {
    background-color: lightgrey;
    width: 40%;
    border: 25px ;
    padding: 25px;
    margin: 2.5%;
}
</style>
<center>
<div id="frm">

<h3>Subject:</h3>
    <asp:TextBox ID="TxtSubject" runat="server" style ="height:50px;"  Columns="40" ></asp:TextBox><br />
    <asp:RequiredFieldValidator ID="rfv1" ErrorMessage="Please enter Subject" 
    ControlToValidate="TxtSubject" runat="server" />

<h3>Description:</h3>
    <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
    <asp:TextBox ID="TxtFound" runat="server" style ="height:200px;"  Columns="40" TextMode = "MultiLine"></asp:TextBox><br />
    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" ErrorMessage="Please enter Description" 
    ControlToValidate="TxtFound" runat="server" />
<h3>Select images:</h3>
    <asp:FileUpload ID="FileUpload1" runat="server" />
<asp:Button ID="FoundPost" runat="server" Text="POST" onclick="FoundPost_Click" />
</div>
</center>
</form>
</asp:Content>
