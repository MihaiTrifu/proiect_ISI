<%@ Page Title="" Language="C#" MasterPageFile="~/Dept_Manager/DepatmentManager_main.master" AutoEventWireup="true" CodeBehind="Dept_Personal.aspx.cs" Inherits="TimeSheet.Dept_Manager.Dept_Personal" %>

<asp:Content runat="server" ID="BodyContent" ContentPlaceHolderID="MainContent">
    <hgroup class="title">
        <h1>
            <br />
            <span style="font-family: Andalus; color: #3E5667; display: inline">~ Personal Page</span></h1>
    </hgroup>

    <aside height: 48px; right: 4px;  0px; position: relative; top: -60px;">
        <ul style="text-align: right">
            <span style="font-family: 'Segoe UI'; font-size: large"><b>
            <li1><a id="A5" runat="server" href="Dept_addTimesheet.aspx" style="color: #7AC0DA">Add</a></li1></b> <b>
            <li2><a id="A7" runat="server" href="Dept_modifyTimesheet.aspx" style="color: #7AC0DA">Modify/ Read</a></li2></b> <b>
            <li3><a id="A6" runat="server" href="Dept_copyTimesheet.aspx" style="color: #7AC0DA">Copy</a></li3></b> <b>
        </ul>
    </aside>
    <asp:Panel ID="Panel2" runat="server" Height="400px" Width="545px">
    </asp:Panel>
</asp:Content>