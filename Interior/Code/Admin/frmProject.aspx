<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/AdminMasterPage.master" AutoEventWireup="true" CodeFile="frmProject.aspx.cs" Inherits="Admin_frmProject" %>

<asp:Content ID="Content1" ContentPlaceHolderID="Head_ContentPlaceHolder" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder" runat="Server">
    <div id="page-wrapper">
        <table align="center" style="position: relative; top: 20px;">
                <tr>
                    <td>
                        <table align="center">
                            <tr>

                                <td>Project Name :</td>
                                <td>
                                    <asp:TextBox ID="txtProjectName" runat="server" MaxLength="50" Width="250px"></asp:TextBox>
                                </td>
                            </tr>
                            <tr>
                                <td>Active :</td>
                                <td>
                                    <asp:CheckBox ID ="chk_Active" runat ="server" />
                                </td>

                            </tr>
                            
                            <tr>
                                <td colspan="2" align="center">
                                    <asp:Button ID="btnSave" runat="server" Text="Save" OnClick="btnSave_Click" />
                                    <asp:Button ID="btnUpdate" runat="server" Text="Update" OnClick="btnUpdate_Click" Visible="false" />
                                    <asp:Button ID="btnClear" runat="server" Text="Clear" OnClick="btnClear_Click" />
                                </td>
                            </tr>
                        </table>
                    </td>
                </tr>
                
                <tr>
                    <td align="center">
                        <br />
                        <asp:Label ID="lblMessage" runat="server" EnableViewState="false" ForeColor="Blue"></asp:Label>
                    </td>
                </tr>
                
                <tr>
                    <td>
                        
                    </td>
                </tr>
            </table>

            <div>
                <br />
                <br />
                <br />
                <asp:GridView ID="gvDepartments" runat="server" AutoGenerateColumns="False"
                    ShowHeaderWhenEmpty="True" Width="100%"
                            EmptyDataText="No Records Found" GridLines="Vertical" CssClass="gv" EmptyDataRowStyle-ForeColor="Red" BackColor="White" BorderColor="#DEDFDE" BorderStyle="None" BorderWidth="1px" CellPadding="4" ForeColor="Black">
                            
                            <AlternatingRowStyle BackColor="White" />
                            
                            <Columns>
                                <asp:TemplateField HeaderText="Project Name">
                                    <ItemTemplate>
                                        <asp:Label ID="lblProjectName" runat="server" Text='<%#Eval("Project_Name") %>'></asp:Label>
                                    </ItemTemplate>
                                </asp:TemplateField>
                                
                                <asp:TemplateField HeaderText="Active">
                                    <ItemTemplate>
                                        <asp:Label ID="lblActive" runat="server" Text='<%#Eval("Is_Active") %>'></asp:Label>
                                    </ItemTemplate>
                                </asp:TemplateField>
                                
                                <asp:TemplateField HeaderText="Action">
                                    <ItemTemplate>
                                        <asp:Button ID="btnEdit" runat="server" Text="Edit" OnClick="btnEdit_Click" />
                                        <asp:Button ID="btnDelete" runat="server" Text="Delete" OnClientClick="return confirm('Are you sure? want to delete the Project.');" OnClick="btnDelete_Click" />
                                        <asp:Label ID="lblProjectID" runat="server" Text='<%#Eval("PID") %>' Visible="false"></asp:Label>
                                    </ItemTemplate>
                                </asp:TemplateField>

                            </Columns>
                            <EmptyDataRowStyle ForeColor="Red"></EmptyDataRowStyle>
                            <FooterStyle BackColor="#CCCC99" />
                            <HeaderStyle BackColor="#6B696B" Font-Bold="True" ForeColor="White" />
                            <PagerStyle BackColor="#F7F7DE" ForeColor="Black" HorizontalAlign="Right" />
                            <RowStyle BackColor="#F7F7DE" />
                            <SelectedRowStyle BackColor="#CE5D5A" Font-Bold="True" ForeColor="White" />
                            <SortedAscendingCellStyle BackColor="#FBFBF2" />
                            <SortedAscendingHeaderStyle BackColor="#848384" />
                            <SortedDescendingCellStyle BackColor="#EAEAD3" />
                            <SortedDescendingHeaderStyle BackColor="#575357" />
                            <HeaderStyle HorizontalAlign="Center" CssClass="gridHeader"></HeaderStyle>

                        </asp:GridView>
            </div>
            <input type="hidden" runat="server" id="hidProjectID" />
        </div>
</asp:Content>

