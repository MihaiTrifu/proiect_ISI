<%@ Page Title="Edit emp" Language="C#" MasterPageFile="~/Administrator/Administrator.master" AutoEventWireup="true" CodeBehind="Edit_emp.aspx.cs" Inherits="TimeSheet.Admin.Edit_emp" %>

<asp:Content runat="server" ID="BodyContent" ContentPlaceHolderID="MainContent">
    <hgroup class="title">
        <h1>~ Edit Employee Acount</h1>
    </hgroup>

    <aside style="z-index: 1; height: 148px; right: 10px; margin-right: 0px">
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
                <td style="width: 179px; font-size: medium; font-weight: 700;">&nbsp;Select User:</td>
                <td>
                    <asp:DropDownList ID="userListEdit" runat="server" Height="27px" style="margin-left: 8px" Width="282px">
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td style="width: 179px; font-size: medium; font-weight: 700;">Change Name:</td>
                <td>
                    <asp:TextBox ID="ChangeName" runat="server" Height="19px" Width="271px"></asp:TextBox>
                    *</td>
            </tr>
            <tr>
                <td style="width: 179px"><span style="font-size: medium; border-width: 0; padding-right: 2em"><b>New Password:&nbsp;</b></span></td>
                <td>
                    <asp:TextBox ID="NewPassord" runat="server" Height="19px" Width="273px"></asp:TextBox>
                    *</td>
            </tr>
            <tr>
                <td style="width: 179px"><span style="font-size: medium; border-width: 0; padding-right: 2em"><b>New Email:</b></span></td>
                <td>
                    <asp:TextBox ID="NewEmail" runat="server" Height="18px" Width="274px"></asp:TextBox>
                    *</td>
            </tr>
            <tr>
                <td style="width: 179px">&nbsp;</td>
                <td>
                    <p style="text-align: right">
                        <asp:Button ID="EditEmp" runat="server" Text="Save" />
                    </p>
                </td>
            </tr>
        </table>
    </asp:Panel>
</asp:Content>
    
   