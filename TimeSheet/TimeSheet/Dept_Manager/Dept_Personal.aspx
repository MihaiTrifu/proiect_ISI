<%@ Page Title="" Language="C#" MasterPageFile="~/Dept_Manager/DepatmentManager_main.master" AutoEventWireup="true" CodeBehind="Dept_Personal.aspx.cs" Inherits="TimeSheet.Dept_Manager.Dept_Personal" %>

<asp:Content runat="server" ID="Content3" ContentPlaceHolderID="MainContent" >
    <asp:Panel ID="Panel1" runat="server" Height="188px">
       <asp:Label ID="Label1" runat="server" Font-Bold="False" Font-Size="Larger" Text="~ Personal Timesheet ~"></asp:Label>
        <aside style="z-index: 1; height: 140px; right: 37px; margin-right: 0px">
            <ul>
                <li><a id="A511" runat="server" href="Dept_addTimesheet.aspx">Add a new Timesheet</a></li>
                <li><a id="A611" runat="server" href="Dept_modifyTimesheet.aspx">Modify/ Read a Timesheet</a></li>
            </ul>
        </aside>
    </asp:Panel>
</asp:Content>