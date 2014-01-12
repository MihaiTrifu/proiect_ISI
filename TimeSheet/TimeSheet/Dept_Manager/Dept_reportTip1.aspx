﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Dept_Manager/DepatmentManager_main.master" AutoEventWireup="true" CodeBehind="Dept_reportTip1.aspx.cs" Inherits="TimeSheet.Dept_Manager.Dept_reportTip1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <hgroup class="title">
        <h1>
            <br />
            <span style="font-family: Andalus; color: #3E5667; display: inline">~ Report Tip1</span></h1>
    </hgroup>

    <aside height: 48px; right: 4px;  0px; position: relative; top: -60px;">
        <ul style="text-align: right">
            <span style="font-family: 'Segoe UI'; font-size: large"><b>
            <li1><a id="A701" runat="server" href="Dept_reportTip1.aspx" style="color: #7AC0DA">Tip1</a></li1></b> <b>
            <li2><a id="A702" runat="server" href="Dept_reportTip2.aspx" style="color: #7AC0DA">Tip2</a></li2></b> <b>
            <li2><a id="A703" runat="server" href="Dept_reportTip3.aspx" style="color: #7AC0DA">Tip3</a></li2></b> 
        </ul>
    </aside>
    <b>
    <asp:Panel ID="Panel3" runat="server" Height="263px" Width="839px" style="color: #3E5667; font-size: medium; font-family: boo">
<table style="width: 760px; height: 165px; margin-right: 19px; position: relative; top: 32px; left: 55px; color: #3E5667; font-size: small; font-family: 'Book Antiqua';">
            <tr>
                <td style="border-color: #7AC0DA; width: 186px; text-align: right; font-family: 'Segoe UI'; font-size: medium; font-weight: bold; height: 77px;"><b style="font-size: small; font-family: 'Book Antiqua'">Insert ID:</b></td>
                <td colspan="2" style="height: 77px; ">
                    <asp:DropDownList ID="idListTip1Dept" runat="server" Height="25px" Width="169px">
                    </asp:DropDownList>
                </td>
                <td rowspan="2" style="width: 175px">
                    <asp:Button ID="okReportTip1Dept" runat="server" Font-Size="XX-Small" Text="OK" />
                    <asp:Button ID="resetReportTip1Dept" runat="server" Font-Size="XX-Small" Text="Reset" OnClick="resetReportTip1Dept_Click" />
                </td>
            </tr>
            <tr>
                <td style="border-color: #7AC0DA; width: 186px; text-align: right; font-family: 'Segoe UI'; font-size: medium; font-weight: bold; height: 20px;"></td>
                <td style="border-color: #7AC0DA; width: 301px; height: 20px">
                    <asp:Panel ID="Panel1" runat="server" style="position: absolute; top: 68px; left: 128px; height: 88px; width: 163px; z-index: 1;">
                        <table style="width: 121%; background-color: #C0C0C0;" id="tablereport1dept">
                            <tr>
                                <td colspan="2" style="text-align: center">Start time:</td>
                            </tr>
                            <tr>
                                <td>Year:&nbsp;&nbsp;</td>
                                <td>
                                    <asp:DropDownList ID="yearBeginTip1Dept" runat="server" Height="16px" Width="93px">
                                    </asp:DropDownList>
                                </td>
                            </tr>
                            <tr>
                                <td>Month:</td>
                                <td>
                                    <asp:DropDownList ID="monthBeginTip1Dept" runat="server" Height="16px" style="margin-left: 1px" Width="93px">
                                    </asp:DropDownList>
                                </td>
                            </tr>
                            <tr>
                                <td>Day:</td>
                                <td>
                                    <asp:DropDownList ID="dayBeginTip1Dept" runat="server" Height="16px" style="margin-left: 0px" Width="93px">
                                    </asp:DropDownList>
                                </td>
                            </tr>
                        </table>
                    </asp:Panel>
                </td>
            <span style="font-family: 'Segoe UI'; font-size: large"><b>
                <td style="border-color: #7AC0DA; width: 301px; height: 20px">
                    <asp:Panel ID="Panel2" runat="server" style="position: relative; top: -10px; left: 1px; height: 88px; width: 163px;">
                        <table style="width: 147%; background-color: #C0C0C0;" id="tablereport1dept">
                            <tr>
                                <td colspan="2" style="text-align: center">Finish time:</td>
                            </tr>
                            <tr>
                                <td>Year:&nbsp;&nbsp;</td>
                                <td>
                                    <asp:DropDownList ID="yearEndTip1Dept" runat="server" Height="16px" Width="93px">
                                    </asp:DropDownList>
                                </td>
                            </tr>
                            <tr>
                                <td>Month:</td>
                                <td>
                                    <asp:DropDownList ID="monthEndTip1Dept" runat="server" Height="16px" style="margin-left: 1px" Width="93px">
                                    </asp:DropDownList>
                                </td>
                            </tr>
                            <tr>
                                <td>Day:</td>
                                <td>
                                    <asp:DropDownList ID="dayEndTip1Dept" runat="server" Height="16px" style="margin-left: 0px" Width="93px">
                                    </asp:DropDownList>
                                </td>
                            </tr>
                        </table>
                    </asp:Panel>
                </td>

    </b></span>
            </tr>
        </table>

    </b></span>
    </asp:Panel>
    </b></span></asp:Content>
