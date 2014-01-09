<%@ Page Title="Edit div" Language="C#" MasterPageFile="~/Administrator/Administrator.master" AutoEventWireup="true" CodeBehind="Edit_div.aspx.cs" Inherits="TimeSheet.Admin.Edit_div" %>

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
     <asp:Panel ID="Panel1" runat="server" Height="400px" Width="576px">
        <table align="left" style="width: 100%; float: left; font-family: Verdana; margin-right: 0px;">
            <tr>
                <td style="width: 162px; font-size: small; font-weight: 700; font-family: 'Book Antiqua'; color: #3E5667;">&nbsp;Select Division:</td>
                <td style="width: 312px">
                    <asp:DropDownList ID="divListEdit" runat="server" Height="27px" style="margin-left: 8px" Width="282px">
                    </asp:DropDownList>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td style="width: 162px; font-size: small; font-weight: 700; font-family: 'Book Antiqua'; color: #3E5667;">Change Name:</td>
                <td style="width: 312px">
                    <asp:TextBox ID="ChangeDivName" runat="server" Height="19px" Width="271px"></asp:TextBox>
                    *</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td style="width: 162px; font-size: small; font-weight: 700; font-family: 'Book Antiqua'; color: #3E5667;">Change ID:</td>
                <td style="width: 312px">
                    <asp:TextBox ID="ChangeDivId" runat="server" Height="19px" Width="271px"></asp:TextBox>
                    *</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td style="width: 162px; font-size: small; font-weight: 700; font-family: 'Book Antiqua'; color: #3E5667;"> <span style="font-size: small; ">Remove Depratment: </span><span style="font-size: small; border-width: 0; padding-right: 2em"><b>&nbsp;</b></span></td>
                <td style="width: 312px">
                    <asp:ListBox ID="deptListEdit" runat="server" Height="27px" style="margin-left: 7px" Width="211px"></asp:ListBox>
                    <asp:Button ID="delteDeptEdit" runat="server" Text="Delete" Font-Size="XX-Small" />
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td style="width: 162px; font-size: small; font-weight: 700; font-family: 'Book Antiqua'; color: #3E5667;">Add Department: </td>
                <td style="width: 312px">
                    <asp:ListBox ID="deptBigListEdit" runat="server" Height="27px" style="margin-left: 7px" Width="211px"></asp:ListBox>
                    <asp:Button ID="addDeptEdit" runat="server" Text="Add" Font-Size="XX-Small" />
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td style="width: 162px; font-size: small; font-weight: 700; font-family: 'Book Antiqua'; color: #3E5667;">Manager:</td>
                <td style="width: 312px">
                    <asp:TextBox ID="divManagerNameEdit" runat="server" Height="18px" Width="274px"></asp:TextBox>
               </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td style="width: 162px">&nbsp;</td>
                <td style="width: 312px">
                    <p style="text-align: right">
                        <asp:Button ID="editDivStr" runat="server" Text="Save" Width="63px" Font-Size="XX-Small" />
                    </p>
                </td>
                <td>&nbsp;</td>
            </tr>
        </table>
    </asp:Panel>
</asp:Content>
    
