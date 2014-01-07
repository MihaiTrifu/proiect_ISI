<%@ Page Title="" Language="C#" MasterPageFile="~/Div_Manager/DivisionManager_main.master" AutoEventWireup="true" CodeBehind="Div_empRead.aspx.cs" Inherits="TimeSheet.Div_Manager.Div_empRead" %>

<asp:Content runat="server" ID="Content3" ContentPlaceHolderID="MainContent" >
    <asp:Panel ID="Panel1" runat="server" Height="294px" Width="1066px" style="margin-top: 0px">
        <table style="width: 26%; height: 120px; position: absolute; top: 244px; left: 93px; z-index: 2; right: 855px;">
            <tr>
                <td style="text-align: right; width: 186px">Employee ID</td>
                <td>
                    <asp:DropDownList ID="empReadDiv" runat="server" Height="23px" Width="183px">
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td style="text-align: right; width: 186px; height: 30px;">Year</td>
                <td style="height: 30px">
                    <asp:DropDownList ID="yearReadDiv" runat="server" Height="23px" Width="183px">
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td style="text-align: right; width: 186px">Month</td>
                <td>
                    <asp:DropDownList ID="monthReadDiv" runat="server" Height="23px" Width="181px">
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td style="text-align: right; width: 186px">Day</td>
                <td>
                    <asp:DropDownList ID="dayReadDiv" runat="server" Height="23px" Width="181px">
                    </asp:DropDownList>
                </td>
            </tr>
        </table>
        <asp:Panel ID="Panel3" runat="server" style="position: relative; top: 21px; left: 18px">
            <asp:Label ID="Label2" runat="server" Font-Bold="False" Font-Size="Larger" style="position: relative" Text="~ Read Employee Timesheet ~"></asp:Label>
        </asp:Panel>
        <asp:Panel ID="Panel2" runat="server" style="position: relative; top: 198px; left: 322px; width: 107px; height: 27px">
            <asp:Button ID="readEmpDiv" runat="server" Text="Select" Font-Size="XX-Small" Width="77px" />
        </asp:Panel>
    </asp:Panel>
</asp:Content>