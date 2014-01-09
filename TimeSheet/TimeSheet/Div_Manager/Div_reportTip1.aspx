﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Div_Manager/DivisionManager_main.master" AutoEventWireup="true" CodeBehind="Div_reportTip1.aspx.cs" Inherits="TimeSheet.Div_Manager.Div_reportTip1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
   <hgroup class="title">
        <h1>
            <br />
            <span style="font-family: Andalus; color: #3E5667; display: inline">~ Report Tip1</span></h1>
    </hgroup>

    <aside height: 48px; right: 4px;  0px; position: relative; top: -60px;">
        <ul style="text-align: right">
            <span style="font-family: 'Segoe UI'; font-size: large"><b>
            <li1><a id="A8001" runat="server" href="Div_reportTip1.aspx" style="color: #7AC0DA">Tip1</a></li1></b> <b>
            <li2><a id="A8002" runat="server" href="Div_reportTip2.aspx" style="color: #7AC0DA">Tip2</a></li2></b> <b>
        </ul>
    </aside>
    <b>
    <asp:Panel ID="Panel3" runat="server" Height="400px" Width="839px" style="color: #3E5667; font-size: medium; font-family: boo">
<table style="width: 760px; height: 165px; margin-right: 19px; position: relative; top: 72px; left: 16px; color: #3E5667; font-size: small; font-family: 'Book Antiqua';">
            <tr>
                <td style="border-color: #7AC0DA; width: 186px; text-align: right; font-family: 'Segoe UI'; font-size: medium; font-weight: bold; height: 20px;"></td>
                <td style="border-color: #7AC0DA; height: 20px; width: 301px;">
                    <asp:Panel ID="Panel1" runat="server" style="position: relative; top: -10px; left: 1px; height: 88px; width: 163px;">
                        <table style="width: 147%; background-color: #C0C0C0;">
                            <tr>
                                <td colspan="2" style="text-align: center">Start time:</td>
                            </tr>
                            <tr>
                                <td>Year:&nbsp;&nbsp;</td>
                                <td>
                                    <asp:DropDownList ID="yearBeginTip1Div" runat="server" Height="16px" Width="93px">
                                    </asp:DropDownList>
                                </td>
                            </tr>
                            <tr>
                                <td>Month:</td>
                                <td>
                                    <asp:DropDownList ID="monthBeginTip1Div" runat="server" Height="16px" style="margin-left: 1px" Width="93px">
                                    </asp:DropDownList>
                                </td>
                            </tr>
                            <tr>
                                <td>Day:</td>
                                <td>
                                    <asp:DropDownList ID="dayBeginTip1Div" runat="server" Height="16px" style="margin-left: 0px" Width="93px">
                                    </asp:DropDownList>
                                </td>
                            </tr>
                        </table>
                    </asp:Panel>
                </td>
                <span style="font-family: 'Segoe UI'; font-size: large"><b>
                <td style="border-color: #7AC0DA; width: 301px; height: 20px">
                    <asp:Panel ID="Panel2" runat="server" style="position: relative; top: -10px; left: 1px; height: 88px; width: 163px;">
                        <table style="width: 147%; background-color: #C0C0C0;">
                            <tr>
                                <td colspan="2" style="text-align: center">Finish time:</td>
                            </tr>
                            <tr>
                                <td>Year:&nbsp;&nbsp;</td>
                                <td>
                                    <asp:DropDownList ID="yearEndTip1Div" runat="server" Height="16px" Width="93px">
                                    </asp:DropDownList>
                                </td>
                            </tr>
                            <tr>
                                <td>Month:</td>
                                <td>
                                    <asp:DropDownList ID="monthEndTip1Div" runat="server" Height="16px" style="margin-left: 1px" Width="93px">
                                    </asp:DropDownList>
                                </td>
                            </tr>
                            <tr>
                                <td>Day:</td>
                                <td>
                                    <asp:DropDownList ID="dayEndTip1Div" runat="server" Height="16px" style="margin-left: 0px" Width="93px">
                                    </asp:DropDownList>
                                </td>
                            </tr>
                        </table>
                    </asp:Panel>
                </td>
                <td style="width: 175px">
                    <asp:Button ID="okReportTip1Div" runat="server" Font-Size="XX-Small" Text="OK" />
                    <asp:Button ID="resetReportTip1Div" runat="server" Font-Size="XX-Small" Text="Reset" />
                </td>
                </b></span>
            </tr>
        </table>

    </b></span>
    </asp:Panel>
    </b></span></b></asp:Content>