﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Div_Manager/DivisionManager_main.master" AutoEventWireup="true" CodeBehind="Div_Personal.aspx.cs" Inherits="TimeSheet.Div_Manager.Div_Personal" %>

<asp:Content runat="server" ID="BodyContent" ContentPlaceHolderID="MainContent">
    <hgroup class="title">
        <h1>
            <br />
            <span style="font-family: Andalus; color: #3E5667; display: inline">~ Personal Page</span></h1>
    </hgroup>

    <aside height: 48px; right: 4px;  0px; position: relative; top: -60px;">
        <ul style="text-align: right">
            <span style="font-family: 'Segoe UI'; font-size: large"><b>
            <li1><a id="A2009" runat="server" href="Div_addTimesheet.aspx" style="color: #7AC0DA">Add</a></li1></b> <b>
            <li2><a id="A2010" runat="server" href="Div_modifyTimesheet.aspx" style="color: #7AC0DA">Modify</a></li2></b> <b>
        </ul>
    </aside>
    <asp:Panel ID="Panel2" runat="server" Height="400px" Width="545px">
    </asp:Panel>
</asp:Content>