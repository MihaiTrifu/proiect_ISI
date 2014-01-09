<%@ Page Title="Add emp" Language="C#" MasterPageFile="~/Administrator/Administrator.master" AutoEventWireup="true" CodeBehind="Add_emp.aspx.cs" Inherits="TimeSheet.Admin.Add_emp" %>

<asp:Content runat="server" ID="BodyContent" ContentPlaceHolderID="MainContent">
    <hgroup class="title">
        <h1>
            <br />
            <span style="font-family: Andalus; color: #3E5667; display: inline">~ Add Employee<br />
            <br />
            </span></h1>
    </hgroup>
    <aside height: 48px; right: 4px;  0px; position: relative; top: -60px;">
        <ul style="text-align: right">
            <span style="font-family: 'Segoe UI'; font-size: large"><b>
            <li1><a id="A5" runat="server" href="Add_emp.aspx" style="color: #7AC0DA">Add Employee</a></li1></b> <b>
            <li2><a id="A7" runat="server" href="Add_dept.aspx" style="color: #7AC0DA">Add Department</a></li2></b> <b>
            <li3><a id="A6" runat="server" href="Add_div.aspx" style="color: #7AC0DA">Add Division</a></li3></b></span>
        </ul>
    </aside>
    <asp:Panel ID="Panel1" runat="server" Height="475px" Width="546px">
        <table>
            <tr>
                <td align="right" style="width: 159px">
                    <asp:Label ID="FirstNameLabel" runat="server" AssociatedControlID="FirstName" Height="20px" style="font-family: Verdana, Geneva, Tahoma, sans-serif; font-size: small; color: #3E5667">First Name:</asp:Label>
                </td>
                <td style="width: 308px">
                    <asp:TextBox ID="FirstName" runat="server" Width="281px" Height="16px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="FirstNameRequired" runat="server" ControlToValidate="FirstName" CssClass="field-validation-error" ErrorMessage="*" />
                </td>
            </tr>
            <tr>
                <td align="right" style="width: 159px">
                    <asp:Label ID="LastNameLabel" runat="server" AssociatedControlID="LastName" Height="20px" style="font-family: Verdana, Geneva, Tahoma, sans-serif; font-size: small; color: #3E5667">Last Name:</asp:Label>
                </td>
                <td style="width: 308px">
                    <asp:TextBox ID="LastName" runat="server" Width="281px" Height="16px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="LastNameRequired" runat="server" ControlToValidate="LastName" CssClass="field-validation-error" ErrorMessage="*" />
                </td>
            </tr>
            <tr>
                <td align="right" style="width: 159px">
                    <asp:Label ID="UserIDLabel" runat="server" AssociatedControlID="UserID" Height="20px" style="font-family: Verdana, Geneva, Tahoma, sans-serif; font-size: small; color: #3E5667">User ID:</asp:Label>
                </td>
                <td style="width: 308px">
                    <asp:TextBox ID="UserID" runat="server" Width="281px" Height="16px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="UserIDRequired" runat="server" ControlToValidate="UserID" CssClass="field-validation-error" ErrorMessage="*" />
                </td>
            </tr>
            <tr>
                <td align="right" style="width: 159px">
                    <asp:Label ID="PasswordLabel" runat="server" AssociatedControlID="Password" style="font-family: Verdana, Geneva, Tahoma, sans-serif; font-size: small; color: #3E5667">Password:</asp:Label>
                </td>
                <td style="width: 308px">
                    <asp:TextBox ID="Password" runat="server" TextMode="Password" Width="280px" Height="16px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="PasswordRequired" runat="server" ControlToValidate="Password" CssClass="field-validation-error" ErrorMessage="*" />
                </td>
            </tr>
            <tr>
                <td align="right" style="width: 159px">
                    <asp:Label ID="ConfirmPasswordLabel" runat="server" AssociatedControlID="ConfirmPassword" style="font-family: Verdana, Geneva, Tahoma, sans-serif; font-size: small; color: #3E5667">Confirm Password:</asp:Label>
                </td>
                <td style="width: 308px">
                    <asp:TextBox ID="ConfirmPassword" runat="server" TextMode="Password" Width="280px" Height="16px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="ConfirmPasswordRequired" runat="server" ControlToValidate="ConfirmPassword" CssClass="field-validation-error" ErrorMessage="*" />
                </td>
            </tr>
            <tr>
                <td align="right" style="width: 159px">
                    <asp:Label ID="EmailLabel" runat="server" AssociatedControlID="Email" style="font-family: Verdana, Geneva, Tahoma, sans-serif; font-size: small; color: #3E5667">E-mail:</asp:Label>
                </td>
                <td style="width: 308px">
                    <asp:TextBox ID="Email" runat="server" Width="280px" Height="16px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="EmailRequired" runat="server" ControlToValidate="Email" CssClass="field-validation-error" ErrorMessage="*" />
                </td>
            </tr>
            <tr>
                <td align="right" style="width: 159px">&nbsp;</td>
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
                <td style="width: 159px">&nbsp;</td>
                <td>
                    <p style="text-align: right">
                        <asp:Button ID="Button1" runat="server" Text="Create" OnClick="AddEmp" Font-Size="XX-Small"/>
                    </p>
                </td>
            </tr>
        </table>
    </asp:Panel>
</asp:Content>