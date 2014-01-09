<%@ Page Title="" Language="C#" MasterPageFile="~/Dept_Manager/DepatmentManager_main.master" AutoEventWireup="true" CodeBehind="Dept_deleteEmp.aspx.cs" Inherits="TimeSheet.Dept_Manager.Dept_deleteEmp" %>

<asp:Content runat="server" ID="Content3" ContentPlaceHolderID="MainContent" >
    <asp:Panel ID="Panel1" runat="server" Height="276px">
       <asp:Label ID="Label1" runat="server" Font-Bold="False" Font-Size="Larger" Text="~ Add/Delete an Employee ~"></asp:Label>
        <aside style="z-index: 1; height: 103px; right: 37px; margin-right: 0px">
            <ul>
                <li><a id="A541" runat="server" href="">Add/Delete an employee</a>
                </li>
                <li><a id="A544" runat="server" href="">Assigning Project Project</a></li>
            </ul>
        </aside>
        
         <asp:Panel ID="Panel2"  ScrollBars="Vertical" runat="server" Height="140px" style="margin-left: 47px; margin-top: 39px" Width="276px">
             <asp:CheckBoxList  ID="CheckBoxList1" BackColor="#999999" BorderColor="Yellow" CssClass="inline" runat="server" Width="259px">
             </asp:CheckBoxList>
         </asp:Panel>
        <asp:Button ID="Button1" runat="server" Text="Add Emp" OnClick="addEmp" />
        <asp:Button ID="Button2" runat="server" Text="Remove Emp" OnClick="removeEmp" />
    </asp:Panel>
</asp:Content>