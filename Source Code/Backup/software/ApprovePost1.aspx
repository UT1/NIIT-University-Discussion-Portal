<%@ Page Language="C#" MasterPageFile="~/Site6.Master" AutoEventWireup="true" CodeBehind="ApprovePost1.aspx.cs" Inherits="software.ApprovePost1" Title="Untitled Page" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

<form id="form1" runat="server">
 <asp:Panel ID="Panel1" runat = "server">
  <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
<center>
<asp:GridView ID="GridView1" runat="server" Width="750px" 
        AllowPaging="True" OnPageIndexChanging ="OnPaging" onselectedindexchanged="GridView1_SelectedIndexChanged"
        AllowSorting="True" AutoGenerateColumns="False" >
         <Columns>
                        <asp:BoundField DataField="PostId" HeaderText="Post Id"  ItemStyle-HorizontalAlign="Center" HeaderStyle-HorizontalAlign ="Center"  />     
                        <asp:BoundField DataField="Username" HeaderText="Posted By" ItemStyle-HorizontalAlign="Center"  />
                        <asp:BoundField DataField="Date" HeaderText="Date of Post" ItemStyle-HorizontalAlign="Center" />  
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

<h3>Posted By:</h3>
    <asp:TextBox ID="Txtby" runat="server"   Columns="40" Enabled = "false"></asp:TextBox><br />


<h3>Subject:</h3>
    <asp:TextBox ID="TxtSubject" runat="server" style ="height:50px;"  Columns="40" TextMode = "MultiLine"></asp:TextBox><br />

    <h3>Description:</h3>
    <asp:TextBox ID="TxtEditLost" runat="server" style ="height:200px;"  Columns="40" TextMode = "MultiLine"></asp:TextBox><br />
    <h3>Comment:</h3>
    <asp:TextBox ID="TxtComment" runat="server" style ="height:50px;"  Columns="40" TextMode = "MultiLine"></asp:TextBox><br />
    <asp:Button ID="Button1" runat="server" Text="APPROVE" 
        onclick="Button1_Click" />
    <asp:Button ID="Button2" runat="server" Text="REJECT" onclick="Button2_Click" />
    </div>
    </center>
</asp:Panel>
 </form>
 <center>
    <asp:Label ID="Label2" runat="server" Text="Label"></asp:Label>
    </center>
</asp:Content>
