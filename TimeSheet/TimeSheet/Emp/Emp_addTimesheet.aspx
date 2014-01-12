<%@ Page Title="" Language="C#" MasterPageFile="~/Emp/Employee_main.master" AutoEventWireup="true" CodeBehind="Emp_addTimesheet.aspx.cs" Inherits="TimeSheet.Emp.Emp_addTimesheet" %>

<asp:Content runat="server" ID="Content3" ContentPlaceHolderID="MainContent" >
        <hgroup class="title">
        <h1>
            <br />
            <span style="font-family: Andalus; color: #3E5667; display: inline">~ Add timesheet</span></h1>
    </hgroup>

    <aside height: 48px; right: 4px;  0px; position: relative; top: -60px;">
        <ul style="text-align: right; height: 31px;">
            <span style="font-family: 'Segoe UI'; font-size: large"><b>
        </ul>
    </aside>
       <asp:Panel ID="Panel4" runat="server" Height="398px" Width="559px">
        <table align="left" style="width: 99%; float: left; font-family: Verdana; margin-right: 0px; height: 230px;">
            <tr>
                <td style="width: 130px; font-size: small; font-weight: bold; font-family: 'Book Antiqua'; color: #3E5667; height: 40px;">Year<b>:</b></td>
                <td style="height: 40px">
                    </span><span style="font-family: 'Segoe UI'; font-size: large">
                    <asp:DropDownList ID="yearAddEmp" runat="server" Height="19px" style="margin-left: 3px" ViewStateMode="Enabled" Width="287px" CausesValidation="True">
                        <asp:ListItem>2000</asp:ListItem>
                        <asp:ListItem>2001</asp:ListItem>
                    </asp:DropDownList>
                    </span></td>
            </tr>
            </span><span style="font-family: 'Segoe UI'; font-size: large">
            <tr>
                <td style="width: 130px; font-size: small; font-weight: bold; font-family: 'Book Antiqua'; color: #3E5667; height: 40px;">Month:</td>
                <td style="height: 40px"><span style="font-family: 'Segoe UI'; font-size: large">
                    <asp:DropDownList ID="monthAddEmp" runat="server" Height="19px" style="margin-left: 3px" ViewStateMode="Enabled" Width="287px" CausesValidation="True">
                        <asp:ListItem>June</asp:ListItem>
                        <asp:ListItem>July</asp:ListItem>
                        <asp:ListItem>August</asp:ListItem>
                    </asp:DropDownList>
                    </span></td>
            </tr>
            <tr>
                <td style="width: 130px; font-family: 'Book Antiqua'; color: #3E5667; font-weight: bold; font-size: small;">Day<span style="border-width: 0; padding-right: 2em">:&nbsp;</span></td>
                <td>
                    <asp:DropDownList ID="dayAddEmp" runat="server" Height="19px" style="margin-left: 3px" ViewStateMode="Enabled" Width="287px" CausesValidation="True">
                        <asp:ListItem>1</asp:ListItem>
                        <asp:ListItem>2</asp:ListItem>
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td style="width: 130px"><span style="font-family: 'Segoe UI'; font-size: large"><b>
                    <asp:Button ID="addTsEmp" runat="server" Font-Size="XX-Small" OnClick="addTsEmp_Click" Text="Add" />
                    </b></span></td>
                <td>
                    <p style="text-align: right">
                        &nbsp;</p>
                </td>
            </tr>
            </span>
        </table>
    </asp:Panel>

        </b>

        </span>

</asp:Content>