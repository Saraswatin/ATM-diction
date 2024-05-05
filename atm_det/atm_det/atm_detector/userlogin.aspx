<%@ Page Title="" Language="C#" MasterPageFile="~/mainmaster.master" AutoEventWireup="true" CodeFile="userlogin.aspx.cs" Inherits="userlogin" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<form id="form1" runat="server">
    <table style="width: 100%">
        <tr>
            <td colspan="3" style="font-size: medium">
                <strong>Login:</strong></td>
        </tr>
        <tr>
            <td style="width: 101px">
                User Name:</td>
            <td style="width: 200px">
                <asp:TextBox ID="tbuname" runat="server" Width="180px"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                    ControlToValidate="tbuname" ErrorMessage="Please enter user name."></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td style="width: 101px">
                Password:</td>
            <td style="width: 200px">
                <asp:TextBox ID="tbpwd" runat="server" TextMode="Password" Width="180px"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                    ControlToValidate="tbpwd" ErrorMessage="Please enter password."></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td style="width: 101px">
                &nbsp;</td>
            <td style="width: 200px">
                <asp:Button ID="btnlogin" runat="server" onclick="btnlogin_Click" 
                    Text="Login" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="btncancel" runat="server" onclick="btncancel_Click" 
                    Text="Cancel" />
            </td>
            <td>
                <asp:Label ID="Label1" runat="server"></asp:Label>
            &nbsp;<asp:HyperLink ID="HyperLink1" runat="server" 
                    NavigateUrl="~/user_details1.aspx">Register</asp:HyperLink>
            </td>
        </tr>
    </table>
    </form>
</asp:Content>

