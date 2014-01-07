<%@ Page Title="Add" Language="C#" MasterPageFile="~/Administrator/Administrator.master" AutoEventWireup="true" CodeBehind="Add.aspx.cs" Inherits="TimeSheet.Admin.Add" %>

<asp:Content runat="server" ID="BodyContent" ContentPlaceHolderID="MainContent">
    <hgroup class="title">
        <h1>~ Add</h1>
    </hgroup>

    <aside style="z-index: 1; height: 104px; right: 0px; margin-right: 0px">
        <ul>
            <li><a id="A5" runat="server" href="Add_emp.aspx">Add Employee</a></li>
            <li><a id="A6" runat="server" href="Add_div.aspx">Add Division</a></li>
            <li><a id="A7" runat="server" href="Add_dept.aspx">Add Department</a></li>
        </ul>
    </aside>
    <asp:Panel ID="Panel1" runat="server" Height="400px" Width="545px">
    </asp:Panel>
</asp:Content>