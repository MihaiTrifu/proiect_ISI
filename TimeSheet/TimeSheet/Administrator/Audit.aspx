<%@ Page Title="Audit" Language="C#" MasterPageFile="~/Administrator/Administrator.master" AutoEventWireup="true" CodeBehind="Audit.aspx.cs" Inherits="TimeSheet.Admin.Audit" %>

<asp:Content runat="server" ID="BodyContent" ContentPlaceHolderID="MainContent">
    <hgroup class="title">
        <h1>
            <br />
            <span style="font-family: Andalus; color: #3E5667; display: inline">~ Audit</span></h1>
    </hgroup>
    <aside height: 48px; right: 4px;  0px; position: relative; top: -60px;">
        <ul style="text-align: right">
        </ul>
    </aside>
    <asp:Panel ID="Panel3" runat="server" Height="400px" Width="545px">
        <asp:CheckBox ID="LogEmp" runat="server" Text="Log employees activities" TextAlign="Left" OnCheckedChanged="LogEmp_CheckedChanged" AutoPostBack="true"/>
        <asp:CheckBox ID="LogDeptMan" runat="server" Text="Log dept managers activities" TextAlign="Left" OnCheckedChanged="LogDeptMan_CheckedChanged" AutoPostBack="true"/>
        <asp:CheckBox ID="LogDivMan" runat="server" Text="Log div managers activities" TextAlign="Left" OnCheckedChanged="LogDivMan_CheckedChanged" AutoPostBack="true"/>
        <asp:CheckBox ID="LogDir" runat="server" Text="Log director activities" TextAlign="Left" OnCheckedChanged="LogDir_CheckedChanged" AutoPostBack="true"/>
        <asp:CheckBox ID="LogAdmin" runat="server" Text="Log admin activities" TextAlign="Left" OnCheckedChanged="LogAdmin_CheckedChanged" AutoPostBack="true"/>
    </asp:Panel>
</asp:Content>