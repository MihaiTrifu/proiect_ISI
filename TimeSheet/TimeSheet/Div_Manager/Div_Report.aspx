<%@ Page Title="" Language="C#" MasterPageFile="~/Div_Manager/DivisionManager_main.master" AutoEventWireup="true" CodeBehind="Div_Report.aspx.cs" Inherits="TimeSheet.Div_Manager.Div_Report" %>

<asp:Content runat="server" ID="Content3" ContentPlaceHolderID="MainContent" >
    <asp:Panel ID="Panel1" runat="server" Height="188px">
       <asp:Label ID="Label1" runat="server" Font-Bold="False" Font-Size="Larger" Text="~ Reports ~"></asp:Label>
        <aside style="z-index: 1; height: 140px; right: 37px; margin-right: 0px">
            <ul>
                <li><a id="A2531" runat="server" href="Div_reportTip1.aspx">Report Tip1</a></li>
                <li><a id="A2532" runat="server" href="Div_reportTip2.aspx">Report Tip2</a></li>
            </ul>
        </aside>
    </asp:Panel>
    <asp:Panel ID="Panel2" runat="server" style="position: relative; top: -143px; left: 11px; width: 548px; height: 49px">
        <span style="font-size: small"><b>Report Tip1:&nbsp;&nbsp;&nbsp; </b>For each department - in progress projects and number of hours/ project<b><br /> Report Tip2:&nbsp;&nbsp;&nbsp; </b>The employees for each department </span></asp:Panel>
</asp:Content>