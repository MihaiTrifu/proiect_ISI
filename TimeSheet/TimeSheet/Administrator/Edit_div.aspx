<%@ Page Title="Edit div" Language="C#" MasterPageFile="~/Administrator/Administrator.master" AutoEventWireup="true" CodeBehind="Edit_div.aspx.cs" Inherits="TimeSheet.Admin.Edit_div" %>

<asp:Content runat="server" ID="BodyContent" ContentPlaceHolderID="MainContent">
    <hgroup class="title">
        <h1>~ Edit Division Structure</h1>
    </hgroup>

    <aside style="z-index: 1; height: 138px; right: 15px; margin-right: 0px">
        <ul>
            <li><a id="Div1" runat="server" href="Edit_emp.aspx">Edit Employee Account</a></li>
            <li><a id="Div2" runat="server" href="Edit_div.aspx">Edit Division Structure</a></li>
            <li><a id="Div3" runat="server" href="Edit_dept.aspx">Edit Department Structure</a></li>
            <li><a id="Div4" runat="server" href="Edit_dir.aspx">Edit Company Director</a></li>
        </ul>
     </aside>

     <asp:Panel ID="Panel1" runat="server" Height="400px" Width="546px">
        <table align="left" style="width: 100%; float: left; font-family: Verdana; margin-right: 0px;">
            <tr>
                <td style="width: 179px; font-size: medium; font-weight: 700;">&nbsp;Select Division:</td>
                <td>
                    <asp:DropDownList ID="divListEdit" runat="server" Height="27px" style="margin-left: 8px" Width="282px">
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td style="width: 179px; font-size: medium; font-weight: 700;">Change Name:</td>
                <td>
                    <asp:TextBox ID="ChangeDivName" runat="server" Height="19px" Width="271px"></asp:TextBox>
                    *</td>
            </tr>
            <tr>
                <td style="width: 179px; font-size: medium; font-weight: 700;">Change ID:</td>
                <td>
                    <asp:TextBox ID="ChangeDivId" runat="server" Height="19px" Width="271px"></asp:TextBox>
                    *</td>
            </tr>
            <tr>
                <td style="width: 179px; font-size: medium; font-weight: 700;">Remove Depratment: <span style="font-size: medium; border-width: 0; padding-right: 2em"><b>&nbsp;</b></span></td>
                <td>
                    <asp:ListBox ID="deptListEdit" runat="server" Height="27px" style="margin-left: 7px" Width="212px"></asp:ListBox>
                    <asp:Button ID="delteDeptEdit" runat="server" Text="Delete" Width="64px" />
                </td>
            </tr>
            <tr>
                <td style="width: 179px; font-size: medium; font-weight: 700;">Add Department: </td>
                <td>
                    <asp:ListBox ID="deptBigListEdit" runat="server" Height="27px" style="margin-left: 7px" Width="211px"></asp:ListBox>
                    <asp:Button ID="addDeptEdit" runat="server" Text="Add" Width="64px" />
                </td>
            </tr>
            <tr>
                <td style="width: 179px; font-size: medium; font-weight: 700;">Manager:</td>
                <td>
                    <asp:TextBox ID="divManagerNameEdit" runat="server" Height="18px" Width="274px"></asp:TextBox>
               </td>
            </tr>
            <tr>
                <td style="width: 179px">&nbsp;</td>
                <td>
                    <p style="text-align: right">
                        <asp:Button ID="editDivStr" runat="server" Text="Save" Width="63px" />
                    </p>
                </td>
            </tr>
        </table>
    </asp:Panel>
</asp:Content>
    
