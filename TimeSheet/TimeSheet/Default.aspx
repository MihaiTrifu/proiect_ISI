<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="TimeSheet._Default" %>

<asp:Content runat="server" ID="FeaturedContent" ContentPlaceHolderID="FeaturedContent">
    <section class="featured">
        <div class="content-wrapper">
            <hgroup class="title">
                <h1 class="auto-style1">Use your account to access the application. If you don&#39;t have one, notify the administrator.<%: Title %></h1>
            </hgroup>
        </div>
    </section>
</asp:Content>
<asp:Content runat="server" ID="BodyContent" ContentPlaceHolderID="MainContent">
    <p style="font-family: 'Segoe UI'">
        <asp:Login ID="Login1" runat="server" BackColor="#EFF3FB" BorderColor="#B5C7DE" BorderPadding="4" BorderStyle="Solid" BorderWidth="1px" CreateUserText="admin" DisplayRememberMe="False" EnableTheming="False" Font-Names="Verdana" Font-Size="0.8em" ForeColor="#333333" OnAuthenticate="Login1_Authenticate" PasswordRecoveryText="isi">
            <InstructionTextStyle Font-Italic="True" ForeColor="Black" />
            <LoginButtonStyle BackColor="White" BorderColor="#507CD1" BorderStyle="Solid" BorderWidth="1px" Font-Names="Verdana" Font-Size="0.8em" ForeColor="#284E98" />
            <TextBoxStyle Font-Size="0.8em" />
            <TitleTextStyle BackColor="#507CD1" Font-Bold="True" Font-Size="0.9em" ForeColor="White" />
        </asp:Login>
    </p>
    <p>&nbsp;</p>
    </asp:Content>
<asp:Content ID="Content1" runat="server" contentplaceholderid="HeadContent">
    <style type="text/css">
        .auto-style1
        {
            font-family: "Segoe UI";
            font-size: large;
        }
    </style>
</asp:Content>

