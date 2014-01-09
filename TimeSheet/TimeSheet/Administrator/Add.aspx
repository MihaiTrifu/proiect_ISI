<%@ Page Title="Add" Language="C#" MasterPageFile="~/Administrator/Administrator.master" AutoEventWireup="true" CodeBehind="Add.aspx.cs" Inherits="TimeSheet.Admin.Add" %>

<asp:Content runat="server" ID="BodyContent" ContentPlaceHolderID="MainContent">
    <hgroup class="title">
        <h1>
            <br />
            <span style="font-family: Andalus; color: #3E5667; display: inline">~ Add Page</span></h1>
    </hgroup>

    <aside height: 48px; right: 4px;  0px; position: relative; top: -60px;">
        <ul style="text-align: right">
            <span style="font-family: 'Segoe UI'; font-size: large"><b>
            <li1><a id="A5" runat="server" href="Add_emp.aspx" style="color: #7AC0DA">Add Employee</a></li1></b> <b>
            <li2><a id="A7" runat="server" href="Add_dept.aspx" style="color: #7AC0DA">Add Department</a></li2></b> <b>
            <li3><a id="A6" runat="server" href="Add_div.aspx" style="color: #7AC0DA">Add Division</a></li3></b></span>
        </ul>
    </aside>
    <asp:Panel ID="Panel1" runat="server" Height="400px" Width="545px">
    </asp:Panel>
</asp:Content>