<%@ Page Title="Edit dir" Language="C#" MasterPageFile="~/Administrator/Administrator.master" AutoEventWireup="true" CodeBehind="Edit_dir.aspx.cs" Inherits="TimeSheet.Admin.Edit_dir" %>

<asp:Content runat="server" ID="BodyContent" ContentPlaceHolderID="MainContent">
    <hgroup class="title">
        <h1>~ Edit Company Director</h1>
    </hgroup>

    <aside style="z-index: 1; height: 140px; right: 10px; margin-right: 0px">
        <ul>
            <li><a id="A51" runat="server" href="Edit_emp.aspx">Edit Employee Account</a></li>
            <li><a id="A61" runat="server" href="Edit_div.aspx">Edit Division Structure</a></li>
            <li><a id="A71" runat="server" href="Edit_dept.aspx">Edit Department Structure</a></li>
            <li><a id="A81" runat="server" href="Edit_dir.aspx">Edit Company Director</a></li>
        </ul>
     </aside>

     <asp:Panel ID="Panel1" runat="server" Height="400px" Width="546px">
        <table align="left" style="width: 100%; float: left; font-family: Verdana; margin-right: 0px;">
            <tr>
                <td align="right" style="width: 179px">
                    <asp:Label ID="CurrentDirectorLabel" runat="server" Font-Bold="True">Current Director:</asp:Label>
                </td><td>
                    <asp:TextBox ID="CurrentDirector" ReadOnly="true" runat="server" Height="19px" Width="271px"></asp:TextBox>
                </td>
            </tr>

            <tr>
                <td align="right" style="width: 179px">
                    <asp:Label ID="NewDirectorLabel" runat="server" Font-Bold="True" AssociatedControlID="EmployeesList">New Director:</asp:Label>
                </td>
                <td style="height: 48px">
                    <asp:DropDownList ID="EmployeesList" runat="server" Height="19px" style="margin-left: 12px" ViewStateMode="Enabled" Width="283px">
                    </asp:DropDownList>
                    <asp:RequiredFieldValidator ID="EmployeesListRequired" runat="server" ControlToValidate="EmployeesList" CssClass="field-validation-error" ErrorMessage="*" />
                </td>
            </tr>
            <tr>
                <td align="right" style="width: 179px">
                <asp:CheckBoxList id="checkboxlist1" 
                   OnSelectedIndexChanged="Check_Clicked"
                   runat="server">

                     <asp:ListItem>Item 1</asp:ListItem>
                     <asp:ListItem>Item 2</asp:ListItem>
                     <asp:ListItem>Item 3</asp:ListItem>
                     <asp:ListItem>Item 4</asp:ListItem>
                     <asp:ListItem>Item 5</asp:ListItem>
                     <asp:ListItem>Item 6</asp:ListItem>
                 </asp:CheckBoxList>
                    </td>
            </tr>
            <tr>
                <td style="width: 179px">&nbsp;</td>
                <td>
                    <p style="text-align: right">
                        <asp:Button ID="EditDir" runat="server" Text="Save" OnClick="SaveNewDir"/>
                    </p>
                </td>
            </tr>
        </table>
    </asp:Panel>
</asp:Content>
    