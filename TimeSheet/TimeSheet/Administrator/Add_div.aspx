<%@ Page Title="Add div" Language="C#" MasterPageFile="~/Administrator/Administrator.master" AutoEventWireup="true" CodeBehind="Add_div.aspx.cs" Inherits="TimeSheet.Admin.Add_div" %>

<asp:Content runat="server" ID="BodyContent" ContentPlaceHolderID="MainContent">
    <hgroup class="title">
        <h1>
            <br />
            <span style="font-family: Andalus; color: #3E5667; display: inline">~ Add Division</span></h1>
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
        <table align="left" style="width: 99%; float: left; font-family: Verdana; margin-right: 0px;">
            <tr>
                <td style="width: 101px; font-size: small; font-weight: bold; font-family: 'Book Antiqua'; color: #3E5667; height: 47px;"><b>Division Name:</b></td>
                <td style="height: 47px">
                    <asp:TextBox ID="DivisionName" runat="server" Height="16px" Width="280px" EnableTheming="False"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="DivisionNameRequired" runat="server" ControlToValidate="DivisionName" CssClass="field-validation-error" ErrorMessage="*" />
                </td>
            </tr>
            <tr>
                <td style="width: 101px; font-size: small; font-weight: bold; font-family: 'Book Antiqua'; color: #3E5667; height: 38px;"><b>Division ID:</b></td>
                <td style="height: 38px">
                    <asp:TextBox ID="DivisionID" runat="server" Height="16px" Width="280px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="DivisionIDRequired" runat="server" ControlToValidate="DivisionID" CssClass="field-validation-error" ErrorMessage="*" />
                </td>
            </tr>
            <tr>
                <td style="width: 101px; font-family: 'Book Antiqua'; color: #3E5667; font-weight: bold; font-size: small; height: 51px;"><span style="border-width: 0; padding-right: 2em">Manager Name:&nbsp;</span></td>
                <td style="height: 51px">
                    <asp:DropDownList ID="EmployeesList" runat="server" Height="20px" style="margin-left: 3px" ViewStateMode="Enabled" Width="293px">
                    </asp:DropDownList>
                    <asp:RequiredFieldValidator ID="EmployeesListRequired" runat="server" ControlToValidate="EmployeesList" CssClass="field-validation-error" ErrorMessage="*" />
                </td>
            </tr>
            <tr>
                <td align="center" colspan="2">
                    <asp:Label ID="ConfirmMessage" runat="server" ForeColor="Blue" Visible="false" Font-Bold="True">Division successfully added</asp:Label>
                    <br />
                    <asp:Label ID="DuplicateError" runat="server" Font-Bold="True" ForeColor="Red" Visible="false">Division Name or ID already exist</asp:Label>
                </td>
            </tr>
            <tr>
                <td style="width: 101px; font-size: small; font-weight: bold; height: 48px; font-family: 'Book Antiqua'; color: #3E5667;">
                    &nbsp;</td>
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