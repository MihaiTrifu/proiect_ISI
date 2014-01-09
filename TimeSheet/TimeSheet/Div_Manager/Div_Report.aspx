<%@ Page Title="" Language="C#" MasterPageFile="~/Div_Manager/DivisionManager_main.master" AutoEventWireup="true" CodeBehind="Div_Report.aspx.cs" Inherits="TimeSheet.Div_Manager.Div_Report" %>

<asp:Content runat="server" ID="BodyContent" ContentPlaceHolderID="MainContent">
    <hgroup class="title">
        <h1>
            <br />
            <span style="font-family: Andalus; color: #3E5667; display: inline">~ Reports</span></h1>
    </hgroup>

    <aside height: 48px; right: 4px;  0px; position: relative; top: -60px;">
        <ul style="text-align: right">
            <span style="font-family: 'Segoe UI'; font-size: large"><b>
            <li1><a id="A8001" runat="server" href="Div_reportTip1.aspx" style="color: #7AC0DA">Tip1</a></li1></b> <b>
            <li2><a id="A8002" runat="server" href="Div_reportTip2.aspx" style="color: #7AC0DA">Tip2</a></li2></b> <b>
        </ul>
    </aside>
    <asp:Panel ID="Panel3" runat="server" Height="400px" Width="825px" style="color: #3E5667; font-size: medium; font-family: boo">
        <span style="font-size: small"><b>Report Tip1:&nbsp;&nbsp;&nbsp; </b> 
            For each department - in progress projects and number of hours/ project<b><br /> 
                Report Tip2:&nbsp;&nbsp;&nbsp; </b>For each department - all the employees
        <br />
    </asp:Panel>
    </b></span>
</asp:Content>