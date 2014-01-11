<%@ Page Title="Edit emp" Language="C#" MasterPageFile="~/Administrator/Administrator.master" AutoEventWireup="true" CodeBehind="Edit_emp.aspx.cs" Inherits="TimeSheet.Admin.Edit_emp" %>

<asp:Content runat="server" ID="BodyContent" ContentPlaceHolderID="MainContent">
    <hgroup class="title">
        <h1>
            <br />
            <span style="font-family: Andalus; color: #3E5667; display: inline">~ Edit Page</span></h1>
    </hgroup>

    <aside height: 48px; right: 4px;  0px; position: relative; top: -60px;">
        <ul style="text-align: right; font-weight: 700; font-family: 'Segoe UI'; font-size: medium;">
            <span style="font-family: 'Segoe UI'; font-size: large"><b>
            <li1><a id="A51" runat="server" href="Edit_emp.aspx" style="color: #7AC0DA">Emp</a></li1></b> <b>
            <li2><a id="A71" runat="server" href="Edit_dept.aspx" style="color: #7AC0DA">Department</a></li2></b> <b>
            <li3><a id="A61" runat="server" href="Edit_div.aspx" style="color: #7AC0DA">Division</a></li3></b></span>
            <li4><a id="A81" runat="server" href="Edit_dir.aspx" style="color: #7AC0DA; font-size: large;">Director</a></li4></b></span>
        </ul>
    </aside>

     <asp:Panel ID="Panel1" runat="server" Height="400px" Width="546px">
        <table align="left" style="width: 100%; float: left; font-family: Verdana; margin-right: 0px;">
            <tr>
                <td style="width: 101px; font-size: small; font-weight: bold; font-family: 'Book Antiqua'; color: #3E5667; height: 47px;"><b>Select User:</b></td>
                <td>
                    <asp:DropDownList ID="EmployeesList" runat="server" Height="20px" style="margin-left: 8px" Width="282px">
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td style="width: 101px; font-size: small; font-weight: bold; font-family: 'Book Antiqua'; color: #3E5667; height: 47px;"><b>Password:</b></td>
                <td style="width: 308px">
                    <asp:TextBox ID="Password" runat="server" TextMode="Password" Width="280px" Height="16px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td style="width: 101px; font-size: small; font-weight: bold; font-family: 'Book Antiqua'; color: #3E5667; height: 47px;"><b>Confirm Password:</b></td>
                <td style="width: 308px">
                    <asp:TextBox ID="ConfirmPassword" runat="server" TextMode="Password" Width="280px" Height="16px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td style="width: 101px; font-size: small; font-weight: bold; font-family: 'Book Antiqua'; color: #3E5667; height: 47px;"><b>New EMail:</b></td>
                <td style="height: 66px">
                    <asp:TextBox ID="NewEmail" runat="server" Height="16px" Width="280px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td align="center" colspan="2">
                    <asp:CompareValidator ID="PasswordCompare" runat="server" ControlToCompare="Password" ControlToValidate="ConfirmPassword" Display="Dynamic" ErrorMessage="The Password and Confirmation Password must match." ForeColor="Red" Font-Bold="True"></asp:CompareValidator>
                </td>
            </tr>
            <tr>
                <td style="width: 179px">&nbsp;</td>
                <td>
                    <p style="text-align: right">
                        <asp:Button ID="EditEmp" runat="server" Text="Save" Font-Size="XX-Small" OnClick="SaveChanges"/>
                    </p>
                </td>
                <td style="width: 179px">&nbsp;</td>
                <td>
                    <p style="text-align: right">
                        <asp:Button ID="DelUser" runat="server" Text="Delete User" Font-Size="XX-Small" OnClick="DeleteUser"/>
                    </p>
                </td>
            </tr>
        </table>
    </asp:Panel>
</asp:Content>
    
   