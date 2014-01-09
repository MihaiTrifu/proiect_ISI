<%@ Page Title="Edit dept" Language="C#" MasterPageFile="~/Administrator/Administrator.master" AutoEventWireup="true" CodeBehind="Edit_dept.aspx.cs" Inherits="TimeSheet.Admin.Edit_dept" %>

<asp:Content runat="server" ID="BodyContent" ContentPlaceHolderID="MainContent">
    <hgroup class="title">
        <h1>
            <br />
            <span style="font-family: Andalus; color: #3E5667; display: inline">~ Edit Department
            </span></h1>
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
   <asp:Panel ID="Panel1" runat="server" Height="398px" Width="559px">
        <table align="left" style="width: 99%; float: left; font-family: Verdana; margin-right: 0px; height: 230px;">
            <tr>
                <td style="width: 130px; font-size: small; font-weight: bold; font-family: 'Book Antiqua'; color: #3E5667;">
                 <asp:Label ID="SelectDepartmentLabel" runat="server" Font-Bold="True">Select Department:</td> </asp:Label>
                <td>
                    <span style="font-family: 'Segoe UI'; font-size: large"><b>
                    <asp:DropDownList ID="selectDeptNameEdit" runat="server" Height="19px" style="margin-left: 3px" ViewStateMode="Enabled" Width="291px">
                    </asp:DropDownList>

                    </b></span></td>
            </tr>
            <tr>
                <td style="width: 130px; font-size: small; font-weight: bold; font-family: 'Book Antiqua'; color: #3E5667; height: 40px;">
                <asp:Label ID="DepartmentNameLabel" runat="server" Font-Bold="True">Department Name:</td></asp:Label>
                <td style="height: 40px">
                    <asp:TextBox ID="deptNameEdit" runat="server" Height="16px" Width="280px"></asp:TextBox>
                    </span><span style="font-family: 'Segoe UI'; "><span style="font-family: boo; font-size: small; color: #3E5667">*</span></span></td>
            </tr>
            </span><span style="font-family: 'Segoe UI'; font-size: large">
            <tr>
                <td style="width: 130px; font-size: small; font-weight: bold; font-family: 'Book Antiqua'; color: #3E5667; height: 40px;">
                    <asp:Label ID="DepartmentIDLabel" runat="server" Font-Bold="True">Department ID:</td></asp:Label>
                <td style="height: 40px"><b><span style="font-family: 'Segoe UI'; font-size: large">
                    <asp:TextBox ID="deptIdEdit" runat="server" Height="16px" Width="280px"></asp:TextBox>
                    </span><span style="font-family: 'Book Antiqua'; font-size: small">*</span></b></td>
            </tr>
            <tr>
                <td style="width: 130px; font-family: 'Book Antiqua'; color: #3E5667; font-weight: bold; font-size: small;"><span style="border-width: 0; padding-right: 2em">
                   <asp:Label ID="ManagerNameLabel" runat="server" Font-Bold="True"> Manager Name:&nbsp;</span></td></asp:Label>
                <td>
                    <asp:DropDownList ID="EmployeesList" runat="server" Height="18px" style="margin-left: 3px" ViewStateMode="Enabled" Width="295px">
                    </asp:DropDownList>
                    <asp:RequiredFieldValidator ID="EmployeesListRequired" runat="server" ControlToValidate="EmployeesList" CssClass="field-validation-error" ErrorMessage="*" /> 
                </td>
            </tr>
            <tr>
                <td style="width: 130px">&nbsp;</td>
                <td>
                    <p style="text-align: right">
                        <asp:Button ID="editDept" runat="server" Font-Size="XX-Small" Text="Edit" />
                    </p>
                </td>
            </tr>
            </span>
        </table>
    </asp:Panel>
    </b></span>
</asp:Content>
    
