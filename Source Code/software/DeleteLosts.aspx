<%@ Page Language="C#" MasterPageFile="~/Site2.Master" AutoEventWireup="true" CodeBehind="DeleteLosts.aspx.cs" Inherits="software.DeleteLosts" Title="Untitled Page" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

<form id="form1" runat="server">
  <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
<center>
<asp:GridView ID="GridView1" runat="server" Width="750px" 
        AllowPaging="True" OnRowDeleting ="GridView1_RowDeleting" OnPageIndexChanging = "OnPaging"
        AllowSorting="True" AutoGenerateColumns="False"  DataKeyNames ="PostId">
         <Columns>
                        <asp:BoundField DataField="PostId" HeaderText="Post Id"  ItemStyle-HorizontalAlign="Center" HeaderStyle-HorizontalAlign ="Center"  />     
                        <asp:BoundField DataField="Username" HeaderText="User Name" ItemStyle-HorizontalAlign="Center"  />
                        <asp:BoundField DataField="Date" HeaderText="Date Of Post" ItemStyle-HorizontalAlign="Center" />  
                        <asp:BoundField DataField="Comments" HeaderText="Comments" ItemStyle-HorizontalAlign="Center" /> 
                        <asp:BoundField DataField="Status" HeaderText="Status" ItemStyle-HorizontalAlign="Center" /> 
                        <asp:CommandField  ShowDeleteButton="True" ItemStyle-HorizontalAlign="Center" >
                        <ItemStyle HorizontalAlign="Center"></ItemStyle>
                        </asp:CommandField>
                    </Columns>
                        <HeaderStyle BackColor = "Black"  ForeColor ="White"/>
                        
    </asp:GridView>
    <br />
    <asp:Label ID="Label2" runat="server" Text="Label"></asp:Label>
</center>
</form>
</asp:Content>
