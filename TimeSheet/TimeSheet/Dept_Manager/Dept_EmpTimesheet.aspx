<%@ Page Title="" Language="C#" MasterPageFile="~/Dept_Manager/DepatmentManager_main.master" AutoEventWireup="true" CodeBehind="Dept_EmpTimesheet.aspx.cs" Inherits="TimeSheet.Dept_Manager.Read_Emp_Timesheet" %>

<asp:Content runat="server" ID="Content3" ContentPlaceHolderID="MainContent" >
        <hgroup class="title">
        <h1>
            <br />
            <span style="font-family: Andalus; color: #3E5667; display: inline">~ Employee timesheet</span></h1>
    </hgroup>

    <aside height: 48px; right: 4px;  0px; position: relative; top: -60px;">
        <ul style="text-align: right">
            <span style="font-family: 'Segoe UI'; font-size: large"><b>
            <li1><a id="A501" runat="server" href="Dept_AproveEmp.aspx" style="color: #7AC0DA">Aprove</a></li1></b> <b>
            <li2><a id="A502" runat="server" href="Dept_ReadEmp.aspx" style="color: #7AC0DA">Read</a></li2></b> <b>
        </ul>
    </aside>
    <asp:Panel ID="Panel1" runat="server" Height="188px">
    </asp:Panel>
</asp:Content>
