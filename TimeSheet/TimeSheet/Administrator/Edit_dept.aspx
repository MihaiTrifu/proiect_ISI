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
                <td style="width: 101px; font-size: small; font-weight: bold; font-family: 'Book Antiqua'; color: #3E5667; height: 47px;"><b>Select Division:</b></td>
                <td>
                    <span style="font-family: 'Segoe UI'; font-size: large">
                        <b>
                            <asp:DropDownList ID="DivisionsList" AppendDataBoundItems="true" OnSelectedIndexChanged="DivisionList_SelectedIndexChanged" AutoPostBack="true" runat="server" Height="19px" style="margin-left: 3px" ViewStateMode="Enabled" Width="291px">
                                <asp:ListItem Text="Select Division.." Selected="True" />
                            </asp:DropDownList>
                        </b>
                    </span>
                </td>
            </tr>
            <tr>
                <td style="width: 101px; font-size: small; font-weight: bold; font-family: 'Book Antiqua'; color: #3E5667; height: 47px;"><b>Select Department:</b></td> 
                <td>
                    <span style="font-family: 'Segoe UI'; font-size: large">
                        <b>
                            <asp:DropDownList ID="DeptList" runat="server" Height="19px" style="margin-left: 3px" ViewStateMode="Enabled" Width="291px"/>
                            <asp:RequiredFieldValidator ID="DeptListRequired" runat="server" ControlToValidate="DeptList" CssClass="field-validation-error" ErrorMessage="*" />
                        </b>
                    </span>
                </td>
            </tr>
            <tr>
                <td style="width: 101px; font-size: small; font-weight: bold; font-family: 'Book Antiqua'; color: #3E5667; height: 47px;"><b>New Manager:</b></td>
                <td>
                    <asp:DropDownList ID="EmployeesList" runat="server" Height="18px" style="margin-left: 3px" ViewStateMode="Enabled" Width="291px"> 
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td style="width: 130px">&nbsp;</td>
                <td>
                    <p style="text-align: right">
                        <asp:Button ID="editDept" runat="server" Font-Size="XX-Small" Text="Save Changes" OnClick="SaveChanges"/>
                    </p>
                </td>
                <td style="width: 130px">&nbsp;</td>
                <td>
                    <p style="text-align: right">
                        <asp:Button ID="DeleteDept" runat="server" Font-Size="XX-Small" Text="Delete Dept" OnClick="DeleteDepart"/>
                    </p>
                </td>
            </tr>
        </table>
    </asp:Panel>
</asp:Content>
    
