<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/AdminMasterPage.master" AutoEventWireup="true" CodeFile="Default2.aspx.cs" Inherits="Admin_Default2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="Head_ContentPlaceHolder" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder" Runat="Server">

    <asp:DataGrid id="abc"  runat="server">
        <AlternatingItemStyle />
        <ItemStyle />
        <HeaderStyle />
        <Columns>
            <asp:TemplateColumn>

            </asp:TemplateColumn>
        </Columns>

    </asp:DataGrid>
</asp:Content>

