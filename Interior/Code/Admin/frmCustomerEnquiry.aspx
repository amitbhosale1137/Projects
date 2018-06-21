<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/AdminMasterPage.master" AutoEventWireup="true" CodeFile="frmCustomerEnquiry.aspx.cs" Inherits="Admin_frmCustomerEnquiry" %>

<asp:Content ID="Content1" ContentPlaceHolderID="Head_ContentPlaceHolder" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder" Runat="Server">
     <div id="page-wrapper">
   
         <div>
             <table>
                 <tr>
                     <td colspan="3">
                         <h3>Customer Enqiry Detail</h3>
                        <br />
                     </td>
                     <td>

                     </td>
                 </tr>
             </table>
             <table runat="server">
                 <tr>
                     <td align="left" style="width:120px;" valign="top">
                         <asp:DropDownList ID="drpSearchList" runat="server" Height="24px">
                             <asp:ListItem Text="--Select--" Value="--Select--"></asp:ListItem>
                             <asp:ListItem Text="Customer Id" Value="Customer Id"></asp:ListItem>
                             <asp:ListItem Text="Name" Value="Name"></asp:ListItem>
                             <asp:ListItem Text="Phone" Value="Phone"></asp:ListItem>
                             <asp:ListItem Text="Subject" Value="Subject"></asp:ListItem>
                             <asp:ListItem Text="Message" Value="Message"></asp:ListItem>
                         </asp:DropDownList>
                     </td>
                     <td align="left" style="width:360px;" valign="top">
                         <asp:TextBox ID="txtSearchText" runat="server" Height="24px" Width="350px"></asp:TextBox>
                     </td>
                     <td align="left" style="width:70px;" valign="top">
                         <asp:Button runat="server" Text="Search" ID="btnSearch" OnClick="btnSearch_Click"/>
                     </td>
                     <td>
                         <asp:Button runat="server" Text="Clear Search" ID="btnClearSearch"  OnClick="btnClearSearch_Click"/>
                     </td>
                 </tr>
             </table>
         </div>
         <br />
         <br />

         <div>
             <asp:GridView ID="grid1" runat="server" AutoGenerateColumns="False" cellspacing="0" CellPadding="4" ForeColor="#333333" style="width:100%;border-collapse:collapse;" GridLines="None"  ShowHeaderWhenEmpty="true">  
                 <AlternatingRowStyle BackColor="White" />  
                 <columns>  
                     <asp:TemplateField HeaderText="Customer Id">  
                         <ItemTemplate>  
                             <asp:Label ID="LblCId" runat="server" Text='<%#Bind("CID") %>'></asp:Label>  
                         </ItemTemplate>  
                     </asp:TemplateField>  
                     <asp:TemplateField HeaderText="Name">  
                         <ItemTemplate>  
                             <asp:Label ID="LblFullName" runat="server" Text='<%#Bind("FullName") %>'></asp:Label>  
                         </ItemTemplate>  
                     </asp:TemplateField>  
                     <asp:TemplateField HeaderText="Phone">  
                         <ItemTemplate>  
                             <asp:Label ID="LblPhoneNo" runat="server" Text='<%#Bind("Phone_No") %>'></asp:Label>  
                         </ItemTemplate>  
                     </asp:TemplateField>  
                     <asp:TemplateField HeaderText="Subject">  
                         <ItemTemplate>  
                             <asp:Label ID="LblSubject" runat="server" Text='<%#Bind("Subject") %>'></asp:Label>  
                         </ItemTemplate>  
                     </asp:TemplateField>  
                     <asp:TemplateField HeaderText="Message">  
                         <ItemTemplate>  
                             <asp:Label ID="LblMessage" runat="server" Text='<%#Bind("Message") %>'></asp:Label>  
                         </ItemTemplate>  
                     </asp:TemplateField>  
                      <asp:TemplateField HeaderText="Date">  
                         <ItemTemplate>  
                             <asp:Label ID="LblDate" runat="server" Text='<%#Bind("Created_Date","{0:dd-MM-yyyy}") %>'></asp:Label>  
                         </ItemTemplate>  
                     </asp:TemplateField>  
                 </columns>  
                 <EmptyDataTemplate>No Record Available</EmptyDataTemplate>  
                 <EditRowStyle BackColor="#2461BF" />  
                 <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />  
                 <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />  
                 <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />  
                 <RowStyle BackColor="#EFF3FB" />  
                 <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />  
                 <SortedAscendingCellStyle BackColor="#F5F7FB" />  
                 <SortedAscendingHeaderStyle BackColor="#6D95E1" />  
                 <SortedDescendingCellStyle BackColor="#E9EBEF" />  
                 <SortedDescendingHeaderStyle BackColor="#4870BE" />  
            </asp:GridView>  
         </div>
     </div>

</asp:Content>

