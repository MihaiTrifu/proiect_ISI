<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="NewTimesheet.aspx.cs" Inherits="TimeSheet.Dept_Manager.Dept_newTimesheet" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
    <style type="text/css">
        .auto-style1
        {
            width: 102%;
            height: 81px;
        }
        .auto-style4
        {
            width: 738px;
            height: 189px;
            margin-right: 0px;
            z-index: 1;
            left: 32px;
            top: 35px;
            position: absolute;
            background-color: #C0C0C0;
        }
        .auto-style25
        {
            text-align: center;
            font-family: "Segoe UI";
            color: #003366;
        }
        .auto-style28
        {
            font-family: "Segoe UI";
            font-size: x-small;
        }
        .auto-style29
        {
            font-weight: bold;
            font-family: "Times New Roman";
            font-size: x-large;
        }
        .auto-style31
        {
            height: 24px;
            width: 85px;
        }
        .auto-style33
        {
            width: 45px;
            height: 24px;
            text-align: left;
        }
        .auto-style34
        {
            font-weight: bold;
            font-family: "Times New Roman";
            font-size: x-large;
            width: 397px;
        }
        .auto-style36
        {
            width: 397px;
            height: 24px;
            text-align: left;
        }
        .auto-style37
        {
            text-align: center;
            font-weight: bold;
            font-family: "Times New Roman";
            font-size: x-large;
            width: 45px;
        }
        .auto-style44
        {
            text-align: center;
            width: 179px;
            height: 30px;
            font-family: "Segoe UI";
            color: #003366;
        }
        .auto-style45
        {
            height: 30px;
        }
        .auto-style46
        {
            height: 30px;
            width: 180px;
        }
        .auto-style47
        {
            width: 180px;
        }
        .auto-style48
        {
            height: 30px;
            width: 263px;
        }
        .auto-style55
        {
            font-weight: bold;
        }
        .auto-style56
        {
            width: 96%;
            height: 79px;
        }
        .auto-style70
        {
            text-align: right;
            width: 190px;
            font-family: "Segoe UI Semibold";
        }
        .auto-style72
        {
            width: 24px;
        }
        .auto-style74
        {
            width: 119px;
        }
        .auto-style75
        {
            width: 171px;
            font-family: "Segoe UI Semibold";
            text-align: right;
        }
        .auto-style78
        {
            font-family: "Segoe UI Semibold";
        }
        .auto-style79
        {
            width: 171px;
            font-family: "Segoe UI Semibold";
            height: 34px;
            text-align: right;
        }
        .auto-style80
        {
            width: 24px;
            height: 34px;
        }
        .auto-style81
        {
            text-align: right;
            width: 190px;
            height: 34px;
            font-family: "Segoe UI Semibold";
        }
        .auto-style82
        {
            width: 119px;
            height: 34px;
        }
        .auto-style88
        {
            height: 23px;
            width: 85px;
        }
        .auto-style92
        {
            width: 45px;
            height: 23px;
            text-align: left;
        }
        .auto-style93
        {
            width: 263px;
            text-align: right;
            font-family: "Segoe UI";
            font-weight: bold;
            font-size: medium;
            color: #003366;
        }
        .auto-style94
        {
            width: 397px;
            height: 23px;
            text-align: left;
        }
        .auto-style95
        {
            height: 23px;
            width: 83px;
        }
        .auto-style96
        {
            height: 24px;
            width: 83px;
        }
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="FeaturedContent" runat="server">
      <section class="featured">
                  <div class="content-wrapper">
      <asp:Panel ID="Panel2" runat="server" ForeColor="#3399FF" style="position: relative; top: -27px; left: 3px">
        <table class="auto-style1">
            <tr>
                <td style="font-size: medium; font-weight: 700;" class="auto-style44">Year</td>
                <td class="auto-style46">
                    <asp:Label ID="yearLabel" runat="server" Text="Label" style="color: #003366; font-family: 'Segoe UI'"></asp:Label>
                </td>
                <td class="auto-style48"></td>
                <td class="auto-style45"></td>
            </tr>
            <tr>
                <td style="width: 179px; font-size: medium; font-weight: 700;" class="auto-style25">Month</td>
                <td class="auto-style47">
                    <asp:DropDownList ID="monthDropList" runat="server" Height="16px" Width="144px">
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
                <td class="auto-style93">Status</td>
                <td>
                    <asp:Label ID="statusLabel" runat="server" Text="Label" style="color: #003366; font-family: 'Segoe UI'"></asp:Label>
                </td>
            </tr>
            <tr>
                <td style="width: 179px; font-size: medium; font-weight: 700;" class="auto-style25">Day</td>
                <td class="auto-style47">
                    <asp:DropDownList ID="dayDropList" runat="server" Height="16px" Width="143px">
                    </asp:DropDownList>
                </td>
                <td class="auto-style93">M<span id="result_box" class="short_text" lang="en"><span class="auto-style55">onthly</span><b> V</b><span class="auto-style55">iew</span></span></td>
                <td>
                    <asp:Button ID="montlyVis" runat="server" Text="Ok" Width="37px" />
                </td>
            </tr>
        </table>
    </asp:Panel>
                              </div>
              </section>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="MainContent" runat="server">
    <asp:Panel ID="Panel1" runat="server" Height="437px" Width="1055px">
        <asp:Panel ID="Panel3" runat="server" style="text-align: center; position: relative; top: 75px; left: -46px; width: 797px; height: 340px;">
            <table ID="activityTable" class="auto-style4" align="center" title="table1">
                <tr class="auto-style28">
                    <td class="auto-style29" colspan="2">&nbsp;Time Slot</td>
                    <td class="auto-style34">Activity </td>
                    <td class="auto-style37">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style95">
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
                    <td class="auto-style88">
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
                    <td class="auto-style92">
                        <asp:Button ID="deleteRow1" runat="server" Font-Bold="True" ForeColor="Red" Text="X" OnClick="deleteRow1_Click" Width="26px" />
                    </td>
                </tr>
                <tr>
                    <td class="auto-style95">
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
                    <td class="auto-style88">
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
                    <td class="auto-style92">
                        <asp:Button ID="deleteRow2" runat="server" Font-Bold="True" ForeColor="Red" Text="X" Width="26px" />
                    </td>
                </tr>
                <tr>
                    <td class="auto-style95">
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
                    <td class="auto-style88">
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
                    <td class="auto-style92">
                        <asp:Button ID="deleteRow3" runat="server" Font-Bold="True" ForeColor="Red" Text="X" Width="24px" />
                    </td>
                </tr>
                <tr>
                    <td class="auto-style96">
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
                    <td class="auto-style31">
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
                    <td class="auto-style33">
                        <asp:Button ID="deleteRow4" runat="server" Font-Bold="True" ForeColor="Red" Text="X" Width="25px" />
                    </td>
                </tr>
            </table>
        </asp:Panel>
        <asp:Panel ID="Panel5" runat="server" style="position: relative; top: -326px; left: 5px; width: 570px; height: 88px">
            <table class="auto-style56">
                <tr>
                    <td class="auto-style79"><span class="auto-style78">No of worked hours:</span></td>
                    <td class="auto-style80">
                        <asp:Label ID="noExtraLabel" runat="server" Text="Label"></asp:Label>
                    </td>
                    <td class="auto-style81">
                        Add Activity:</span></td>
                    <td class="auto-style82">
                        <asp:Button ID="addActivity" runat="server" Text="ok" OnClick="addActivity_Click" Height="27px" Width="38px" />
                    </td>
                </tr>
                <tr>
                    <td class="auto-style75"><span class="auto-style78">No of extra hours:</span></td>
                    <td class="auto-style72">
                        <asp:Label ID="noWorkedLabel" runat="server" Text="Label"></asp:Label>
                    </td>
                    <td class="auto-style70">
                        Add Extra Activity:</span></td>
                    <td class="auto-style74">
                        <asp:Button ID="addExtraActivity" runat="server" Text="ok" Height="23px" Width="39px" />
                    </td>
                </tr>
            </table>
        </asp:Panel>
        <asp:Panel ID="Panel6" runat="server" style="position: absolute; top: 313px; left: 935px; width: 117px; height: 422px; z-index: 1">
            <asp:Button ID="copyButton" runat="server" Text="Copy TS" Font-Size="X-Small" Width="94px" />
            <asp:Button ID="pasteButton" runat="server" Text="Paste TS" Font-Size="XX-Small" Width="96px" />
            <asp:Button ID="deleteButton" runat="server" Text="Delete TS" Font-Size="XX-Small" Width="97px" />
            <asp:Button ID="saveButton" runat="server" Text="Save TS" Font-Size="XX-Small" Width="96px" />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <asp:Button ID="exitButton" runat="server" Text="Exit TS" Font-Size="XX-Small" Width="95px" />
            <br />
        </asp:Panel>
    </asp:Panel>
</asp:Content>
