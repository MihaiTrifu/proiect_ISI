<%@ Page Title="Add div" Language="C#" MasterPageFile="~/Administrator/Administrator.master" AutoEventWireup="true" CodeBehind="Add_div.aspx.cs" Inherits="TimeSheet.Admin.Add_div" %>

<asp:Content runat="server" ID="BodyContent" ContentPlaceHolderID="MainContent">
    <hgroup class="title">
        <h1>~ Add Division</h1>
    </hgroup>

    <aside style="z-index: 1; height: 127px; right: 69px; margin-right: 0px; margin-top: 0px;">
        <ul>
            <li><a id="A5" runat="server" href="Add_emp.aspx">Add Employee</a></li>
            <li><a id="A6" runat="server" href="Add_div.aspx">Add Division</a></li>
            <li><a id="A7" runat="server" href="Add_dept.aspx">Add Department</a></li>
        </ul>
    </aside>
    <asp:Panel ID="Panel1" runat="server" Height="398px" Width="559px">
        <table align="left" style="width: 100%; float: left; font-family: Verdana; margin-right: 0px;">
            <tr>
                <td align="right" style="width: 179px">
                    <asp:Label ID="DivisionNameLabel" runat="server" AssociatedControlID="DivisionID">Division Name:</asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="DivisionName" runat="server" Height="20px" Width="280px" EnableTheming="False"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="DivisionNameRequired" runat="server" ControlToValidate="DivisionName" CssClass="field-validation-error" ErrorMessage="*" />
                </td>
            </tr>
            <tr>
                <td align="right" style="width: 179px">
                    <asp:Label ID="DivisionIDLabel" runat="server" AssociatedControlID="DivisionID">Division ID:</asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="DivisionID" runat="server" Height="20px" Width="280px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="DivisionIDRequired" runat="server" ControlToValidate="DivisionID" CssClass="field-validation-error" ErrorMessage="*" />
                </td>
            </tr>
            <tr>
                <td align="right" style="width: 179px">
                    <asp:Label ID="DivisionManagerLabel" runat="server" Font-Bold="True" AssociatedControlID="EmployeesList">Division Manager:</asp:Label>
                </td>
                <td style="height: 48px">
                    <asp:DropDownList ID="EmployeesList" runat="server" Height="19px" style="margin-left: 12px" ViewStateMode="Enabled" Width="283px">
                    </asp:DropDownList>
                    <asp:RequiredFieldValidator ID="EmployeesListRequired" runat="server" ControlToValidate="EmployeesList" CssClass="field-validation-error" ErrorMessage="*" />
                </td>
            </tr>
            <tr>
                <td align="center" colspan="2">
                    <asp:Label ID="ConfirmMessage" runat="server" ForeColor="Blue" Visible="false" Font-Bold="True">Division successfully added</asp:Label>
                </td>
            </tr>
            <tr>
                <td align="center" colspan="2">
                    <asp:Label ID="DuplicateError" runat="server" ForeColor="Red" Visible="false" Font-Bold="True">Division Name or ID already exist</asp:Label>
                </td>
            </tr>
            <tr>
                <td style="width: 179px">&nbsp;</td>
                <td>
                    <p style="text-align: right">
                        <asp:Button ID="Button1" runat="server" Text="Create" OnClick="addDivision"/>
                    </p>
                </td>
            </tr>
        </table>
        
    </asp:Panel>
</asp:Content>