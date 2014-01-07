<%@ Page Title="" Language="C#" MasterPageFile="~/Dept_Manager/DepatmentManager_main.master" AutoEventWireup="true" CodeBehind="Dept_ReadEmp.aspx.cs" Inherits="TimeSheet.Dept_Manager.Dept_ReadEmp" %>

<asp:Content runat="server" ID="Content3" ContentPlaceHolderID="MainContent" >
    <asp:Panel ID="Panel1" runat="server" Height="294px" Width="1066px" style="margin-top: 0px">
        <aside style="z-index: 1; height: 140px; right: 5px; margin-right: 0px">
            <ul>
                <li><a id="A511" runat="server" href="Dept_ReadEmp.aspx">Read Employee Timesheet</a></li>
                <li><a id="A611" runat="server" href="Dept_AproveEmp.aspx">Aprove Employee Timesheet</a></li>
            </ul>
        </aside>
        <table style="width: 26%; height: 120px; position: absolute; top: 244px; left: 93px; z-index: 2; right: 855px;">
            <tr>
                <td style="text-align: right; width: 186px">Employee ID</td>
                <td>
                    <asp:DropDownList ID="empReadDept" runat="server" Height="23px" Width="183px">
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td style="text-align: right; width: 186px; height: 30px;">Year</td>
                <td style="height: 30px">
                    <asp:DropDownList ID="yearReadDept" runat="server" Height="23px" Width="183px">
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td style="text-align: right; width: 186px">Month</td>
                <td>
                    <asp:DropDownList ID="monthReadDept" runat="server" Height="23px" Width="181px">
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td style="text-align: right; width: 186px">Day</td>
                <td>
                    <asp:DropDownList ID="dayReadDept" runat="server" Height="23px" Width="181px">
                    </asp:DropDownList>
                </td>
            </tr>
        </table>
        <asp:Panel ID="Panel3" runat="server" style="position: relative; top: 21px; left: 18px">
            <asp:Label ID="Label2" runat="server" Font-Bold="False" Font-Size="Larger" style="position: relative" Text="~ Read Employee Timesheet ~"></asp:Label>
        </asp:Panel>
        <asp:Panel ID="Panel2" runat="server" style="position: relative; top: 198px; left: 322px; width: 107px; height: 27px">
            <asp:Button ID="readEmpDept" runat="server" Text="Select" Font-Size="XX-Small" Width="77px" />
        </asp:Panel>
    </asp:Panel>
</asp:Content>