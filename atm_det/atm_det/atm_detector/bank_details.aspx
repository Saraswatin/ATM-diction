<%@ Page MasterPageFile="~/adminmaster.master" Language="C#" AutoEventWireup="true" CodeFile="bank_details.aspx.cs" Inherits="bank_details" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <form id="form1" runat="server">
    <table class="style1">
        <tr>
            <td class="style3" colspan="2" 
                style="font-weight: 700; font-size: large; text-decoration: underline">
                BANK DETAILS</td>
        </tr>
        <tr>
            <td class="style5">
                BANK NAME:</td>
            <td class="style4">
                <asp:TextBox ID="bank_name" runat="server" CssClass="style6"></asp:TextBox>
                <span class="style7">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                    ControlToValidate="bank_name" ErrorMessage="This field is empty" 
                    ForeColor="Red"></asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
                    ControlToValidate="bank_name" ErrorMessage="Invalid Name" ForeColor="Red" 
                    ValidationExpression="[A-Za-z ]*$"></asp:RegularExpressionValidator>
                </span>
            </td>
        </tr>
        <tr>
            <td class="style5">
                BANK MAIN BRANCH:</td>
            <td class="style4">
                <asp:TextBox ID="bank_main_branch" runat="server" CssClass="style6"></asp:TextBox>
                <span class="style7">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                    ControlToValidate="bank_main_branch" ErrorMessage="This field is empty" 
                    ForeColor="Red"></asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" 
                    ControlToValidate="bank_main_branch" ErrorMessage="Invalid name" 
                    ForeColor="Red" ValidationExpression="[A-Za-z ]*$"></asp:RegularExpressionValidator>
                </span>
            </td>
        </tr>
        <tr>
            <td class="style5">
                CONTACT NO:</td>
            <td class="style4">
                <asp:TextBox ID="contact_no" runat="server" CssClass="style6"></asp:TextBox>
                <span class="style7">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                    ControlToValidate="contact_no" ErrorMessage="This field is empty" 
                    ForeColor="Red"></asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator4" runat="server" 
                    ControlToValidate="contact_no" ErrorMessage="Invalid No" ForeColor="Red" 
                    ValidationExpression="^([7-9]{1})([0-9]{9})$"></asp:RegularExpressionValidator>
                </span>
            </td>
        </tr>
        <tr>
            <td class="style5">
                BRANCH MANAGER:</td>
            <td class="style4">
                <asp:TextBox ID="branch_manager" runat="server" CssClass="style6"></asp:TextBox>
                <span class="style7">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                    ControlToValidate="branch_manager" ErrorMessage="This field is empty" 
                    ForeColor="Red"></asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" 
                    ControlToValidate="branch_manager" ErrorMessage="Invalid Name" ForeColor="Red" 
                    ValidationExpression="[A-Za-z ]*$"></asp:RegularExpressionValidator>
                </span>
            </td>
        </tr>
        <tr>
            <td class="style2">
                <asp:Button ID="submit" runat="server" CssClass="style4" onclick="submit_Click" 
                    style="text-align: right" Text="SUBMIT" />
            </td>
            <td class="style4">
                &nbsp;</td>
        </tr>
    </table>
    <div>
    
    </div>
    </form>
</asp:content>
