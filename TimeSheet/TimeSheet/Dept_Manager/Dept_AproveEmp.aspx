<%@ Page Title="" Language="C#" MasterPageFile="~/Dept_Manager/DepatmentManager_main.master" AutoEventWireup="true" CodeBehind="Dept_AproveEmp.aspx.cs" Inherits="TimeSheet.Dept_Manager.Dept_AproveEmp" %>

<asp:Content runat="server" ID="Content3" ContentPlaceHolderID="MainContent" >
        <hgroup class="title">
        <h1>
            <br />
            <span style="font-family: Andalus; color: #3E5667; display: inline">~ Aprove employee timesheet</span></h1>
    </hgroup>

    <aside height: 48px; right: 4px;  0px; position: relative; top: -60px;">
        <ul style="text-align: right">
            <span style="font-family: 'Segoe UI'; font-size: large"><b>
            <li1><a id="A501" runat="server" href="Dept_AproveEmp.aspx" style="color: #7AC0DA">Aprove</a></li1></b> <b>
            <li2><a id="A502" runat="server" href="Dept_ReadEmp.aspx" style="color: #7AC0DA">Read</a></li2></b> <b>
        </ul>
    </aside>
       <asp:Panel ID="Panel4" runat="server" Height="398px" Width="559px">
        <table align="left" style="width: 99%; float: left; font-family: Verdana; margin-right: 0px; height: 230px;">
            <tr>
                <td style="width: 130px; font-size: small; font-weight: bold; font-family: 'Book Antiqua'; color: #3E5667;"><b>Select Employee:</b></td>
                <td>
                    <span style="font-family: 'Segoe UI'; font-size: large"><b>
                    <asp:DropDownList ID="selectDeptNameEdit" runat="server" Height="19px" style="margin-left: 3px" ViewStateMode="Enabled" Width="287px">
                    </asp:DropDownList>
                    </b></span></td>
            </tr>
            <tr>
                <td style="width: 130px; font-size: small; font-weight: bold; font-family: 'Book Antiqua'; color: #3E5667; height: 40px;">Year<b>:</b></td>
                <td style="height: 40px">
                    </span><span style="font-family: 'Segoe UI'; font-size: large">
                    <asp:DropDownList ID="yearSelectAprove" runat="server" Height="19px" style="margin-left: 3px" ViewStateMode="Enabled" Width="287px">
                    </asp:DropDownList>
                    </span></td>
            </tr>
            </span><span style="font-family: 'Segoe UI'; font-size: large">
            <tr>
                <td style="width: 130px; font-size: small; font-weight: bold; font-family: 'Book Antiqua'; color: #3E5667; height: 40px;">Month:</td>
                <td style="height: 40px"><span style="font-family: 'Segoe UI'; font-size: large">
                    <asp:DropDownList ID="monthSelectAprove" runat="server" Height="19px" style="margin-left: 3px" ViewStateMode="Enabled" Width="287px">
                    </asp:DropDownList>
                    </span></td>
            </tr>
            <tr>
                <td style="width: 130px">&nbsp;</td>
                <td>
                    <p style="text-align: right">
                        <asp:Button ID="open" runat="server" Font-Size="XX-Small" Text="Open" OnClick="open_Click" />
                    </p>
                </td>
            </tr>
            </span>
        </table>
    </asp:Panel>

        </b>

        </span>

</asp:Content>