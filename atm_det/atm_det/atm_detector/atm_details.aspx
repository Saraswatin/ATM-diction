<%@ Page MasterPageFile="~/adminmaster.master" Language="C#" AutoEventWireup="true" CodeFile="atm_details.aspx.cs" Inherits="atm_details" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <form id="form1" runat="server">
    <table class="style1">
        <tr>
            <td class="style8" colspan="2" style="text-decoration: underline;">
                ATM DETAILS</td>
        </tr>
        <tr>
            <td class="style4">
                ATM_NAME:</td>
            <td>
                <asp:TextBox ID="atm_name" runat="server" CssClass="style6"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                    ControlToValidate="atm_name" CssClass="style7" 
                    ErrorMessage="This field is empty" ForeColor="Red"></asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
                    ControlToValidate="atm_name" CssClass="style7" ErrorMessage="Invalid Name" 
                    ForeColor="Red" ValidationExpression="[A-Za-z ]*$"></asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
            <td class="style4">
                ATM_NO:</td>
            <td>
                <asp:TextBox ID="atm_no" runat="server" CssClass="style6"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" 
                    ControlToValidate="atm_no" ErrorMessage="This field is empty" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="style4">
                AREA_TYPE:</td>
            <td>
                <asp:TextBox ID="area_type" runat="server" CssClass="style6"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                    ControlToValidate="area_type" CssClass="style7" 
                    ErrorMessage="This field is empty" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="style4">
                BANK_ID:</td>
            <td>
                <asp:ListBox ID="ListBox1" runat="server" DataSourceID="SqlDataSource1" 
                    DataTextField="bank_name" DataValueField="bank_id" Rows="1" Width="180px">
                </asp:ListBox>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:ConnectionString11 %>" 
                    SelectCommand="SELECT * FROM [bank_details]"></asp:SqlDataSource>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" 
                    ControlToValidate="ListBox1" ErrorMessage="This field is empty" 
                    ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="style4">
                AREA_ID:</td>
            <td>
                <asp:DropDownList ID="DropDownList1" runat="server" 
                    DataSourceID="SqlDataSource2" DataTextField="area_name" 
                    DataValueField="area_id" Width="180px">
                </asp:DropDownList>
                <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:ConnectionString11 %>" 
                    SelectCommand="SELECT DISTINCT * FROM [area_details]"></asp:SqlDataSource>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" 
                    ControlToValidate="DropDownList1" ErrorMessage="This field is empty" 
                    ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="style4">
                STATUS:</td>
            <td>
                <asp:RadioButtonList ID="RadioButtonList1" runat="server">
                    <asp:ListItem>cash</asp:ListItem>
                    <asp:ListItem>no cash</asp:ListItem>
                </asp:RadioButtonList>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                    ControlToValidate="RadioButtonList1" CssClass="style7" ErrorMessage="This field is empty" 
                    ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="style4">
                CC_CAMERA:</td>
            <td>
                <asp:RadioButtonList ID="RadioButtonList2" runat="server">
                    <asp:ListItem>Installed</asp:ListItem>
                    <asp:ListItem>not installed</asp:ListItem>
                </asp:RadioButtonList>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                    ControlToValidate="RadioButtonList2" CssClass="style7" 
                    ErrorMessage="This field is empty" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="style4">
                SECURITY_GUARD:</td>
            <td>
                <asp:RadioButtonList ID="RadioButtonList3" runat="server">
                    <asp:ListItem>present</asp:ListItem>
                    <asp:ListItem>not present</asp:ListItem>
                </asp:RadioButtonList>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" 
                    ControlToValidate="RadioButtonList3" CssClass="style7" 
                    ErrorMessage="This field is empty" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="style2">
                <asp:Button ID="submit" runat="server" CssClass="style3" onclick="submit_Click" 
                    Text="SUBMIT" />
            </td>
            <td class="style3">
                &nbsp;</td>
        </tr>
    </table>
    <div>
    
    </div>
    </form>
</asp:content>
