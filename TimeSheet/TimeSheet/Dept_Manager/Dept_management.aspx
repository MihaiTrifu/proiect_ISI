<%@ Page Title="" Language="C#" MasterPageFile="~/Dept_Manager/DepatmentManager_main.master" AutoEventWireup="true" CodeBehind="Dept_management.aspx.cs" Inherits="TimeSheet.Dept_Manager.Dept_management" %>

<asp:Content runat="server" ID="Content3" ContentPlaceHolderID="MainContent" >
    <asp:Panel ID="Panel1" runat="server" Height="188px">
       <asp:Label ID="Label1" runat="server" Font-Bold="False" Font-Size="Larger" Text="~ Management ~"></asp:Label>
        <aside style="z-index: 1; height: 140px; right: 37px; margin-right: 0px">
            <ul>
                <li><a id="A501" runat="server" href="Dept_managementAddClient.aspx">Add a new Client</a></li>
                <li><a id="A502" runat="server" href="Dept_managementAddProject.aspx">Add a new project for a client</a></li>
                <li><a id="A503" runat="server" href="Dept_managementAssigning.aspx">Assigning projects to an employee</a></li>
            </ul>
        </aside>
    </asp:Panel>
</asp:Content>