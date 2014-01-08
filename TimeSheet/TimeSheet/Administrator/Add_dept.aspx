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
                <td align="right" style="width: 179px">
                    <asp:Label ID="DepartmentNameLabel" runat="server" AssociatedControlID="DepartmentName">Department Name:</asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="DepartmentName" runat="server" Height="20px" Width="280px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="DepartmentNameRequired" runat="server" ControlToValidate="DepartmentName" CssClass="field-validation-error" ErrorMessage="*" />
                </td>
            </tr>
            <tr>
                <td align="right" style="width: 179px">
                    <asp:Label ID="DepartmentIDLabel" runat="server" AssociatedControlID="DepartmentID">Department ID:</asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="DepartmentID" runat="server" Height="20px" Width="280px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="DepartmentIDRequired" runat="server" ControlToValidate="DepartmentID" CssClass="field-validation-error" ErrorMessage="*" />
                </td>
            </tr>
            <tr>
                <td align="right" style="width: 179px">
                    <asp:Label ID="ManagerIDLabel" runat="server">Manager ID:</asp:Label>
                </td>
                <td style="height: 48px">
                    <asp:DropDownList ID="EmployeesList" runat="server" Height="19px" style="margin-left: 12px" ViewStateMode="Enabled" Width="283px">
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td align="right" style="width: 179px">
                    <asp:Label ID="DivisionListLabel" runat="server">Division ID:</asp:Label>
                </td>
                <td style="height: 48px">
                    <asp:DropDownList ID="DivisionsList" runat="server" Height="19px" style="margin-left: 12px" ViewStateMode="Enabled" Width="283px">
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td align="center" colspan="2">
                    <asp:Label ID="ConfirmMessage" runat="server" ForeColor="Blue" Visible="false" Font-Bold="True">Department successfully added</asp:Label>
                </td>
            </tr>
            <tr>
                <td align="center" colspan="2">
                    <asp:Label ID="DuplicateError" runat="server" ForeColor="Red" Visible="false" Font-Bold="True">Department Name or ID already exist</asp:Label>
                </td>
            </tr>
            <tr>
                <td style="width: 179px">&nbsp;</td>
                <td>
                    <p style="text-align: right">
                        <asp:Button ID="Button1" runat="server" Text="Create" OnClick="addDepartment" />
                    </p>
                </td>
            </tr>
        </table>
        
    </asp:Panel>
</asp:Content>