<%@ Page Title="" Language="C#" MasterPageFile="~/Dept_Manager/DepatmentManager_main.master" AutoEventWireup="true" CodeBehind="Dept_aproveTimesheet.aspx.cs" Inherits="TimeSheet.Dept_Manager.Dept_aproveTimesheet" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
<asp:Panel ID="Panel2" runat="server" ForeColor="#3399FF" style="position: relative; top: -27px; left: 3px">
        <table class="auto-style1">
            <tr>
                <td style="font-size: medium; font-weight: 700;" class="auto-style44">Year</td>
                <td class="auto-style46" style="width: 163px">
                    <asp:Label ID="yearLabel" runat="server" Text="Label" style="color: #003366; font-family: 'Segoe UI'"></asp:Label>
                </td>
                <td class="auto-style48" style="width: 107px"></td>
                <td class="auto-style45" style="width: 91px"></td>
            </tr>
            <tr>
                <td style="width: 179px; font-size: medium; font-weight: 700;" class="auto-style25">Month</td>
                <td class="auto-style47" style="width: 163px">
                    <asp:DropDownList ID="monthDropList" runat="server" Height="16px" Width="142px">
                        <asp:ListItem>Jan</asp:ListItem>
                        <asp:ListItem>Feb</asp:ListItem>
                        <asp:ListItem>Mar</asp:ListItem>
                        <asp:ListItem>Apr</asp:ListItem>
                        <asp:ListItem>May</asp:ListItem>
                        <asp:ListItem>Jun</asp:ListItem>
                        <asp:ListItem>Jul</asp:ListItem>
                        <asp:ListItem>Aug</asp:ListItem>
                        <asp:ListItem>Sep</asp:ListItem>
                        <asp:ListItem>Oct</asp:ListItem>
                        <asp:ListItem>Nov</asp:ListItem>
                        <asp:ListItem>Dec </asp:ListItem>
                    </asp:DropDownList>
                </td>
                <td class="auto-style93" style="font-family: 'Segoe UI'; font-weight: bold; font-size: medium; width: 107px">Status</td>
                <td style="width: 91px">
                    <asp:Label ID="statusLabel" runat="server" Text="Label" style="color: #003366; font-family: 'Segoe UI'"></asp:Label>
                </td>
            </tr>
            <tr>
                <td style="width: 179px; font-size: medium; font-weight: 700;" class="auto-style25">Day</td>
                <td class="auto-style47" style="width: 163px">
                    <asp:DropDownList ID="dayDropList" runat="server" Height="16px" Width="143px">
                    </asp:DropDownList>
                </td>
                <td class="auto-style93" style="width: 107px">&nbsp;</td>
                <td style="width: 91px">
                    &nbsp;</td>
            </tr>
        </table>
    </asp:Panel>

    <table ID="fullActivityTableDept" class="auto-style4" align="center" title="table1">
                <tr class="auto-style28" style="font-family: 'Segoe UI'; font-size: medium; color: #7AC0DA">
                    <td class="auto-style29" style="font-weight: bold; text-align: center; color: #3399FF; height: 23px">Date</td>
                    <td class="auto-style29" colspan="2" style="font-weight: bold; text-align: center; color: #3399FF; height: 23px">&nbsp;Time Slot</td>
                    <td class="auto-style34" style="font-weight: bold; text-align: center; color: #3399FF; height: 23px">Activity </td>
                </tr>
                <tr>
                    <td class="auto-style95">
                        <asp:TextBox ID="TextBox1" runat="server" Height="19px" Width="113px">ZZ.MM.YYYY</asp:TextBox>
                    </td>
                    <td class="auto-style95" style="width: 58px">
                        <asp:DropDownList ID="timeslot11" runat="server">
                            <asp:ListItem Value="0">-</asp:ListItem>
                            <asp:ListItem>8</asp:ListItem>
                            <asp:ListItem>9</asp:ListItem>
                            <asp:ListItem>10</asp:ListItem>
                            <asp:ListItem>11</asp:ListItem>
                            <asp:ListItem>12</asp:ListItem>
                            <asp:ListItem>13</asp:ListItem>
                            <asp:ListItem>14</asp:ListItem>
                            <asp:ListItem>15</asp:ListItem>
                            <asp:ListItem>16</asp:ListItem>
                        </asp:DropDownList>
                    </td>
                    <td class="auto-style88" style="width: 57px">
                        <asp:DropDownList ID="timeslot12" runat="server">
                            <asp:ListItem Value="0">-</asp:ListItem>
                            <asp:ListItem>8</asp:ListItem>
                            <asp:ListItem>9</asp:ListItem>
                            <asp:ListItem>10</asp:ListItem>
                            <asp:ListItem>11</asp:ListItem>
                            <asp:ListItem>12</asp:ListItem>
                            <asp:ListItem>13</asp:ListItem>
                            <asp:ListItem>14</asp:ListItem>
                            <asp:ListItem>15</asp:ListItem>
                            <asp:ListItem>16</asp:ListItem>
                        </asp:DropDownList>
                    </td>
                    <td class="auto-style94">
                        <asp:DropDownList ID="activity1" runat="server" Height="25px" Width="406px">
                        </asp:DropDownList>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style95">
                        <asp:TextBox ID="TextBox2" runat="server" Height="19px" Width="113px">ZZ.MM.YYYY</asp:TextBox>
                    </td>
                    <td class="auto-style95" style="width: 58px">
                        <asp:DropDownList ID="timeslot21" runat="server">
                            <asp:ListItem Value="0">-</asp:ListItem>
                            <asp:ListItem>8</asp:ListItem>
                            <asp:ListItem>9</asp:ListItem>
                            <asp:ListItem>10</asp:ListItem>
                            <asp:ListItem>11</asp:ListItem>
                            <asp:ListItem>12</asp:ListItem>
                            <asp:ListItem>13</asp:ListItem>
                            <asp:ListItem>14</asp:ListItem>
                            <asp:ListItem>15</asp:ListItem>
                            <asp:ListItem>16</asp:ListItem>
                        </asp:DropDownList>
                    </td>
                    <td class="auto-style88" style="width: 57px">
                        <asp:DropDownList ID="timeslot22" runat="server">
                            <asp:ListItem Value="0">-</asp:ListItem>
                            <asp:ListItem>8</asp:ListItem>
                            <asp:ListItem>9</asp:ListItem>
                            <asp:ListItem>10</asp:ListItem>
                            <asp:ListItem>11</asp:ListItem>
                            <asp:ListItem>12</asp:ListItem>
                            <asp:ListItem>13</asp:ListItem>
                            <asp:ListItem>14</asp:ListItem>
                            <asp:ListItem>15</asp:ListItem>
                            <asp:ListItem>16</asp:ListItem>
                        </asp:DropDownList>
                    </td>
                    <td class="auto-style94">
                        <asp:DropDownList ID="activity2" runat="server" Height="25px" Width="405px">
                        </asp:DropDownList>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style95">
                        <asp:TextBox ID="TextBox3" runat="server" Height="19px" Width="113px">ZZ.MM.YYYY</asp:TextBox>
                    </td>
                    <td class="auto-style95" style="width: 58px">
                        <asp:DropDownList ID="timeslot31" runat="server">
                            <asp:ListItem Value="0">-</asp:ListItem>
                            <asp:ListItem>8</asp:ListItem>
                            <asp:ListItem>9</asp:ListItem>
                            <asp:ListItem>10</asp:ListItem>
                            <asp:ListItem>11</asp:ListItem>
                            <asp:ListItem>12</asp:ListItem>
                            <asp:ListItem>13</asp:ListItem>
                            <asp:ListItem>14</asp:ListItem>
                            <asp:ListItem>15</asp:ListItem>
                            <asp:ListItem>16</asp:ListItem>
                        </asp:DropDownList>
                    </td>
                    <td class="auto-style88" style="width: 57px">
                        <asp:DropDownList ID="timeslot32" runat="server">
                            <asp:ListItem Value="0">-</asp:ListItem>
                            <asp:ListItem>8</asp:ListItem>
                            <asp:ListItem>9</asp:ListItem>
                            <asp:ListItem>10</asp:ListItem>
                            <asp:ListItem>11</asp:ListItem>
                            <asp:ListItem>12</asp:ListItem>
                            <asp:ListItem>13</asp:ListItem>
                            <asp:ListItem>14</asp:ListItem>
                            <asp:ListItem>15</asp:ListItem>
                            <asp:ListItem>16</asp:ListItem>
                        </asp:DropDownList>
                    </td>
                    <td class="auto-style94">
                        <asp:DropDownList ID="activity3" runat="server" Height="25px" Width="404px">
                        </asp:DropDownList>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style96">
                        <asp:TextBox ID="TextBox4" runat="server" Height="19px" Width="113px">ZZ.MM.YYYY</asp:TextBox>
                    </td>
                    <td class="auto-style96" style="width: 58px">
                        <asp:DropDownList ID="timeslot41" runat="server">
                            <asp:ListItem Value="0">-</asp:ListItem>
                            <asp:ListItem>8</asp:ListItem>
                            <asp:ListItem>9</asp:ListItem>
                            <asp:ListItem>10</asp:ListItem>
                            <asp:ListItem>11</asp:ListItem>
                            <asp:ListItem>12</asp:ListItem>
                            <asp:ListItem>13</asp:ListItem>
                            <asp:ListItem>14</asp:ListItem>
                            <asp:ListItem>15</asp:ListItem>
                            <asp:ListItem>16</asp:ListItem>
                        </asp:DropDownList>
                    </td>
                    <td class="auto-style31" style="width: 57px">
                        <asp:DropDownList ID="timeslot42" runat="server">
                            <asp:ListItem Value="0">-</asp:ListItem>
                            <asp:ListItem>8</asp:ListItem>
                            <asp:ListItem>9</asp:ListItem>
                            <asp:ListItem>10</asp:ListItem>
                            <asp:ListItem>11</asp:ListItem>
                            <asp:ListItem>12</asp:ListItem>
                            <asp:ListItem>13</asp:ListItem>
                            <asp:ListItem>14</asp:ListItem>
                            <asp:ListItem>15</asp:ListItem>
                            <asp:ListItem>16</asp:ListItem>
                        </asp:DropDownList>
                    </td>
                    <td class="auto-style36">
                        <asp:DropDownList ID="activity4" runat="server" Height="24px" Width="403px">
                        </asp:DropDownList>
                    </td>
                </tr>
            </table>

</asp:Content>
