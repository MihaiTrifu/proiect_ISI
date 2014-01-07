<%@ Page Title="" Language="C#" MasterPageFile="~/Director/Director_main.master" AutoEventWireup="true" CodeBehind="Dir_Personal.aspx.cs" Inherits="TimeSheet.Director.Dir_Personal" %>

<asp:Content runat="server" ID="Content3" ContentPlaceHolderID="MainContent" >
    <asp:Panel ID="Panel1" runat="server" Height="188px">
       <asp:Label ID="Label1" runat="server" Font-Bold="False" Font-Size="Larger" Text="~ Personal Timesheet ~"></asp:Label>
        <aside style="z-index: 1; height: 140px; right: 37px; margin-right: 0px">
            <ul>
                <li><a id="A2551" runat="server" href="Dir_addTimesheet.aspx">Add a new Timesheet</a></li>
                <li><a id="A2552" runat="server" href="Dir_modifyTimesheet.aspx">Modify/ Read a Timesheet</a></li>
            </ul>
        </aside>
    </asp:Panel>
</asp:Content>