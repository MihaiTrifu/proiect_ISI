<%@ Page Title="" Language="C#" MasterPageFile="~/Dept_Manager/DepatmentManager_main.master" AutoEventWireup="true" CodeBehind="Dept_reportTip1Generate.aspx.cs" Inherits="TimeSheet.Dept_Manager.Dept_reportTip1Generate" %>

<%@ Register assembly="Microsoft.ReportViewer.WebForms, Version=11.0.0.0, Culture=neutral, PublicKeyToken=89845dcd8080cc91" namespace="Microsoft.Reporting.WebForms" tagprefix="rsweb" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <asp:Panel ID="Panel1" runat="server" Height="417px">
        <rsweb:ReportViewer ID="reportTip1Dept" runat="server" PromptAreaCollapsed="True" Width="967px">
        </rsweb:ReportViewer>
    </asp:Panel>
</asp:Content>
