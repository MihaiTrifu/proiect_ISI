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
        <asp:CreateUserWizard ID="CreateUserWizard1" runat="server" Width="523px">
            <WizardSteps>
                <asp:CreateUserWizardStep runat="server">
                    <ContentTemplate>
                        <table>
                            <tr>
                                <td align="right" style="width: 179px">
                                    <asp:Label ID="UserNameLabel" runat="server" AssociatedControlID="UserName" Height="20px">User Name:</asp:Label>
                                </td>
                                <td style="width: 308px">
                                    <asp:TextBox ID="UserName" runat="server" Width="281px"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="UserNameRequired" runat="server" ControlToValidate="UserName" ErrorMessage="User Name is required." ToolTip="User Name is required." ValidationGroup="CreateUserWizard1">*</asp:RequiredFieldValidator>
                                </td>
                            </tr>
                            <tr>
                                <td align="right" style="width: 179px">
                                    <asp:Label ID="PasswordLabel" runat="server" AssociatedControlID="Password">Password:</asp:Label>
                                </td>
                                <td style="width: 308px">
                                    <asp:TextBox ID="Password" runat="server" TextMode="Password" Width="280px"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="PasswordRequired" runat="server" ControlToValidate="Password" ErrorMessage="Password is required." ToolTip="Password is required." ValidationGroup="CreateUserWizard1">*</asp:RequiredFieldValidator>
                                </td>
                            </tr>
                            <tr>
                                <td align="right" style="width: 179px">
                                    <asp:Label ID="ConfirmPasswordLabel" runat="server" AssociatedControlID="ConfirmPassword">Confirm Password:</asp:Label>
                                </td>
                                <td style="width: 308px">
                                    <asp:TextBox ID="ConfirmPassword" runat="server" TextMode="Password" Width="280px"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="ConfirmPasswordRequired" runat="server" ControlToValidate="ConfirmPassword" ErrorMessage="Confirm Password is required." ToolTip="Confirm Password is required." ValidationGroup="CreateUserWizard1">*</asp:RequiredFieldValidator>
                                </td>
                            </tr>
                            <tr>
                                <td align="right" style="width: 179px">
                                    <asp:Label ID="EmailLabel" runat="server" AssociatedControlID="Email">E-mail:</asp:Label>
                                </td>
                                <td style="width: 308px">
                                    <asp:TextBox ID="Email" runat="server" Width="280px"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="EmailRequired" runat="server" ControlToValidate="Email" ErrorMessage="E-mail is required." ToolTip="E-mail is required." ValidationGroup="CreateUserWizard1">*</asp:RequiredFieldValidator>
                                </td>
                            </tr>
                            <tr>
                                <td align="right" style="width: 179px">&nbsp;</td>
                                <td style="width: 308px">&nbsp;</td>
                            </tr>
                            <tr>
                                <td align="right" style="width: 179px"></td>
                                <td style="width: 308px"></td>
                            </tr>
                            <tr>
                                <td align="center" colspan="2">
                                    <asp:CompareValidator ID="PasswordCompare" runat="server" ControlToCompare="Password" ControlToValidate="ConfirmPassword" Display="Dynamic" ErrorMessage="The Password and Confirmation Password must match." ValidationGroup="CreateUserWizard1"></asp:CompareValidator>
                                </td>
                            </tr>
                            <tr>
                                <td align="center" colspan="2" style="color:Red; height: 22px;">
                                    <asp:Literal ID="ErrorMessage" runat="server" EnableViewState="False"></asp:Literal>
                                </td>
                            </tr>
                        </table>
                    </ContentTemplate>
                </asp:CreateUserWizardStep>
                <asp:CompleteWizardStep runat="server" />
            </WizardSteps>
        </asp:CreateUserWizard>
    </asp:Panel>
</asp:Content>