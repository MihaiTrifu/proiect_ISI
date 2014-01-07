<%@ Page Title="" Language="C#" MasterPageFile="~/Div_Manager/DivisionManager_main.master" AutoEventWireup="true" CodeBehind="Div_reportTip2.aspx.cs" Inherits="TimeSheet.Div_Manager.Div_reportTip2" %>

<asp:Content runat="server" ID="Content3" ContentPlaceHolderID="MainContent" >
    <asp:Panel ID="Panel1" runat="server" Height="188px">
       <asp:Label ID="Label1" runat="server" Font-Bold="False" Font-Size="Larger" Text="~ Report Tip2 ~"></asp:Label>
        <aside style="z-index: 1; height: 140px; right: 37px; margin-right: 0px">
            <ul>
                <li><a id="A2531" runat="server" href="Div_reportTip1.aspx">Report Tip1</a></li>
                <li><a id="A2532" runat="server" href="Div_reportTip2.aspx">Report Tip2</a></li>
            </ul>
        </aside>
    </asp:Panel>
    <asp:Panel ID="Panel2" runat="server" style="position: relative; top: -146px; left: 36px; width: 562px; height: 95px; z-index: 1;">
        <table style="width: 102%; height: 87px; margin-right: 19px;">
            <tr>
                <td style="border-color: #7AC0DA; width: 218px; text-align: right; font-family: 'Segoe UI'; font-size: medium; font-weight: bold; height: 27px;"><b>Insert Department:</b></td>
                <td style="height: 27px; ">
                    <asp:DropDownList ID="departmentDivTip2" runat="server" Height="25px" Width="169px">
                    </asp:DropDownList>
                </td>
                <td>
                    <asp:Button ID="okReportDivTip2" runat="server" Font-Size="XX-Small" Text="OK" />
                    <asp:Button ID="resetReportDivTip2" runat="server" Font-Size="XX-Small" Text="Reset" />
                </td>
            </tr>
        </table>
  

    </asp:Panel>
</asp:Content>