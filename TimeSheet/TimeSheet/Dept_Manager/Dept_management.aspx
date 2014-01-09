<%@ Page Title="" Language="C#" MasterPageFile="~/Dept_Manager/DepatmentManager_main.master" AutoEventWireup="true" CodeBehind="Dept_management.aspx.cs" Inherits="TimeSheet.Dept_Manager.Dept_management" %>

<asp:Content runat="server" ID="BodyContent" ContentPlaceHolderID="MainContent">
    <hgroup class="title">
        <h1>
            <br />
            <span style="font-family: Andalus; color: #3E5667; display: inline">~ Management</span></h1>
    </hgroup>

    <aside height: 48px; right: 4px;  0px; position: relative; top: -60px;">
        <ul style="text-align: right">
            <span style="font-family: 'Segoe UI'; font-size: large"><b>
            <li3><a id="A2004" runat="server" href="Dept_managementAddEmp.aspx" style="color: #7AC0DA">Add Emp</a></li3></b> <b>
            <li1><a id="A2001" runat="server" href="Dept_managementAddClient.aspx" style="color: #7AC0DA">Add client</a></li1></b> <b>
            <li2><a id="A2002" runat="server" href="Dept_managementAddProject.aspx" style="color: #7AC0DA">Add project</a></li2></b> <b>
            <li3><a id="A2003" runat="server" href="Dept_managementAssigning.aspx" style="color: #7AC0DA">Assign</a></li3></b> <b>
        </ul>
    </aside>
    <asp:Panel ID="Panel2" runat="server" Height="400px" Width="545px">
    </asp:Panel>
    </b></span>
</asp:Content>