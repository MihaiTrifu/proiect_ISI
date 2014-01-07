<%@ Page Title="" Language="C#" MasterPageFile="~/Dept_Manager/DepatmentManager_main.master" AutoEventWireup="true" CodeBehind="Dept_managementAddClient.aspx.cs" Inherits="TimeSheet.Dept_Manager.Dept_managementAddClient" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <asp:Panel ID="Panel1" runat="server" Height="72px">
       <asp:Label ID="Label1" runat="server" Font-Bold="False" Font-Size="Larger" Text="~ Add Client ~"></asp:Label>
        <aside style="z-index: 1; height: 72px; right: 6px; margin-right: 0px; position: relative; top: -10px;">
            <ul>
                <li><a id="A501" runat="server" href="Dept_managementAddClient.aspx">Add a new Client</a></li>
                <li><a id="A502" runat="server" href="Dept_managementAddProject.aspx">Add a new project for a client</a></li>
                <li><a id="A503" runat="server" href="Dept_managementAssigning.aspx">Assigning projects to an employee</a></li>
            </ul>
        </aside>
    </asp:Panel>
    <table style="width: 42%; position: relative; top: -49px; left: 134px">
        <tr>
            <td style="font-family: 'Segoe UI'; font-size: medium; width: 228px; text-align: right"><b style="text-align: right">Insert client name:</b></td>
            <td>
                <asp:TextBox ID="insertNameClient" runat="server" Width="257px" Height="24px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="width: 228px; text-align: right">&nbsp;</td>
            <td>
                <asp:Button ID="insertClientName" runat="server" Text="Insert" Width="94px" />
            </td>
        </tr>
    </table>
</asp:Content>
