﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Div_Manager/DivisionManager_main.master" AutoEventWireup="true" CodeBehind="Div_copyTimesheet.aspx.cs" Inherits="TimeSheet.Div_Manager.Div_copyTimesheet" %>

<asp:Content runat="server" ID="Content3" ContentPlaceHolderID="MainContent" >
        <hgroup class="title">
        <h1>
            <br />
            <span style="font-family: Andalus; color: #3E5667; display: inline">~ Copy timesheet<br />
            <br />
            <br />
            <br />
            </span></h1>
        </hgroup>

    <aside height: 48px; right: 4px;  0px; position: relative; top: -60px;">
        <ul style="text-align: right">
            <span style="font-family: 'Segoe UI'; font-size: large"><b>
            <li1><a id="A2009" runat="server" href="Div_addTimesheet.aspx" style="color: #7AC0DA">Add</a></li1></b> <b>
            <li2><a id="A2010" runat="server" href="Div_modifyTimesheet.aspx" style="color: #7AC0DA">Modify</a></li2></b> <b>
            <li3><a id="A2011" runat="server" href="Div_readTimesheet.aspx" style="color: #7AC0DA">Read</a></li3></b> <b>
           <li4><a id="A2012" runat="server" href="Div_copyTimesheet.aspx" style="color: #7AC0DA">Copy</a></li4></b> <b>
        </ul>
    </aside>
       <asp:Panel ID="Panel4" runat="server" Height="398px" Width="559px">
        <table align="left" style="width: 99%; float: left; font-family: Verdana; margin-right: 0px; height: 230px;">
            <tr>
                <td style="width: 92px; font-size: medium; font-weight: bold; font-family: 'Book Antiqua'; color: #3E5667; height: 40px;">&nbsp;</td>
                <td style="padding: 1px; height: 40px; font-size: medium; color: #3E5667; font-family: 'Book Antiqua'; border-left-color: #A0A0A0; border-right-color: #C0C0C0; border-top-color: #A0A0A0; border-bottom-color: #C0C0C0;">
                    <b>Select timesheet to copy:</b></td>
            </tr>
            <tr>
                <td style="width: 92px; font-size: small; font-weight: bold; font-family: 'Book Antiqua'; color: #3E5667; height: 40px; text-align: left;">Year<b>:</b></td>
                <td style="height: 40px"><span style="font-family: 'Segoe UI'; font-size: large">
                    <asp:DropDownList ID="yearCopyDiv" runat="server" Height="19px" style="margin-left: 3px" ViewStateMode="Enabled" Width="287px">
                    </asp:DropDownList>
                    </span></td>
            </tr>
            </span><span style="font-family: 'Segoe UI'; font-size: large">
                <tr>
                    <td style="width: 92px; font-size: small; font-weight: bold; font-family: 'Book Antiqua'; color: #3E5667; height: 40px; text-align: left;">Month:</td>
                    <td style="height: 40px"><span style="font-family: 'Segoe UI'; font-size: large">
                        <asp:DropDownList ID="monthCopyDiv" runat="server" Height="19px" Style="margin-left: 3px" ViewStateMode="Enabled" Width="287px">
                        </asp:DropDownList>
                    </span></td>
                </tr>
            <tr>
                <td style="width: 92px; font-family: 'Book Antiqua'; color: #3E5667; font-weight: bold; font-size: small; text-align: left;">&nbsp;&nbsp; Day<span style="border-width: 0; padding-right: 2em">:</span></td>
                <td>
                    <asp:DropDownList ID="dayCopyDiv" runat="server" Height="19px" style="margin-left: 3px" ViewStateMode="Enabled" Width="287px">
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td style="width: 92px; font-family: 'Book Antiqua'; color: #3E5667; font-weight: bold; font-size: small; text-align: right;">&nbsp;</td>
                <td style="padding: 1px; height: 40px; font-size: medium; color: #3E5667; font-family: 'Book Antiqua'; border-left-color: #A0A0A0; border-right-color: #C0C0C0; border-top-color: #A0A0A0; border-bottom-color: #C0C0C0;"><b>Select where to paste the timesheet:</b></td>
            </tr>
            <tr>
                <td style="width: 92px; font-size: small; font-weight: bold; font-family: 'Book Antiqua'; color: #3E5667; height: 40px; text-align: left;">Year<b>:</b>
                <td style="height: 40px">
            <asp:DropDownList ID="yearPasteDiv" runat="server" Height="19px" style="margin-left: 3px" ViewStateMode="Enabled" Width="287px">
            </asp:DropDownList>
            </span></td>
            </tr>
            <tr>
                <td style="width: 92px; font-size: small; font-weight: bold; font-family: 'Book Antiqua'; color: #3E5667; height: 40px; text-align: left;">Month:</td>
                <td style="height: 40px"><span style="font-family: 'Segoe UI'; font-size: large">
                    <asp:DropDownList ID="monthPasteDiv" runat="server" Height="19px" Style="margin-left: 3px" ViewStateMode="Enabled" Width="287px">
                    </asp:DropDownList>
                    </span></td>
            </tr>
            <tr>
                <td style="width: 92px; font-family: 'Book Antiqua'; color: #3E5667; font-weight: bold; font-size: small; text-align: left;">Day<span style="border-width: 0; padding-right: 2em">:&nbsp;</span></td>
                <td>
                    <asp:DropDownList ID="dayPasteDiv" runat="server" Height="19px" style="margin-left: 3px" ViewStateMode="Enabled" Width="287px">
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td style="width: 92px">&nbsp;</td>
                <td>
                    <p style="text-align: right">
                        <asp:Button ID="copyTsDiv" runat="server" Font-Size="XX-Small" Text="Copy" />
                    </p>
                </td>
            </tr>
            </span>
        </table>
       </asp:Panel>
    </b>
    </span>
</asp:Content>
