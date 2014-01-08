<%@ Page Title="Add emp" Language="C#" MasterPageFile="~/Administrator/Administrator.master" AutoEventWireup="true" CodeBehind="Add_emp.aspx.cs" Inherits="TimeSheet.Admin.Add_emp" %>

<asp:Content runat="server" ID="BodyContent" ContentPlaceHolderID="MainContent">
    <hgroup class="title">
        <h1>~ Add Employee</h1>
    </hgroup>

    <aside style="z-index: 1; height: 127px; right: 10px; margin-right: 0px; margin-top: 0px;">
        <ul>
            <li><a id="A5" runat="server" href="Add_emp.aspx">Add Employee</a></li>
            <li><a id="A6" runat="server" href="Add_div.aspx">Add Division</a></li>
            <li><a id="A7" runat="server" href="Add_dept.aspx">Add Department</a></li>
        </ul>
    </aside>
    <asp:Panel ID="Panel1" runat="server" Height="400px" Width="546px">
        <table>
            <tr>
                <td align="right" style="width: 179px">
                    <asp:Label ID="FirstNameLabel" runat="server" AssociatedControlID="FirstName" Height="20px">First Name:</asp:Label>
                </td>
                <td style="width: 308px">
                    <asp:TextBox ID="FirstName" runat="server" Width="281px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="FirstNameRequired" runat="server" ControlToValidate="FirstName" CssClass="field-validation-error" ErrorMessage="*" />
                </td>
            </tr>
            <tr>
                <td align="right" style="width: 179px">
                    <asp:Label ID="LastNameLabel" runat="server" AssociatedControlID="LastName" Height="20px">Last Name:</asp:Label>
                </td>
                <td style="width: 308px">
                    <asp:TextBox ID="LastName" runat="server" Width="281px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="LastNameRequired" runat="server" ControlToValidate="LastName" CssClass="field-validation-error" ErrorMessage="*" />
                </td>
            </tr>
            <tr>
                <td align="right" style="width: 179px">
                    <asp:Label ID="UserIDLabel" runat="server" AssociatedControlID="UserID" Height="20px">User ID:</asp:Label>
                </td>
                <td style="width: 308px">
                    <asp:TextBox ID="UserID" runat="server" Width="281px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="UserIDRequired" runat="server" ControlToValidate="UserID" CssClass="field-validation-error" ErrorMessage="*" />
                </td>
            </tr>
            <tr>
                <td align="right" style="width: 179px">
                    <asp:Label ID="PasswordLabel" runat="server" AssociatedControlID="Password">Password:</asp:Label>
                </td>
                <td style="width: 308px">
                    <asp:TextBox ID="Password" runat="server" TextMode="Password" Width="280px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="PasswordRequired" runat="server" ControlToValidate="Password" CssClass="field-validation-error" ErrorMessage="*" />
                </td>
            </tr>
            <tr>
                <td align="right" style="width: 179px">
                    <asp:Label ID="ConfirmPasswordLabel" runat="server" AssociatedControlID="ConfirmPassword">Confirm Password:</asp:Label>
                </td>
                <td style="width: 308px">
                    <asp:TextBox ID="ConfirmPassword" runat="server" TextMode="Password" Width="280px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="ConfirmPasswordRequired" runat="server" ControlToValidate="ConfirmPassword" CssClass="field-validation-error" ErrorMessage="*" />
                </td>
            </tr>
            <tr>
                <td align="right" style="width: 179px">
                    <asp:Label ID="EmailLabel" runat="server" AssociatedControlID="Email">E-mail:</asp:Label>
                </td>
                <td style="width: 308px">
                    <asp:TextBox ID="Email" runat="server" Width="280px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="EmailRequired" runat="server" ControlToValidate="Email" CssClass="field-validation-error" ErrorMessage="*" />
                </td>
            </tr>
            <tr>
                <td align="right" style="width: 179px">&nbsp;</td>
                <td style="width: 308px">&nbsp;</td>
            </tr>
            <tr>
                <td align="center" colspan="2">
                    <asp:Label ID="ConfirmMessage" runat="server" ForeColor="Blue" Visible="false" Font-Bold="True">Employee successfully added</asp:Label>
                </td>
            </tr>
            <tr>
                <td align="center" colspan="2">
                    <asp:Label ID="DuplicateError" runat="server" ForeColor="Red" Visible="false" Font-Bold="True">User ID must be unique</asp:Label>
                </td>
            </tr>
            <tr>
                <td align="center" colspan="2">
                    <asp:CompareValidator ID="PasswordCompare" runat="server" ControlToCompare="Password" ControlToValidate="ConfirmPassword" Display="Dynamic" ErrorMessage="The Password and Confirmation Password must match." ForeColor="Red" Font-Bold="True"></asp:CompareValidator>
                </td>
            </tr>
            <tr>
                <td align="center" colspan="2" style="color:Red; height: 22px;">
                    <asp:Literal ID="ErrorMessage" runat="server" EnableViewState="False"></asp:Literal>
                </td>
            </tr>
            <tr>
                <td style="width: 179px">&nbsp;</td>
                <td>
                    <p style="text-align: right">
                        <asp:Button ID="Button1" runat="server" Text="Create" OnClick="AddEmp"/>
                    </p>
                </td>
            </tr>
        </table>
    </asp:Panel>
</asp:Content>