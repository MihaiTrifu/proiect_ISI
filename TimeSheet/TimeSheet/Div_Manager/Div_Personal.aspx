<%@ Page Title="" Language="C#" MasterPageFile="~/Div_Manager/DivisionManager_main.master" AutoEventWireup="true" CodeBehind="Div_Personal.aspx.cs" Inherits="TimeSheet.Div_Manager.Div_Personal" %>

<asp:Content runat="server" ID="Content3" ContentPlaceHolderID="MainContent" >
    <asp:Panel ID="Panel1" runat="server" Height="188px">
       <asp:Label ID="Label1" runat="server" Font-Bold="False" Font-Size="Larger" Text="~ Personal Timesheet ~"></asp:Label>
        <aside style="z-index: 1; height: 140px; right: 37px; margin-right: 0px">
            <ul>
                <li><a id="A2511" runat="server" href="Div_addTimesheet.aspx">Add a new Timesheet</a></li>
                <li><a id="A2512" runat="server" href="Div_modifyTimesheet.aspx">Modify/ Read a Timesheet</a></li>
            </ul>
        </aside>
    </asp:Panel>
</asp:Content>