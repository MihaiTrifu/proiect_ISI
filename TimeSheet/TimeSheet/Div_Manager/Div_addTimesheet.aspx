﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Div_Manager/DivisionManager_main.master" AutoEventWireup="true" CodeBehind="Div_addTimesheet.aspx.cs" Inherits="TimeSheet.Div_Manager.Div_addTimesheet" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <asp:Panel ID="Panel1" runat="server" Height="295px" Width="1062px">
        <p style="text-align: left">
            &nbsp;<asp:Panel ID="Panel4" runat="server" Height="40px" Width="321px">
                <asp:Label ID="Label1" runat="server" Font-Bold="False" Font-Size="Larger" Text="~ Add a new Timesheet ~"></asp:Label>
            </asp:Panel>
            <aside style="z-index: 1; height: 140px; right: 37px; margin-right: 0px">
            <ul>
                <li><a id="A2511" runat="server" href="Div_addTimesheet.aspx">Add a new Timesheet</a></li>
                <li><a id="A2512" runat="server" href="Div_modifyTimesheet.aspx">Modify/ Read a Timesheet</a></li>
            </ul>
        </aside>
            <asp:Panel ID="Panel2" runat="server" style="position: absolute; top: 287px; left: 188px; height: 105px; width: 331px; z-index: 4">
                <table class="auto-style2">
                    <tr>
                        <td>Year</td>
                        <td class="auto-style3">
                            <asp:DropDownList ID="selectYearAddDiv" runat="server" Height="19px" Width="179px">
                            </asp:DropDownList>
                        </td>
                    </tr>
                    <tr>
                        <td>Month</td>
                        <td class="auto-style6">
                            <asp:DropDownList ID="selectMonthAddDiv" runat="server" Height="20px" Width="179px">
                            </asp:DropDownList>
                        </td>
                    </tr>
                    <tr>
                        <td>Day</td>
                        <td class="auto-style6">
                            <asp:DropDownList ID="selectDayAddDiv" runat="server" Height="19px" Width="179px">
                            </asp:DropDownList>
                        </td>
                    </tr>
                </table>
            </asp:Panel>
            <p>
                &nbsp;</p>
            <asp:Panel ID="Panel3" runat="server" style="position: absolute; top: 482px; left: 392px; height: 52px; width: 111px; z-index: 3">
                <asp:Button ID="addTimesheetDiv" runat="server" Text="Add" Font-Size="XX-Small" />
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