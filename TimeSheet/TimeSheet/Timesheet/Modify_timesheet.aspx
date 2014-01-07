<%@ Page Title="" Language="C#" MasterPageFile="~/Emp/Employee_main.master" AutoEventWireup="true" CodeBehind="Modify_timesheet.aspx.cs" Inherits="TimeSheet.Timesheet.Modify_timesheet" %>

<asp:Content ID="Content3" ContentPlaceHolderID="MainContent" runat="server">
    <asp:Panel ID="Panel1" runat="server" Height="295px" Width="1062px">
        <p style="text-align: left">
            &nbsp;<asp:Panel ID="Panel4" runat="server" Height="40px" Width="321px">
                <asp:Label ID="Label1" runat="server" Font-Bold="False" Font-Size="Larger" Text="~ Modify/Read a Timesheet ~"></asp:Label>
            </asp:Panel>
            <asp:Panel ID="Panel2" runat="server" style="position: absolute; top: 352px; left: 127px; height: 105px; width: 331px; z-index: 4">
                <table class="auto-style2">
                    <tr>
                        <td class="auto-style4">Year</td>
                        <td class="auto-style3">
                            <asp:DropDownList ID="selectYearAdd" runat="server" Height="19px" Width="179px">
                            </asp:DropDownList>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style5">Month</td>
                        <td class="auto-style6">
                            <asp:DropDownList ID="selectMonthAdd" runat="server" Height="20px" Width="179px">
                            </asp:DropDownList>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style5">Day</td>
                        <td class="auto-style6">
                            <asp:DropDownList ID="selectDayAdd" runat="server" Height="20px" Width="178px">
                            </asp:DropDownList>
                        </td>
                    </tr>
                </table>
            </asp:Panel>
            <p>
                &nbsp;</p>
            <asp:Panel ID="Panel3" runat="server" style="position: absolute; top: 482px; left: 392px; height: 52px; width: 111px; z-index: 3">
                <asp:Button ID="modifyTimesheet" runat="server" Text="Select" Height="35px" Width="93px" />
            </asp:Panel>
            <p>
            </p>
            <p>
            </p>
            <p>
            </p>
            <p>
            </p>
            <p>
            </p>
            <p>
            </p>
        </p>
    </asp:Panel>
</asp:Content>
