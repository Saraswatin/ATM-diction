<%@ Page MasterPageFile="~/adminmaster.master" Language="C#" AutoEventWireup="true" CodeFile="area_details.aspx.cs" Inherits="area_details" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <form id="form1" runat="server">
    <table class="style1">
        <tr>
            <td class="style5" colspan="2" 
                style="text-align: left; text-decoration: underline;">
                AREA DETAILS</td>
        </tr>
        <tr>
            <td class="style6">
                AREA_NAME:</td>
            <td>
                <asp:TextBox ID="TextBoxareaname" runat="server" CssClass="style7" 
                    Width="187px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                    ControlToValidate="TextBoxlandmark" CssClass="style8" 
                    ErrorMessage="This field is empty" ForeColor="Red"></asp:RequiredFieldValidator>
&nbsp;<asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
                    ControlToValidate="TextBoxareaname" CssClass="style8" 
                    ErrorMessage="Invalid Name" ForeColor="Red" ValidationExpression="[A-Za-z ]*$"></asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
            <td class="style6">
                City:</td>
            <td>
                <asp:TextBox ID="TextBoxlandmark" runat="server" CssClass="style7"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                    ControlToValidate="TextBoxlandmark" CssClass="style8" 
                    ErrorMessage="This field is empty" ForeColor="Red"></asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" 
                    ControlToValidate="TextBoxlandmark" CssClass="style8" 
                    ErrorMessage="Invalid Name" ForeColor="Red" ValidationExpression="[A-Za-z ]*$"></asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
            <td class="style2" colspan="2">
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="submit" runat="server" onclick="Button1_Click" Text="SUBMIT" 
                    CssClass="style4" />
            </td>
        </tr>
    </table>
    <div>
    
    </div>
    </form>
</asp:content>
