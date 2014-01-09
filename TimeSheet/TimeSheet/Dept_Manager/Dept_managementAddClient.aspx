<%@ Page Title="" Language="C#" MasterPageFile="~/Dept_Manager/DepatmentManager_main.master" AutoEventWireup="true" CodeBehind="Dept_managementAddClient.aspx.cs" Inherits="TimeSheet.Dept_Manager.Dept_managementAddClient" %>

<asp:Content runat="server" ID="BodyContent" ContentPlaceHolderID="MainContent">
    <hgroup class="title">
        <h1>
            <br />
            <span style="font-family: Andalus; color: #3E5667; display: inline">~ Add Client</span></h1>
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
    <asp:Panel ID="Panel1" runat="server" Height="398px" Width="559px">
        <table align="left" style="width: 99%; float: left; font-family: Verdana; margin-right: 0px; height: 102px;">
            </span><span style="font-family: 'Segoe UI'; font-size: large">
            <tr>
                <td style="width: 130px; font-size: small; font-weight: bold; font-family: 'Book Antiqua'; color: #3E5667; height: 40px;">Insert Client:</td>
                <td style="height: 40px"><b><span style="font-family: 'Segoe UI'; font-size: large">
                    <asp:TextBox ID="addClient" runat="server" Height="16px" Width="280px"></asp:TextBox>
                    </span><span style="font-family: 'Book Antiqua'; font-size: small">*</span></b></td>
            </tr>
            <tr>
                <td style="width: 130px">&nbsp;</td>
                <td>
                    <p style="text-align: right">
                        <asp:Button ID="insertClient" runat="server" Font-Size="XX-Small" Text="Insert" />
                    </p>
                </td>
            </tr>
            </span>
        </table>
    </asp:Panel>
    </b></span>
</asp:Content>