<%@ Page Title="Add dept" Language="C#" MasterPageFile="~/Administrator/Administrator.master" AutoEventWireup="true" CodeBehind="Add_dept.aspx.cs" Inherits="TimeSheet.Admin.Add_dept" %>

<asp:Content runat="server" ID="BodyContent" ContentPlaceHolderID="MainContent">
    <hgroup class="title">
        <h1>
            <br />
            <span style="font-family: Andalus; color: #3E5667; display: inline">~ Add Department</span></h1>
    </hgroup>
    <aside height: 48px; right: 4px;  0px; position: relative; top: -60px;">
        <ul style="text-align: right">
            <span style="font-family: 'Segoe UI'; font-size: large"><b>
            <li1><a id="A5" runat="server" href="Add_emp.aspx" style="color: #7AC0DA">Add Employee</a></li1></b> <b>
            <li2><a id="A7" runat="server" href="Add_dept.aspx" style="color: #7AC0DA">Add Department</a></li2></b> <b>
            <li3><a id="A6" runat="server" href="Add_div.aspx" style="color: #7AC0DA">Add Division</a></li3></b></span>
        </ul>
    </aside>
    <asp:Panel ID="Panel1" runat="server" Height="398px" Width="559px">
        <table align="left" style="width: 99%; float: left; font-family: Verdana; margin-right: 0px; height: 230px;">
            <tr>
                <td style="width: 101px; font-size: small; font-weight: bold; font-family: 'Book Antiqua'; color: #3E5667; height: 47px;"><b>Department Name:</b></td>
                <td>
                    <asp:TextBox ID="DepartmentName" runat="server" Height="16px" Width="280px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="DepartmentNameRequired" runat="server" ControlToValidate="DepartmentName" CssClass="field-validation-error" ErrorMessage="*" />
                </td>
            </tr>
            <tr>
                <td style="width: 101px; font-size: small; font-weight: bold; font-family: 'Book Antiqua'; color: #3E5667; height: 47px;"><b>Department ID:</b></td>
                <td>
                    <asp:TextBox ID="DepartmentID" runat="server" Height="16px" Width="280px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="DepartmentIDRequired" runat="server" ControlToValidate="DepartmentID" CssClass="field-validation-error" ErrorMessage="*" />
                </td>
            </tr>
            <tr>
                <td style="width: 101px; font-size: small; font-weight: bold; font-family: 'Book Antiqua'; color: #3E5667; height: 47px;"><b>Manager ID:</b></td>
                <td style="height: 48px">
                    <asp:DropDownList ID="EmployeesList" runat="server" Height="20px" style="margin-left: 12px" ViewStateMode="Enabled" Width="289px">
                    </asp:DropDownList>
                    <asp:RequiredFieldValidator ID="EmployeesListRequired" runat="server" ControlToValidate="EmployeesList" CssClass="field-validation-error" ErrorMessage="*" />
                </td>
            </tr>
            <tr>
               `<td style="width: 101px; font-size: small; font-weight: bold; font-family: 'Book Antiqua'; color: #3E5667; height: 47px;"><b>Division ID:</b></td>
                <td style="height: 48px">
                    <asp:DropDownList ID="DivisionsList" runat="server" Height="20px" style="margin-left: 12px" ViewStateMode="Enabled" Width="288px">
                    </asp:DropDownList>
                    <asp:RequiredFieldValidator ID="DivisionListRequired" runat="server" ControlToValidate="DivisionsList" CssClass="field-validation-error" ErrorMessage="*" />
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
                <td style="width: 130px">&nbsp;</td>
                <td>
                    <p style="text-align: right">
                        <asp:Button ID="Button1" runat="server" Text="Create" Font-Size="XX-Small" OnClick="addDepartment" />
                    </p>
                </td>
            </tr>
        </table>
        
    </asp:Panel>
</asp:Content>