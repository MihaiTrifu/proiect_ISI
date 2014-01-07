<%@ Page Title="Edit" Language="C#" MasterPageFile="~/Administrator/Administrator.master" AutoEventWireup="true" CodeBehind="Edit.aspx.cs" Inherits="TimeSheet.Admin.Edit" %>

<asp:Content runat="server" ID="BodyContent" ContentPlaceHolderID="MainContent">
    <hgroup class="title">
        <h1>~ Edit</h1>
    </hgroup>

    <aside style="z-index: 1; height: 136px; right: 10px; margin-right: 0px">
        <ul>
            <li><a id="A51" runat="server" href="Edit_emp.aspx">Edit Employee Account</a></li>
            <li><a id="A61" runat="server" href="Edit_div.aspx">Edit Division Structure</a></li>
            <li><a id="A71" runat="server" href="Edit_dept.aspx">Edit Department Structure</a></li>
            <li><a id="A81" runat="server" href="Edit_dir.aspx">Edit Company Director</a></li>
        </ul>
    </aside>
    <asp:Panel ID="Panel1" runat="server" Height="400px" Width="545px">
    </asp:Panel>
</asp:Content>