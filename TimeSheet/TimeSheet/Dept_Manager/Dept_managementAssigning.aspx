<%@ Page Title="" Language="C#" MasterPageFile="~/Dept_Manager/DepatmentManager_main.master" AutoEventWireup="true" CodeBehind="Dept_managementAssigning.aspx.cs" Inherits="TimeSheet.Dept_Manager.Dept_managementAssigning" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <asp:Panel ID="Panel1" runat="server" Height="72px">
       <asp:Label ID="Label1" runat="server" Font-Bold="False" Font-Size="Larger" Text="~ Assingn project ~"></asp:Label>
        <aside style="z-index: 1; height: 72px; right: 6px; margin-right: 0px; position: relative; top: -10px;">
            <ul>
                <li><a id="A501" runat="server" href="Dept_managementAddClient.aspx">Add a Project</a></li>
                <li><a id="A502" runat="server" href="Dept_managementAddProject.aspx">Add a new project for a client</a></li>
                <li><a id="A503" runat="server" href="Dept_managementAssigning.aspx">Assigning projects to an employee</a></li>
            </ul>
        </aside>
    </asp:Panel>
    <table style="width: 52%; position: relative; top: -49px; left: 164px">
        <tr>
            <td style="font-family: 'Segoe UI'; font-size: medium; width: 210px; text-align: right; font-weight: 700;">Select an employee:</td>
            <td>
                <asp:DropDownList ID="selectEmployeeAssign" runat="server" Height="25px" Width="273px">
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td style="font-family: 'Segoe UI'; font-size: medium; width: 210px; text-align: right"><b style="text-align: right">Select a project:</b></td>
            <td>
                <asp:DropDownList ID="selectProjectAssign" runat="server" Height="25px" Width="274px">
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td style="width: 210px; text-align: right">&nbsp;</td>
            <td>
                <asp:Button ID="assignProject" runat="server" Text="Assign" Width="94px" />
            </td>
        </tr>
    </table>
</asp:Content>