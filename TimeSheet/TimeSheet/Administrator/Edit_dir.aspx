<%@ Page Title="Edit dir" Language="C#" MasterPageFile="~/Administrator/Administrator.master" AutoEventWireup="true" CodeBehind="Edit_dir.aspx.cs" Inherits="TimeSheet.Admin.Edit_dir" %>

<asp:Content runat="server" ID="BodyContent" ContentPlaceHolderID="MainContent">
    <hgroup class="title">
        <h1>
            <br />
            <span style="font-family: Andalus; color: #3E5667; display: inline">~ Edit Director</span></h1>
    </hgroup>
    <aside height: 48px; right: 4px;  0px; position: relative; top: -60px;">
        <ul style="text-align: right">
            <span style="font-family: 'Segoe UI'; font-size: large"><b>
            <a id="A51" runat="server" href="Edit_emp.aspx" style="color: #7AC0DA">Employee</a>
            <a id="A61" runat="server" href="Edit_div.aspx" style="color: #7AC0DA">Division</a>
            <a id="A71" runat="server" href="Edit_dept.aspx" style="color: #7AC0DA">Department</a>
            <a id="A81" runat="server" href="Edit_dir.aspx" style="color: #7AC0DA">Director</a>
        </ul>
    </aside>

     <asp:Panel ID="Panel1" runat="server" Height="400px" Width="546px">
        <table align="left" style="width: 100%; float: left; font-family: Verdana; margin-right: 0px;">
            <tr>
                <td align="right" style="width: 179px; height: 79px;">
                    <asp:Label ID="CurrentDirectorLabel" runat="server" Font-Bold="True" style="font-family: 'Book Antiqua'; color: #3E5667; font-size: small">Current Director:</asp:Label>
                </td></span><span style="font-family: 'Segoe UI'; font-size: large">
                <td style="height: 79px">
                    <asp:TextBox ID="CurrentDirector" runat="server" Height="16px" ReadOnly="true" Width="271px"></asp:TextBox>
                </td>
                </span>
            </tr>

            <tr>
                <td align="right" style="width: 179px; height: 58px;">
                    <asp:Label ID="NewDirectorLabel" runat="server" Font-Bold="True" AssociatedControlID="EmployeesList">New Director:</asp:Label>
                </td>
                <td style="height: 58px">
                    <asp:DropDownList ID="EmployeesList" runat="server" Height="21px" style="margin-left: 12px" ViewStateMode="Enabled" Width="283px">
                    </asp:DropDownList>
                    <asp:RequiredFieldValidator ID="EmployeesListRequired" runat="server" ControlToValidate="EmployeesList" CssClass="field-validation-error" ErrorMessage="*" />
                </td>
            </tr>
            <tr>
                <td style="width: 179px">&nbsp;</td>
                <td>
                    <p style="text-align: right">
                        <asp:Button ID="EditDir" runat="server" Text="Save" OnClick="SaveNewDir" Font-Size="XX-Small"/>
                    </p>
                </td>
            </tr>
        </table>
         </span>
    </asp:Panel>
    </b>
    </span>
</asp:Content>
    