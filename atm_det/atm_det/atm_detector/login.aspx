<%@ Page Language="C#" AutoEventWireup="true" CodeFile="login.aspx.cs" Inherits="login" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .style1
        {
            width: 100%;
        }
        .style2
        {            text-align: left;
        }
        .style3
        {
            width: 225px;
            text-align: right;
        }
        .style4
        {
            width: 225px;
            text-align: right;
            font-weight: bold;
            font-size: large;
            color: #0000FF;
        }
        .style5
        {
            font-size: large;
            font-weight: bold;
            color: #0000FF;
        }
        .style6
        {
            font-size: large;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <table class="style1">
        <tr>
            <td class="style2" colspan="2" 
                
                
                style="font-weight: 700; font-size: large; color: #FF0066; text-decoration: underline;">
                LOGIN</td>
        </tr>
        <tr>
            <td class="style4">
                USER NAME:</td>
            <td>
                <asp:TextBox ID="user_name" runat="server" CssClass="style5"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                    ControlToValidate="user_name" CssClass="style6" 
                    ErrorMessage="This field is empty" ForeColor="Red"></asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
                    ControlToValidate="user_name" CssClass="style6" ErrorMessage="Invalid Nmae" 
                    ForeColor="Red" ValidationExpression="[A-Za-z ]*$"></asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
            <td class="style4">
                PASSWORD:</td>
            <td>
                <asp:TextBox ID="password" runat="server" CssClass="style5"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                    ControlToValidate="password" CssClass="style6" 
                    ErrorMessage="This field is empty" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="style4">
                TYPE:</td>
            <td>
                <asp:TextBox ID="type" runat="server" CssClass="style5"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                    ControlToValidate="type" CssClass="style6" ErrorMessage="This field is empty" 
                    ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="style4">
                HINT_Q:</td>
            <td>
                <asp:TextBox ID="hint_q" runat="server" CssClass="style5"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                    ControlToValidate="hint_q" CssClass="style6" ErrorMessage="This field is empty" 
                    ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="style4">
                HINT_A:</td>
            <td>
                <asp:TextBox ID="hint_a" runat="server" CssClass="style5"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" 
                    ControlToValidate="hint_a" CssClass="style6" ErrorMessage="This field is empty" 
                    ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="style4">
                STATUS:</td>
            <td>
                <asp:TextBox ID="status" runat="server" CssClass="style5"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" 
                    ControlToValidate="status" CssClass="style6" ErrorMessage="This field is empty" 
                    ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="style3">
                <asp:Button ID="submit" runat="server" onclick="submit_Click" 
                    style="font-size: large; font-weight: 700; color: #FF0066" Text="SUBMIT" />
            </td>
            <td>
                &nbsp;</td>
        </tr>
    </table>
    <div>
    
    </div>
    </form>
</body>
</html>
