<%@ Page Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Editlost.aspx.cs" Inherits="software.Editlost" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
 <form id="form1" runat="server">
 <asp:Panel ID="Panel1" runat = "server">
  <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
<center>
<asp:GridView ID="GridView1" runat="server" Width="750px" 
        AllowPaging="True" onselectedindexchanged="GridView1_SelectedIndexChanged" OnPageIndexChanging ="OnPaging"
        AllowSorting="True" AutoGenerateColumns="False" OnRowDataBound = "GridView1_RowDataBound">
         <Columns>
                        <asp:BoundField DataField="PostId" HeaderText="Post Id"  ItemStyle-HorizontalAlign="Center" HeaderStyle-HorizontalAlign ="Center"  />     
                        <asp:BoundField DataField="Username" HeaderText="User Name" ItemStyle-HorizontalAlign="Center"  />
                        <asp:BoundField DataField="Date" HeaderText="Date" ItemStyle-HorizontalAlign="Center" />  
                        <asp:BoundField DataField="Comments" HeaderText="Comments" ItemStyle-HorizontalAlign="Center" />  
                        <asp:BoundField DataField="Status" HeaderText="Status" ItemStyle-HorizontalAlign="Center" />  
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

<h3>Subject:</h3>
    <asp:TextBox ID="TxtSubject" runat="server" style ="height:50px;"  Columns="40" TextMode = "MultiLine"></asp:TextBox><br />
    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" ErrorMessage="Please enter Subject" 
    ControlToValidate="TxtSubject" runat="server" />
    
    <h3>Description:</h3>
    <asp:TextBox ID="TxtEditLost" runat="server" style ="height:200px;"  Columns="40" TextMode = "MultiLine"></asp:TextBox><br />
    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" ErrorMessage="Please enter Description" 
    ControlToValidate="TxtEditLost" runat="server" /><br />
    
    <asp:Button ID="BtnEditLost" runat="server"
        Text="EDIT"  onclick="BtnEditLost_Click"/><br/>
    </div>
    </center>
</asp:Panel>
 </form>
 <center>
    <asp:Label ID="Label2" runat="server" Text="Label"></asp:Label>
    </center>
</asp:Content>
