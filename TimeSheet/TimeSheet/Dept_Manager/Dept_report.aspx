<%@ Page Title="" Language="C#" MasterPageFile="~/Dept_Manager/DepatmentManager_main.master" AutoEventWireup="true" CodeBehind="Dept_report.aspx.cs" Inherits="TimeSheet.Dept_Manager.Dept_raport" %>

<asp:Content runat="server" ID="Content3" ContentPlaceHolderID="MainContent" >
    <asp:Panel ID="Panel1" runat="server" Height="188px">
       <asp:Label ID="Label1" runat="server" Font-Bold="False" Font-Size="Larger" Text="~ Reports ~"></asp:Label>
        <aside style="z-index: 1; height: 140px; right: 37px; margin-right: 0px">
            <ul>
                <li><a id="A701" runat="server" href="Dept_reportTip1.aspx">Report Tip1</a></li>
                <li><a id="A702" runat="server" href="Dept_reportTip2.aspx">Report Tip2</a></li>
                <li><a id="A703" runat="server" href="Dept_reportTip3.aspx">Report Tip3</a></li>
            </ul>
        </aside>
    </asp:Panel>
    <asp:Panel ID="Panel2" runat="server" style="position: relative; top: -143px; left: 11px; width: 548px; height: 49px">
        <span style="font-size: small"><b>Report Tip1:&nbsp;&nbsp;&nbsp; </b>Number of worker hours/ employee/ project<b><br /> Report Tip2:&nbsp;&nbsp;&nbsp; </b>Number of worker hours and the emloyees name - for each project
        <br />
        <b>Report Tip3:&nbsp;&nbsp;&nbsp; </b>Number of worker hours/ project</span></asp:Panel>
</asp:Content>