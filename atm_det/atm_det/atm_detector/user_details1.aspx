<%@ Page MasterPageFile="~/mainmaster.master" Language="C#" AutoEventWireup="true" CodeFile="user_details1.aspx.cs" Inherits="user_details1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <form id="form1" runat="server">
    <div>
    <table class="style1">
        <tr>
            <td colspan="2" 
                
                style="font-weight: 700; text-align: left; font-size: large; text-decoration: underline">
                USER DETAILS</td>
        </tr>
        <tr>
            <td class="style2">
                USER NAME:</td>
            <td class="style4">
                <asp:TextBox ID="user_name" runat="server" CssClass="style4"></asp:TextBox>
                <span class="style6">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                    ControlToValidate="user_name" ErrorMessage="This field is empty" 
                    ForeColor="Red"></asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
                    ControlToValidate="user_name" ErrorMessage="Invalid Name" ForeColor="Red" 
                    ValidationExpression="[A-Za-z ]*$"></asp:RegularExpressionValidator>
                </span>
            </td>
        </tr>
        <tr>
            <td class="style2">
                ADDRESS:</td>
            <td class="style4">
                <asp:TextBox ID="address" runat="server" CssClass="style4"></asp:TextBox>
                <span class="style6">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                    ControlToValidate="address" ErrorMessage="This field is empty" ForeColor="Red"></asp:RequiredFieldValidator>
                </span>
            </td>
        </tr>
        <tr>
            <td class="style2">
                CONTACT NO:</td>
            <td class="style4">
                <asp:TextBox ID="contact_no" runat="server" CssClass="style4"></asp:TextBox>
                <span class="style6">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                    ControlToValidate="contact_no" ErrorMessage="This field is empty" 
                    ForeColor="Red"></asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" 
                    ControlToValidate="contact_no" ErrorMessage="Invalid No" ForeColor="Red" 
                    ValidationExpression="^([7-9]{1})([0-9]{9})$"></asp:RegularExpressionValidator>
                </span>
            </td>
        </tr>
        <tr>
            <td class="style2">
                EMAIL ID:</td>
            <td class="style4">
                <asp:TextBox ID="email_id" runat="server" CssClass="style4"></asp:TextBox>
                <span class="style6">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                    ControlToValidate="email_id" ErrorMessage="This field is empty" ForeColor="Red"></asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" 
                    ControlToValidate="email_id" ErrorMessage="Invalid EmailID" ForeColor="Red" 
                    ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                </span>
            </td>
        </tr>
        <tr>
            <td class="style2">
                CITY:</td>
            <td class="style4">
                <asp:TextBox ID="city" runat="server" CssClass="style4"></asp:TextBox>
                <span class="style6">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" 
                    ControlToValidate="city" ErrorMessage="This field is empty" ForeColor="Red"></asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator4" runat="server" 
                    ControlToValidate="city" ErrorMessage="Invalid Name" ForeColor="Red" 
                    ValidationExpression="[A-Za-z ]*$"></asp:RegularExpressionValidator>
                </span>
            </td>
        </tr>
        <tr>
            <td class="style2">
                STATE:</td>
            <td class="style4">
                <asp:TextBox ID="state" runat="server" CssClass="style4"></asp:TextBox>
                <span class="style6">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" 
                    ControlToValidate="state" ErrorMessage="This field is empty" ForeColor="Red"></asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator5" runat="server" 
                    ControlToValidate="state" ErrorMessage="Invalid Name" ForeColor="Red" 
                    ValidationExpression="[A-Za-z ]*$"></asp:RegularExpressionValidator>
                </span>
            </td>
        </tr>
        <tr>
            <td class="style3">
                <asp:Button ID="submit" runat="server" onclick="submit_Click" 
                    style="font-size: large;" Text="SUBMIT" />
            </td>
            <td>
                <asp:Label ID="Label1" runat="server"></asp:Label>
            </td>
        </tr>
    </table>
    </div>
    </form>
    <p>
        &nbsp;</p>
</asp:content>