<%@ Page Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="createevent.aspx.cs" Inherits="software.createevent" Title="Untitled Page" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

 <script src="http://ajax.googleapis.com/ajax/libs/jquery/1.6/jquery.min.js" type="text/javascript"></script>
    <script src="http://ajax.googleapis.com/ajax/libs/jqueryui/1.8/jquery-ui.min.js"
        type="text/javascript"></script>
    <link href="http://ajax.googleapis.com/ajax/libs/jqueryui/1.8/themes/base/jquery-ui.css"
        rel="Stylesheet" type="text/css" />
<script type ="text/javascript">
('#txtDate').datepicker({
                dateFormat: "dd/MM/yy",
                changeMonth: true,
                changeYear: true
            });
        });
    </script>
 <form id="form1" runat="server">


<style>
#frm {
    background-color: lightgrey;
    width: 40%;
    border: 25px ;
    padding: 25px;
    margin: 2.5%;
}
#txtDate
        {
            background-image: url(http://i988.photobucket.com/albums/af3/mudassarkhan/calender.png);
            background-repeat: no-repeat;
            padding-left: 25px;
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
    <asp:TextBox ID="TxtEvent" runat="server" style ="height:200px;"  Columns="40" TextMode = "MultiLine"></asp:TextBox><br />
    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" ErrorMessage="Please enter Description" 
    ControlToValidate="TxtEvent" runat="server" />

 
 <h3>Send Approval To:</h3>
  <asp:DropDownList ID="ddl" runat="server">
    <asp:ListItem Selected= "True" Value="1" > Please Select </asp:ListItem>
    <asp:ListItem Value="2"> Academics Department </asp:ListItem>
    <asp:ListItem Value="3"> Cultural Department </asp:ListItem>
    <asp:ListItem Value="4"> Sports Department </asp:ListItem>
    </asp:DropDownList><br/>
    
    <br/>
    <asp:Button ID="EventPost" runat="server" Text="POST" 
        onclick="EventPost_Click" /><br />
</div>
</center>
</form>
 
</asp:Content>
