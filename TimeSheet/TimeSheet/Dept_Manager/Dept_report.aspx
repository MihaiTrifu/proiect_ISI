<%@ Page Title="" Language="C#" MasterPageFile="~/Dept_Manager/DepatmentManager_main.master" AutoEventWireup="true" CodeBehind="Dept_report.aspx.cs" Inherits="TimeSheet.Dept_Manager.Dept_raport" %>

<asp:Content runat="server" ID="BodyContent" ContentPlaceHolderID="MainContent">
    <hgroup class="title">
        <h1>
            <br />
            <span style="font-family: Andalus; color: #3E5667; display: inline">~ Reports</span></h1>
    </hgroup>

    <aside height: 48px; right: 4px;  0px; position: relative; top: -60px;">
        <ul style="text-align: right">
            <span style="font-family: 'Segoe UI'; font-size: large"><b>
            <li1><a id="A701" runat="server" href="Dept_reportTip1.aspx" style="color: #7AC0DA">Tip1</a></li1></b> <b>
            <li2><a id="A702" runat="server" href="Dept_reportTip2.aspx" style="color: #7AC0DA">Tip2</a></li2></b> <b>
            <li2><a id="A703" runat="server" href="Dept_reportTip3.aspx" style="color: #7AC0DA">Tip3</a></li2></b> <b>
        </ul>
    </aside>
    <asp:Panel ID="Panel3" runat="server" Height="400px" Width="545px" style="color: #3E5667; font-size: medium; font-family: boo">
        <span style="font-size: small"><b>Report Tip1:&nbsp;&nbsp;&nbsp; </b>Number of worker hours/ employee/ project<b><br /> Report Tip2:&nbsp;&nbsp;&nbsp; </b>Number of worker hours and the emloyees name - for each project
        <br />
        <b>Report Tip3:&nbsp;&nbsp;&nbsp; </b>Number of worker hours/ project</span>
    </b></span> <b>
        </b>
    </asp:Panel>
</asp:Content>