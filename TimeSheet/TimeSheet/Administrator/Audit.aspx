<%@ Page Title="Audit" Language="C#" MasterPageFile="~/Administrator/Administrator.master" AutoEventWireup="true" CodeBehind="Audit.aspx.cs" Inherits="TimeSheet.Admin.Audit" %>

<asp:Content runat="server" ID="BodyContent" ContentPlaceHolderID="MainContent">
    <hgroup class="title">
        <h1>~ Audit</h1>
    </hgroup>

    <asp:Panel ID="Panel1" runat="server" Height="400px" Width="546px">
        <asp:CheckBox ID="CheckBox2" runat="server" Text="Log employees activities" TextAlign="Left" />
        <asp:CheckBox ID="CheckBox3" runat="server" Text="Log dept managers activities" TextAlign="Left" />
        <asp:CheckBox ID="CheckBox4" runat="server" Text="Log div managers activities" TextAlign="Left" />
        <asp:CheckBox ID="CheckBox1" runat="server" Text="Log director activities" TextAlign="Left" />
        <asp:Panel ID="Panel2" runat="server" style="position: relative; top: -205px; left: -4px; height: 59px; width: 245px; margin-left: 566px; margin-top: 0px">
            <asp:CheckBox ID="CheckBox5" runat="server" Text="Activate/Desactivate Audit" TextAlign="Left" />
        </asp:Panel>
        
    </asp:Panel>
    </asp:Content>