<%@ Page Title="" Language="C#" MasterPageFile="~/Director/Director_main.master" AutoEventWireup="true" CodeBehind="Dir_Report.aspx.cs" Inherits="TimeSheet.Div_Manager.Dir_Report" %>

<asp:Content runat="server" ID="Content3" ContentPlaceHolderID="MainContent" >
    <asp:Panel ID="Panel1" runat="server" Height="188px">
       <asp:Label ID="Label1" runat="server" Font-Bold="False" Font-Size="Larger" Text="~ Reports ~"></asp:Label>
        <aside style="z-index: 1; height: 140px; right: 37px; margin-right: 0px">
            <ul>
                <li><a id="A1701" runat="server" href="../Div_Manager/Dir_reportTip1.aspx">Report Tip1</a></li>
                <li><a id="A1702" runat="server" href="../Div_Manager/Dir_reportTip2.aspx">Report Tip2</a></li>
                <li><a id="A1703" runat="server" href="../Div_Manager/Dir_reportTip3.aspx">Report Tip3</a></li>
            </ul>
        </aside>
    </asp:Panel>
    <asp:Panel ID="Panel2" runat="server" style="position: relative; top: -143px; left: 11px; width: 586px; height: 59px">
        <span style="font-size: small"><b>Report Tip1:&nbsp;&nbsp;&nbsp; </b>For each department - in progress projects and number of worked hours/project <b>
        <br />
        Report Tip2:&nbsp;&nbsp;&nbsp; </b>For each department - all the employees<br />
        <b>Report Tip3:&nbsp;&nbsp;&nbsp; </b>Display all the clients and for each of them - the projects, number of worked hours</span></asp:Panel>
</asp:Content>