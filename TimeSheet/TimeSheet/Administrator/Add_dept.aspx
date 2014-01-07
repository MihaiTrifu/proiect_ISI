<%@ Page Title="Add dept" Language="C#" MasterPageFile="~/Administrator/Administrator.master" AutoEventWireup="true" CodeBehind="Add_dept.aspx.cs" Inherits="TimeSheet.Admin.Add_dept" %>

<asp:Content runat="server" ID="BodyContent" ContentPlaceHolderID="MainContent">
    <hgroup class="title">
        <h1>~ Add Department</h1>
    </hgroup>

    <aside style="z-index: 1; height: 127px; right: 10px; margin-right: 0px; margin-top: 0px;">
        <ul>
            <li><a id="A5" runat="server" href="Add_emp.aspx">Add Employee</a></li>
            <li><a id="A6" runat="server" href="Add_div.aspx">Add Division</a></li>
            <li><a id="A7" runat="server" href="Add_dept.aspx">Add Department</a></li>
        </ul>
    </aside>
    <asp:Panel ID="Panel1" runat="server" Height="398px" Width="559px">
        <table align="left" style="width: 99%; float: left; font-family: Verdana; margin-right: 0px; height: 230px;">
            <tr>
                <td style="width: 179px; font-size: medium; font-weight: 700;">Department Name:</td>
                <td>
                    <asp:TextBox ID="DeptName" runat="server" Height="20px" Width="280px" EnableTheming="False"></asp:TextBox>
                    *</td>
            </tr>
            <tr>
                <td style="width: 179px; font-size: medium; font-weight: 700;">Department ID:</td>
                <td>
                    <asp:TextBox ID="DepartID" runat="server" Height="20px" Width="280px"></asp:TextBox>
                    *</td>
            </tr>
            <tr>
                <td style="width: 179px"><span style="font-size: medium; border-width: 0; padding-right: 2em"><b>Manager Name:&nbsp;</b></span></td>
                <td>
                    <asp:TextBox ID="ManName" runat="server" Height="20px" Width="280px"></asp:TextBox>
                    *</td>
            </tr>
            <tr>
                <td style="width: 179px; font-size: medium; font-weight: 700; height: 48px;">Division<span style="font-size: medium; border-width: 0; padding-right: 2em"><b>:&nbsp;</b></span></td>
                <td style="height: 48px">
                    <asp:DropDownList ID="DivisionsList" runat="server" Height="19px" style="margin-left: 12px" ViewStateMode="Enabled" Width="283px">
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td style="width: 179px">&nbsp;</td>
                <td>
                    <p style="text-align: right">
                        <asp:Button ID="Button1" runat="server" Text="Create" />
                    </p>
                </td>
            </tr>
        </table>
        
    </asp:Panel>
</asp:Content>