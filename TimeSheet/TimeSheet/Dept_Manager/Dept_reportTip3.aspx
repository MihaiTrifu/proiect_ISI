﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Dept_Manager/DepatmentManager_main.master" AutoEventWireup="true" CodeBehind="Dept_reportTip3.aspx.cs" Inherits="TimeSheet.Dept_Manager.Dept_reportTip3" %>

<asp:Content runat="server" ID="Content3" ContentPlaceHolderID="MainContent" >
    <asp:Panel ID="Panel1" runat="server" Height="188px">
       <asp:Label ID="Label1" runat="server" Font-Bold="False" Font-Size="Larger" Text="~ Report Tip3 ~"></asp:Label>
        <aside style="z-index: 1; height: 140px; right: 37px; margin-right: 0px">
            <ul>
                <li><a id="A701" runat="server" href="Dept_reportTip1.aspx">Report Tip1</a></li>
                <li><a id="A702" runat="server" href="Dept_reportTip2.aspx">Report Tip2</a></li>
                <li><a id="A703" runat="server" href="Dept_reportTip3.aspx">Report Tip3</a></li>
            </ul>
        </aside>
    </asp:Panel>
    <asp:Panel ID="Panel2" runat="server" style="position: relative; top: -166px; left: 36px; width: 614px; height: 178px; z-index: 1;">
        <table style="width: 105%; height: 169px; margin-right: 19px;">
            <tr>
                <td style="border-color: #7AC0DA; width: 601px; text-align: right; font-family: 'Segoe UI'; font-size: medium; font-weight: bold; height: 46px;"><b>Insert Time Period:</b></td>
                <td style="border-color: #7AC0DA; height: 46px; width: 132px;">
                    <asp:Panel ID="Panel3" runat="server" style="position: relative; top: -10px; left: 1px; height: 88px; width: 163px;">
                        <table style="width: 100%; background-color: #C0C0C0;">
                            <tr>
                                <td colspan="2" style="text-align: center">Start time:</td>
                            </tr>
                            <tr>
                                <td>Year:&nbsp;&nbsp;</td>
                                <td>
                                    <asp:DropDownList ID="yearBeginTip3" runat="server" Height="25px" Width="93px">
                                    </asp:DropDownList>
                                </td>
                            </tr>
                            <tr>
                                <td>Month:</td>
                                <td>
                                    <asp:DropDownList ID="monthBeginTip3" runat="server" Height="25px" style="margin-left: 1px" Width="93px">
                                    </asp:DropDownList>
                                </td>
                            </tr>
                            <tr>
                                <td>Day:</td>
                                <td>
                                    <asp:DropDownList ID="dayBeginTip3" runat="server" Height="25px" style="margin-left: 0px" Width="93px">
                                    </asp:DropDownList>
                                </td>
                            </tr>
                        </table>
                    </asp:Panel>
                </td>
                <td style="border-color: #7AC0DA; height: 46px; width: 254px;">
                    <asp:Panel ID="Panel6" runat="server" style="position: relative; top: -10px; left: 9px; height: 85px; width: 170px;">
                        <table style="width: 100%; height: 85px; background-color: #C0C0C0;">
                            <tr>
                                <td colspan="2" style="text-align: center">Finish time:</td>
                            </tr>
                            <tr>
                                <td>Year:&nbsp;&nbsp;</td>
                                <td>
                                    <asp:DropDownList ID="yearEndTip3" runat="server" Height="25px" Width="93px">
                                    </asp:DropDownList>
                                </td>
                            </tr>
                            <tr>
                                <td>Month:</td>
                                <td>
                                    <asp:DropDownList ID="monthEndTip3" runat="server" Height="25px" style="margin-left: 1px" Width="93px">
                                    </asp:DropDownList>
                                </td>
                            </tr>
                            <tr>
                                <td>Day:</td>
                                <td>
                                    <asp:DropDownList ID="dayEndTip3" runat="server" Height="25px" style="margin-left: 0px" Width="93px">
                                    </asp:DropDownList>
                                </td>
                            </tr>
                        </table>
                    </asp:Panel>
                </td>
                <td>
                    <asp:Button ID="okReportTip3" runat="server" Font-Size="XX-Small" Text="OK" />
                    <asp:Button ID="resetReportTip3" runat="server" Font-Size="XX-Small" Text="Reset" />
                </td>
            </tr>
        </table>
  

    </asp:Panel>
</asp:Content>