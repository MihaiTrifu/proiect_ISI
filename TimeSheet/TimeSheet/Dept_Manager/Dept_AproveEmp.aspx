<%@ Page Title="" Language="C#" MasterPageFile="~/Dept_Manager/DepatmentManager_main.master" AutoEventWireup="true" CodeBehind="Dept_AproveEmp.aspx.cs" Inherits="TimeSheet.Dept_Manager.Dept_AproveEmp" %>

<asp:Content runat="server" ID="Content3" ContentPlaceHolderID="MainContent" >
    <asp:Panel ID="Panel1" runat="server" Height="294px" Width="1066px" style="margin-top: 0px">
        <aside style="z-index: 1; height: 140px; right: 5px; margin-right: 0px">
            <ul>
                <li><a id="A531" runat="server" href="Dept_ReadEmp.aspx">Read Employee Timesheet</a></li>
                <li><a id="A631" runat="server" href="Dept_AproveEmp.aspx">Aprove Employee Timesheet</a></li>
            </ul>
        </aside>
        <table style="width: 26%; height: 120px; position: absolute; top: 245px; left: 94px; z-index: 2;">
            <tr>
                <td style="text-align: right; width: 219px">Employee ID</td>
                <td>
                    <asp:DropDownList ID="empAproveDept" runat="server" Height="23px" Width="183px">
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td style="text-align: right; width: 219px">Year</td>
                <td>
                    <asp:DropDownList ID="yearAproveDept" runat="server" Height="23px" Width="183px">
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td style="text-align: right; width: 219px">Month</td>
                <td>
                    <asp:DropDownList ID="monthAproveDept" runat="server" Height="23px" Width="181px">
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td style="text-align: right; width: 219px">Day</td>
                <td>
                    <asp:DropDownList ID="DropDownList4" runat="server" Height="23px" Width="181px">
                    </asp:DropDownList>
                </td>
            </tr>
        </table>
        <asp:Panel ID="Panel3" runat="server" style="position: relative; top: 21px; left: 18px">
            <asp:Label ID="Label2" runat="server" Font-Bold="False" Font-Size="Larger" style="position: relative" Text="~ Aprove Employee Timesheet ~"></asp:Label>
        </asp:Panel>
        <asp:Panel ID="Panel2" runat="server" style="position: relative; top: 198px; left: 322px; width: 107px; height: 27px">
            <asp:Button ID="aproveEmpDept" runat="server" Text="Select" Font-Size="XX-Small" />
        </asp:Panel>
    </asp:Panel>
</asp:Content>