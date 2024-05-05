<%@ Page Title="" Language="C#" MasterPageFile="~/mainmaster.master" AutoEventWireup="true" CodeFile="adminlogin.aspx.cs" Inherits="adminlogin" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<form id="form1" runat="server">
    <table style="width: 100%">
        <tr>
            <td colspan="3" style="font-size: medium">
                <strong>Admin Login:</strong></td>
        </tr>
        <tr>
            <td style="text-align: right; width: 127px">
                User Name:</td>
            <td style="width: 204px">
                <asp:TextBox ID="TextBoxuname" runat="server" Width="180px"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                    ControlToValidate="TextBoxuname" ErrorMessage="Please enter user name." 
                    ForeColor="Red" ValidationGroup="group1"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td style="text-align: right; width: 127px">
                Password:</td>
            <td style="width: 204px">
                <asp:TextBox ID="TextBoxpwd" runat="server" TextMode="Password" Width="180px"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                    ControlToValidate="TextBoxpwd" ErrorMessage="Please enter the password." 
                    ForeColor="Red" ValidationGroup="group1"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td style="width: 127px">
                &nbsp;</td>
            <td style="width: 204px">
                <asp:Button ID="btnlogin" runat="server" onclick="btnlogin_Click" Text="Login" 
                    ValidationGroup="group1" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="btncancel" runat="server" onclick="btncancel_Click" 
                    Text="cancel" ValidationGroup="group2" />
            </td>
            <td>
                <asp:Label ID="Label1" runat="server" ForeColor="#FF3300"></asp:Label>
            </td>
        </tr>
    </table>
    </form>
</asp:Content>

