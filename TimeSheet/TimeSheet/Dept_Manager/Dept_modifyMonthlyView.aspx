<%@ Page Title="" Language="C#" MasterPageFile="~/Dept_Manager/DepatmentManager_main.master" AutoEventWireup="true" CodeBehind="Dept_modifyMonthlyView.aspx.cs" Inherits="TimeSheet.Dept_Manager.Dept_modifyMontlyView" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <aside height: 48px; right: 4px;  0px; position: relative; top: -60px;">
        
        <asp:DropDownList ID="DropDownList1" runat="server" style="position: relative; top: -17px; left: 48px; height: 13px" Width="72px">
        </asp:DropDownList>
        
    </aside>
        <asp:Panel ID="Panel7" runat="server" style="z-index: 1; left: 128px; top: 172px; position: absolute; height: 104px; width: 185px; margin-left: 553px; bottom: 275px;">
            <br />
            <table style="width: 100%">
                <tr>
                    <td>
                        &nbsp;</td>
                </tr>
                <tr>
                    <td>
                        &nbsp;</td>
                </tr>
                <tr>
                    <td>
                        &nbsp;</td>
                </tr>
                <tr>
                    <td>
                        <asp:Button ID="Button1" runat="server" Font-Bold="True" Font-Size="XX-Small" Text="Go to Daily" OnClick="Button1_Click" />
                    </td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>
                        <asp:Button ID="sendMailButton" runat="server" Font-Bold="True" Font-Size="XX-Small" Text="Send Mail" />
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Button ID="ExitButton" runat="server" BackColor="#999966" Font-Bold="True" Font-Size="XX-Small" ForeColor="Red" OnClick="ExitButton_Click" Text="Exit" />
                    </td>
                </tr>
            </table>
            <br />
    </asp:Panel>
        <asp:Panel ID="Panel6" runat="server" style="margin-bottom: 0px; position: relative; top: -129px; left: 193px; height: 65px; width: 158px;">
            <asp:Label ID="Label7" runat="server" Text="Hours: " style="font-family: 'Book Antiqua'; font-weight: bold; font-size: small; color: #3E5667"></asp:Label>
            <asp:Label ID="hoursLabelTotal" runat="server" style="font-family: 'Book Antiqua'; font-weight: bold; font-size: medium; color: #FF0000" Text="Label"></asp:Label>
            <br />
            <asp:Label ID="Label9" runat="server" style="font-family: 'Book Antiqua'; font-weight: bold; font-size: small; color: #3E5667" Text="Extra hours:"></asp:Label>
            &nbsp;<asp:Label ID="extraHoursLabelTotal" runat="server" style="font-family: 'Book Antiqua'; font-weight: bold; font-size: medium; color: #FF0000" Text="Label"></asp:Label>
            <br />
            <asp:Label ID="Label6" runat="server" style="font-family: 'Book Antiqua'; font-weight: bold; font-size: small; color: #3E5667" Text="Status:"></asp:Label>
            <asp:Label ID="statusLabel" runat="server" CssClass="error" style="font-family: 'Book Antiqua'; font-weight: bold; font-size: medium; font-style: normal;" Text="Label"></asp:Label>
    </asp:Panel>
        <asp:Panel ID="Panel5" runat="server" style="position: relative; top: -202px; left: -1px; height: 79px; width: 178px;">
            <asp:Label ID="Label1" runat="server" Text="Year:" style="font-family: 'Book Antiqua'; font-weight: bold; font-size: small; color: #3E5667"></asp:Label>
            <asp:Label ID="yearLabel" runat="server" CssClass="error" style="font-family: 'Book Antiqua'; font-weight: bold; font-size: medium; font-style: italic; color: #E80C4D;" Text="Label"></asp:Label>
            <br />
            <asp:Label ID="Label3" runat="server" style="font-family: 'Book Antiqua'; font-weight: bold; font-size: small; color: #3E5667" Text="Month:"></asp:Label>
            <asp:Label ID="monthLabel" runat="server" CssClass="error" style="font-family: 'Book Antiqua'; font-weight: bold; font-size: medium; font-style: italic; color: #E80C4D;" Text="Label"></asp:Label>
            <br />
            <asp:Label ID="Label11" runat="server" Font-Bold="True" Font-Names="Book Antiqua" style="color: #3E5667; font-size: small" Text="Day:"></asp:Label>
            <br />
            <br />
            <br />
            <br />
        </asp:Panel>

        <asp:Panel ID="PanelTabell" runat="server" style="position: relative; top: -170px; left: 10px; height: 671px; width: 526px; margin-bottom: 79px;">
            <table style="width: 100%">
                <tr>
                    <td style="font-family: 'Book Antiqua'; font-weight: bold; font-size: medium; color: #339933; text-align: center; width: 159px; height: 23px;">Date</td>
                    <td style="font-family: 'Book Antiqua'; font-size: medium; text-align: center; width: 258px; height: 23px;"><span style="color: #339933"><b>Activity</b></span></span></td>
                </tr>
                <tr>
                    <td style="text-align: center; width: 159px; height: 25px">
                        <asp:TextBox ID="dateTextBox1" runat="server"></asp:TextBox>
                    </td>
                    <td style="width: 258px; text-align: center; height: 25px">
                        <asp:TextBox ID="activityTextBox1" runat="server" Width="239px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td style="text-align: center; width: 159px; height: 25px">
                        <asp:TextBox ID="dateTextBox2" runat="server"></asp:TextBox>
                    </td>
                    <td style="width: 258px; text-align: center; height: 25px">
                        <asp:TextBox ID="activityTextBox2" runat="server" Width="239px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td style="text-align: center; width: 159px; height: 25px">
                        <asp:TextBox ID="dateTextBox3" runat="server"></asp:TextBox>
                    </td>
                    <td style="width: 258px; text-align: center; height: 25px">
                        <asp:TextBox ID="activityTextBox3" runat="server" Width="239px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td style="text-align: center; width: 159px; height: 25px">
                        <asp:TextBox ID="dateTextBox4" runat="server"></asp:TextBox>
                    </td>
                    <td style="width: 258px; text-align: center; height: 25px">
                        <asp:TextBox ID="activityTextBox4" runat="server" Width="239px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td style="text-align: center; width: 159px; height: 25px">
                        <asp:TextBox ID="dateTextBox5" runat="server"></asp:TextBox>
                    </td>
                    <td style="width: 258px; text-align: center; height: 25px">
                        <asp:TextBox ID="activityTextBox5" runat="server" Width="239px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td style="text-align: center; width: 159px; height: 25px">
                        <asp:TextBox ID="dateTextBox6" runat="server"></asp:TextBox>
                    </td>
                    <td style="width: 258px; text-align: center; height: 25px">
                        <asp:TextBox ID="activityTextBox6" runat="server" Width="239px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td style="text-align: center; width: 159px; height: 25px">
                        <asp:TextBox ID="dateTextBox7" runat="server"></asp:TextBox>
                    </td>
                    <td style="width: 258px; text-align: center; height: 25px">
                        <asp:TextBox ID="activityTextBox7" runat="server" Width="239px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td style="text-align: center; width: 159px; height: 25px">
                        <asp:TextBox ID="dateTextBox8" runat="server"></asp:TextBox>
                    </td>
                    <td style="width: 258px; text-align: center; height: 25px">
                        <asp:TextBox ID="activityTextBox8" runat="server" Width="239px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td style="text-align: center; width: 159px; height: 25px">
                        &nbsp;</td>
                    <td style="width: 258px; text-align: center; height: 25px">
                        &nbsp;</td>
                </tr>
                <tr>
                    <td style="text-align: center; width: 159px; height: 25px">
                        &nbsp;</td>
                    <td style="width: 258px; text-align: center; height: 25px">
                        &nbsp;</td>
                </tr>
                <tr>
                    <td style="text-align: center; width: 159px; height: 25px">
                        &nbsp;</td>
                    <td style="width: 258px; text-align: center; height: 25px">
                        &nbsp;</td>
                </tr>
                <tr>
                    <td style="padding: 1px; text-align: right; width: 159px; height: 25px; font-family: 'Book Antiqua'; font-size: small; color: #3E5667; border-left-color: #A0A0A0; border-right-color: #C0C0C0; border-top-color: #A0A0A0; border-bottom-color: #C0C0C0;">
                        <b>Add-on:</b></td>
                    <td style="width: 258px; text-align: center; height: 25px">
                        <asp:TextBox ID="TextBox1" runat="server" Height="168px" Width="228px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td style="text-align: center; width: 159px; height: 25px">
                        &nbsp;</td>
                    <td style="width: 258px; text-align: center; height: 25px">
                        &nbsp;</td>
                </tr>
                <tr>
                    <td style="text-align: center; width: 159px; height: 25px">
                        &nbsp;</td>
                    <td style="width: 258px; text-align: center; height: 25px">
                        &nbsp;</td>
                </tr>
                <tr>
                    <td style="text-align: center; width: 159px; height: 25px">
                        &nbsp;</td>
                    <td style="width: 258px; text-align: center; height: 25px">
                        &nbsp;</td>
                </tr>
                <tr>
                    <td style="text-align: center; width: 159px; height: 25px">
                        &nbsp;</td>
                    <td style="width: 258px; text-align: center; height: 25px">
                        &nbsp;</td>
                </tr>
                <tr>
                    <td style="text-align: center; width: 159px; height: 25px">
                        &nbsp;</td>
                    <td style="width: 258px; text-align: center; height: 25px">
                        &nbsp;</td>
                </tr>
                <tr>
                    <td style="text-align: center; width: 159px; height: 25px">
                        &nbsp;</td>
                    <td style="width: 258px; text-align: center; height: 25px">
                        &nbsp;</td>
                </tr>
                <tr>
                    <td style="text-align: center; width: 159px; height: 25px">
                        &nbsp;</td>
                    <td style="width: 258px; text-align: center; height: 25px" Enabled="false">
                        &nbsp;</td>
                </tr>
            </table>       
            </asp:Table>
        </asp:Panel>
</asp:Content>

