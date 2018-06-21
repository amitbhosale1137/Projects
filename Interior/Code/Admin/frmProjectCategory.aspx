<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/AdminMasterPage.master" AutoEventWireup="true" CodeFile="frmProjectCategory.aspx.cs" Inherits="Admin_frmProjectCategory" %>
<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>
<asp:Content ID="Content1" ContentPlaceHolderID="Head_ContentPlaceHolder" Runat="Server">
    <style type="text/css">
        .modalBackground
        {
            background-color:black;
            filter:alpha(opacity=90)!important;
            opacity:0.6!important;
            z-index:20;

        }

        .modalpopup{
            padding:20px 0px 24px 10px;
            position:relative;
            width:330px;
            height:170px;
            background-color:white;
            border:1px solid black;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder" Runat="Server">
       <div id="page-wrapper">
    <div>
            <table>
                 <tr>
                     <td colspan="3">
                         <h3>Project Category </h3>
                        <br />
                     </td>
                     <td>

                     </td>
                 </tr>
             </table>

            <table>
                <tr>
                    <td>
                        <asp:Button ID="btnAddNew" runat="server" CssClass="btn-primary" Text="Add New" OnClick="btnAddNew_Click" />
                    </td>
                </tr>
                </table>
        <asp:ToolkitScriptManager ID="ToolkitScriptManager1" runat="server"></asp:ToolkitScriptManager>
            <br />
            <asp:Panel ID="Panel1" runat="server" CssClass="modalpopup">
                <table>
                <tr>
                    <td>
                          <asp:Label runat="server" ID ="lblnName" Text="Project Category"></asp:Label>
                    </td>
                    <tb>&nbsp;&nbsp;&nbsp;&nbsp;</tb>
                    <td>
                        <asp:TextBox runat="server" ID="txtProjectCategory"></asp:TextBox>
                    </td>
                </tr>
                
                <tr>
                    <td align="center" colspan="3"> 
                        <br />
                        <br />
                        <br />
                        <asp:Button runat="server" Text="Save" id="btnSave" OnClick ="btnSave_Click"/>
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:Button ID="btnCancel" runat="server" Text="Cancel" />
                    </td>
                </tr>
                <tr>
                    <td align="center" colspan="3"> 
                        <br />
                        <br />
                        <br />
                        <asp:Label runat="server" ID="lblMessges"> </asp:Label>
                    </td>
                </tr>

          
                            </table>
            </asp:Panel>
        <asp:ModalPopupExtender ID="ModalPopupExtender1" runat="server" CancelControlID="btnCancel" PopupControlID="Panel1" TargetControlID="btnAddNew" BackgroundCssClass="modalBackground"></asp:ModalPopupExtender>
            <br />
        
        </div>

        <div>
            <div>
             
            </div>
            <asp:GridView ID="grid1" runat="server" AutoGenerateColumns="False" cellspacing="0" CellPadding="4" ForeColor="#333333" style="width:100%;border-collapse:collapse;" GridLines="None"  ShowHeaderWhenEmpty="true">  
                 <AlternatingRowStyle BackColor="White" />  
                 <columns>  
                     <asp:TemplateField HeaderText="ID ">  
                         <ItemTemplate>  
                             <asp:Label ID="LblCId" runat="server" Text='<%#Bind("PCID") %>'></asp:Label>  
                         </ItemTemplate>  
                     </asp:TemplateField>  
                     <asp:TemplateField HeaderText="Name">  
                         <ItemTemplate>  
                             <asp:Label ID="Category_Name" runat="server" Text='<%#Bind("Category_Name") %>'></asp:Label>  
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

            <table cellpadding="0" cellspacing="0" border="0" width="100%" class="pager">
                                    <tr>
                                        <td style="width: 100%; text-align: right; height: 20px;">
                                            <strong><span style="font-size: 10pt; font-family: Arial">Page :</span> </strong>
                                            <asp:DropDownList ID="drpPageCount" runat="server" AutoPostBack="True" OnSelectedIndexChanged="drpPageCount_SelectedIndexChanged">
                                            </asp:DropDownList>
                                            <asp:LinkButton ID="lnkFirst" runat="server" CommandName="First" Width="25px" OnCommand="LinkCommand"
                                                Font-Names="Arial" Font-Size="9pt">First</asp:LinkButton>
                                            <asp:LinkButton ID="lnkPr" runat="server" CommandName="Prev" Width="25px" OnCommand="LinkCommand"
                                                Font-Names="Arial" Font-Size="9pt">Prev</asp:LinkButton>
                                            <asp:LinkButton ID="lnkNxt" runat="server" CommandName="Next" Width="25px" OnCommand="LinkCommand"
                                                Font-Names="Arial" Font-Size="9pt">Next</asp:LinkButton>
                                            <asp:LinkButton ID="lnkLast" runat="server" CommandName="Last" Width="25px" OnCommand="LinkCommand"
                                                Font-Names="Arial" Font-Size="9pt">Last</asp:LinkButton>
                                        </td>
                                    </tr>
                                </table>
            
           

            
        </div>
           </div>
</asp:Content>

