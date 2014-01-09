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
                <asp:CheckBox ID="CheckBox6" runat="server" Text="Log employees activities" TextAlign="Left" />
        <asp:CheckBox ID="CheckBox7" runat="server" Text="Log dept managers activities" TextAlign="Left" />
        <asp:CheckBox ID="CheckBox8" runat="server" Text="Log div managers activities" TextAlign="Left" />
        <asp:CheckBox ID="CheckBox9" runat="server" Text="Log director activities" TextAlign="Left" />
        <asp:CheckBox ID="CheckBox10" runat="server" Text="Activate/Desactivate Audit" TextAlign="Left" />
    </asp:Panel>
</asp:Content>