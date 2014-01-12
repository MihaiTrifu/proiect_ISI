<%@ Page Title="" Language="C#" MasterPageFile="~/Dept_Manager/DepatmentManager_main.master" AutoEventWireup="true" CodeBehind="Dept_addTimesheet.aspx.cs" Inherits="TimeSheet.Dept_Manager.Dept_addTimesheet" %>

<asp:Content runat="server" ID="Content3" ContentPlaceHolderID="MainContent" >
        <hgroup class="title">
        <h1>
            <br />
            <span style="font-family: Andalus; color: #3E5667; display: inline">~ Add timesheet</span></h1>
    </hgroup>

    <aside height: 48px; right: 4px;  0px; position: relative; top: -60px;">
        <ul style="text-align: right">
            <span style="font-family: 'Segoe UI'; font-size: large"><b>
            <li1><a id="A5" runat="server" href="Dept_addTimesheet.aspx" style="color: #7AC0DA">Add</a></li1></b> <b>
            <li2><a id="A7" runat="server" href="Dept_modifyTimesheet.aspx" style="color: #7AC0DA">Modify</a></li2></b> <b>
           <li4><a id="A1" runat="server" href="Dept_readTimesheet.aspx" style="color: #7AC0DA">Read</a></li4></b> <b>
            <li3><a id="A6" runat="server" href="Dept_copyTimesheet.aspx" style="color: #7AC0DA">Copy</a></li3></b> <b>
        </ul>
    </aside>
       <asp:Panel ID="Panel4" runat="server" Height="398px" Width="559px">
        <table align="left" style="width: 99%; float: left; font-family: Verdana; margin-right: 0px; height: 230px;">
            <tr>
                <td style="width: 130px; font-size: small; font-weight: bold; font-family: 'Book Antiqua'; color: #3E5667; height: 40px;">Year<b>:</b></td>
                <td style="height: 40px">
                    </span><span style="font-family: 'Segoe UI'; font-size: large">
                    <asp:DropDownList ID="yearAddEmp" AppendDataBoundItems="true" AutoPostBack="true" OnSelectedIndexChanged="yearAddEmp_SelectedIndexChanged" runat="server" Height="19px" style="margin-left: 3px" ViewStateMode="Enabled" Width="287px" CausesValidation="True">
                        <asp:ListItem Text="Select Year.." Selected="True" />
                    </asp:DropDownList>
                    </span></td>
            </tr>
            </span><span style="font-family: 'Segoe UI'; font-size: large">
            <tr>
                <td style="width: 130px; font-size: small; font-weight: bold; font-family: 'Book Antiqua'; color: #3E5667; height: 40px;">Month:</td>
                <td style="height: 40px"><span style="font-family: 'Segoe UI'; font-size: large">
                    <asp:DropDownList ID="monthAddEmp" AppendDataBoundItems="true" AutoPostBack="true" OnSelectedIndexChanged="monthAddEmp_SelectedIndexChanged" runat="server" Height="19px" style="margin-left: 3px" ViewStateMode="Enabled" Width="287px" CausesValidation="True">
                        <asp:ListItem Text="Select Month.." Selected="True" />
                    </asp:DropDownList>
                    </span></td>
            </tr>
            <tr>
                <td style="width: 130px; font-family: 'Book Antiqua'; color: #3E5667; font-weight: bold; font-size: small;">Day<span style="border-width: 0; padding-right: 2em">:&nbsp;</span></td>
                <td>
                    <asp:DropDownList ID="dayAddEmp" runat="server" Height="19px" style="margin-left: 3px" ViewStateMode="Enabled" Width="287px" CausesValidation="True">
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td style="width: 130px">&nbsp;</td>
                <td>
                    <p style="text-align: right">
                        <asp:Button ID="addTsDept" runat="server" Font-Size="XX-Small" Text="Add" OnClick="addTsDept_Click" />
                    </p>
                </td>
            </tr>
            </span>
        </table>
    </asp:Panel>

        </b>

        </span>

</asp:Content>