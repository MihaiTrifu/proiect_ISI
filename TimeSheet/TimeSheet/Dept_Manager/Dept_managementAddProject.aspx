<%@ Page Title="" Language="C#" MasterPageFile="~/Dept_Manager/DepatmentManager_main.master" AutoEventWireup="true" CodeBehind="Dept_managementAddProject.aspx.cs" Inherits="TimeSheet.Dept_Manager.Dept_managementAddProject" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <asp:Panel ID="Panel1" runat="server" Height="72px">
       <asp:Label ID="Label1" runat="server" Font-Bold="False" Font-Size="Larger" Text="~ Add Project ~"></asp:Label>
        <aside style="z-index: 1; height: 72px; right: 6px; margin-right: 0px; position: relative; top: -10px;">
            <ul>
                <li><a id="A501" runat="server" href="Dept_managementAddClient.aspx">Add a Project</a></li>
                <li><a id="A502" runat="server" href="Dept_managementAddProject.aspx">Add a new project for a client</a></li>
                <li><a id="A503" runat="server" href="Dept_managementAssigning.aspx">Assigning projects to an employee</a></li>
            </ul>
        </aside>
    </asp:Panel>
    <table style="width: 50%; position: relative; top: -46px; left: 186px; height: 114px;">
        <tr>
            <td style="font-family: 'Segoe UI'; font-size: medium; width: 211px; text-align: right; font-weight: 700;">Select a client:</td>
            <td>
                <asp:DropDownList ID="selectClient" runat="server" Height="25px" Width="273px">
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td style="font-family: 'Segoe UI'; font-size: medium; width: 211px; text-align: right"><b style="text-align: right">Insert project name:</b></td>
            <td>
                <asp:TextBox ID="insertProject" runat="server" Width="257px" Height="24px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="width: 211px; text-align: right">&nbsp;</td>
            <td>
                <asp:Button ID="insertProjectName" runat="server" Text="Insert" Width="94px" />
            </td>
        </tr>
    </table>
</asp:Content>
