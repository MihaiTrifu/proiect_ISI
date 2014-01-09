<%@ Page Title="" Language="C#" MasterPageFile="~/Dept_Manager/DepatmentManager_main.master" AutoEventWireup="true" CodeBehind="Dept_deleteEmp.aspx.cs" Inherits="TimeSheet.Dept_Manager.Dept_deleteEmp" %>

<asp:Content runat="server" ID="Content3" ContentPlaceHolderID="MainContent" >
    <asp:Panel ID="Panel1" runat="server" Height="188px">
       <asp:Label ID="Label1" runat="server" Font-Bold="False" Font-Size="Larger" Text="~ Add/Delete an Employee ~"></asp:Label>
        <aside style="z-index: 1; height: 103px; right: 37px; margin-right: 0px">
            <ul>
                <li><a id="A541" runat="server" href="">Add/Delete an employee</a></li>
                <li><a id="A544" runat="server" href="">Assigning Project Project</a></li>
            </ul>
            <asp:Panel ID="Panel2" runat="server" style="position: relative; top: -49px; left: -669px; height: 62px; width: 292px">
                <table style="width: 100%">
                    <tr>
                        <td style="width: 88px; text-align: right">ID</td>
                        <td>
                            <asp:DropDownList ID="DropDownList1" runat="server" Height="23px" Width="143px">
                            </asp:DropDownList>
                        </td>
                    </tr>
                    <tr>
                        <td style="width: 88px">
                            <asp:Button ID="Button2" runat="server" Font-Overline="False" Font-Size="Smaller" Text="Delete" Width="74px" />
                        </td>
                        <td>
                            <asp:Button ID="Button1" runat="server" Font-Size="Smaller" Text="Add" Width="82px" />
                        </td>
                    </tr>
                </table>
            </asp:Panel>
        </aside>
    </asp:Panel>
</asp:Content>