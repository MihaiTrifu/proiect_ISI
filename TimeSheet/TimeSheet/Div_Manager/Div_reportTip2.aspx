<%@ Page Title="" Language="C#" MasterPageFile="~/Div_Manager/DivisionManager_main.master" AutoEventWireup="true" CodeBehind="Div_reportTip2.aspx.cs" Inherits="TimeSheet.Div_Manager.Div_reportTip2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <hgroup class="title">
        <h1>
            <br />
            <span style="font-family: Andalus; color: #3E5667; display: inline">~ Report Tip2</span></h1>
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
                <td style="border-color: #7AC0DA; width: 186px; text-align: right; font-family: 'Segoe UI'; font-size: medium; font-weight: bold; height: 77px;"><b style="font-size: small; font-family: 'Book Antiqua'">Insert Department:</b></td>
                <td style="height: 77px; ">
                    <asp:DropDownList ID="departmentTip2Dir" runat="server" Height="18px" Width="302px">
                    </asp:DropDownList>
                </td>
                <td style="width: 175px">
                    <asp:Button ID="okReportTip2Dir" runat="server" Font-Size="XX-Small" Text="OK" />
                    <asp:Button ID="resetReportTip2Dir" runat="server" Font-Size="XX-Small" Text="Reset" />
                </td>
            </tr>
        </table>

    </b></span>
    </asp:Panel>
    </b></span></b></asp:Content>