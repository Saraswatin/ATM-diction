<%@ Page MasterPageFile="~/usermaster.master" Language="C#" AutoEventWireup="true" CodeFile="user_details1_view.aspx.cs" Inherits="user_details1_view" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <form id="form1" runat="server">
    <div>
        <asp:ListView ID="ListView1" runat="server" DataKeyNames="user_id" 
            DataSourceID="SqlDataSource1">
            <AlternatingItemTemplate>
                <span style="background-color: #FFF8DC;">user_id:
                <asp:Label ID="user_idLabel" runat="server" Text='<%# Eval("user_id") %>' />
                <br />
                user_name:
                <asp:Label ID="user_nameLabel" runat="server" Text='<%# Eval("user_name") %>' />
                <br />
                address:
                <asp:Label ID="addressLabel" runat="server" Text='<%# Eval("address") %>' />
                <br />
                contact_no:
                <asp:Label ID="contact_noLabel" runat="server" 
                    Text='<%# Eval("contact_no") %>' />
                <br />
                email_id:
                <asp:Label ID="email_idLabel" runat="server" Text='<%# Eval("email_id") %>' />
                <br />
                city:
                <asp:Label ID="cityLabel" runat="server" Text='<%# Eval("city") %>' />
                <br />
                state:
                <asp:Label ID="stateLabel" runat="server" Text='<%# Eval("state") %>' />
                <br />
                <asp:Button ID="EditButton" runat="server" CommandName="Edit" Text="Edit" />
<br /><br /></span>
            </AlternatingItemTemplate>
            <EditItemTemplate>
                <span style="background-color: #008A8C;color: #FFFFFF;">user_id:
                <asp:Label ID="user_idLabel1" runat="server" Text='<%# Eval("user_id") %>' />
                <br />
                user_name:
                <asp:TextBox ID="user_nameTextBox" runat="server" 
                    Text='<%# Bind("user_name") %>' />
                <br />
                address:
                <asp:TextBox ID="addressTextBox" runat="server" Text='<%# Bind("address") %>' />
                <br />
                contact_no:
                <asp:TextBox ID="contact_noTextBox" runat="server" 
                    Text='<%# Bind("contact_no") %>' />
                <br />
                email_id:
                <asp:TextBox ID="email_idTextBox" runat="server" 
                    Text='<%# Bind("email_id") %>' />
                <br />
                city:
                <asp:TextBox ID="cityTextBox" runat="server" Text='<%# Bind("city") %>' />
                <br />
                state:
                <asp:TextBox ID="stateTextBox" runat="server" Text='<%# Bind("state") %>' />
                <br />
                <asp:Button ID="UpdateButton" runat="server" CommandName="Update" 
                    Text="Update" />
                <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" 
                    Text="Cancel" />
                <br /><br /></span>
            </EditItemTemplate>
            <EmptyDataTemplate>
                <span>No data was returned.</span>
            </EmptyDataTemplate>
            <InsertItemTemplate>
                <span style="">user_name:
                <asp:TextBox ID="user_nameTextBox" runat="server" 
                    Text='<%# Bind("user_name") %>' />
                <br />address:
                <asp:TextBox ID="addressTextBox" runat="server" Text='<%# Bind("address") %>' />
                <br />contact_no:
                <asp:TextBox ID="contact_noTextBox" runat="server" 
                    Text='<%# Bind("contact_no") %>' />
                <br />email_id:
                <asp:TextBox ID="email_idTextBox" runat="server" 
                    Text='<%# Bind("email_id") %>' />
                <br />city:
                <asp:TextBox ID="cityTextBox" runat="server" Text='<%# Bind("city") %>' />
                <br />state:
                <asp:TextBox ID="stateTextBox" runat="server" Text='<%# Bind("state") %>' />
                <br />
                <asp:Button ID="InsertButton" runat="server" CommandName="Insert" 
                    Text="Insert" />
                <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" 
                    Text="Clear" />
                <br /><br /></span>
            </InsertItemTemplate>
            <ItemTemplate>
                <span style="background-color: #DCDCDC;color: #000000;">user_id:
                <asp:Label ID="user_idLabel" runat="server" Text='<%# Eval("user_id") %>' />
                <br />
                user_name:
                <asp:Label ID="user_nameLabel" runat="server" Text='<%# Eval("user_name") %>' />
                <br />
                address:
                <asp:Label ID="addressLabel" runat="server" Text='<%# Eval("address") %>' />
                <br />
                contact_no:
                <asp:Label ID="contact_noLabel" runat="server" 
                    Text='<%# Eval("contact_no") %>' />
                <br />
                email_id:
                <asp:Label ID="email_idLabel" runat="server" Text='<%# Eval("email_id") %>' />
                <br />
                city:
                <asp:Label ID="cityLabel" runat="server" Text='<%# Eval("city") %>' />
                <br />
                state:
                <asp:Label ID="stateLabel" runat="server" Text='<%# Eval("state") %>' />
                <br />
                <asp:Button ID="EditButton" runat="server" CommandName="Edit" Text="Edit" />
<br /><br /></span>
            </ItemTemplate>
            <LayoutTemplate>
                <div ID="itemPlaceholderContainer" runat="server" 
                    style="font-family: Verdana, Arial, Helvetica, sans-serif;">
                    <span runat="server" id="itemPlaceholder" />
                </div>
                <div style="text-align: center;background-color: #CCCCCC;font-family: Verdana, Arial, Helvetica, sans-serif;color: #000000;">
                </div>
            </LayoutTemplate>
            <SelectedItemTemplate>
                <span style="background-color: #008A8C;font-weight: bold;color: #FFFFFF;">
                user_id:
                <asp:Label ID="user_idLabel" runat="server" Text='<%# Eval("user_id") %>' />
                <br />
                user_name:
                <asp:Label ID="user_nameLabel" runat="server" Text='<%# Eval("user_name") %>' />
                <br />
                address:
                <asp:Label ID="addressLabel" runat="server" Text='<%# Eval("address") %>' />
                <br />
                contact_no:
                <asp:Label ID="contact_noLabel" runat="server" 
                    Text='<%# Eval("contact_no") %>' />
                <br />
                email_id:
                <asp:Label ID="email_idLabel" runat="server" Text='<%# Eval("email_id") %>' />
                <br />
                city:
                <asp:Label ID="cityLabel" runat="server" Text='<%# Eval("city") %>' />
                <br />
                state:
                <asp:Label ID="stateLabel" runat="server" Text='<%# Eval("state") %>' />
                <br />
                <asp:Button ID="EditButton" runat="server" CommandName="Edit" Text="Edit" />
<br /><br /></span>
            </SelectedItemTemplate>
        </asp:ListView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
            ConnectionString="<%$ ConnectionStrings:ConnectionString11 %>" 
            DeleteCommand="DELETE FROM [user_details] WHERE [user_id] = @user_id" 
            InsertCommand="INSERT INTO [user_details] ([user_name], [address], [contact_no], [email_id], [city], [state]) VALUES (@user_name, @address, @contact_no, @email_id, @city, @state)" 
            SelectCommand="SELECT * FROM [user_details] WHERE ([user_name] = @user_name)" 
            UpdateCommand="UPDATE [user_details] SET [user_name] = @user_name, [address] = @address, [contact_no] = @contact_no, [email_id] = @email_id, [city] = @city, [state] = @state WHERE [user_id] = @user_id">
            <DeleteParameters>
                <asp:Parameter Name="user_id" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="user_name" Type="String" />
                <asp:Parameter Name="address" Type="String" />
                <asp:Parameter Name="contact_no" Type="String" />
                <asp:Parameter Name="email_id" Type="String" />
                <asp:Parameter Name="city" Type="String" />
                <asp:Parameter Name="state" Type="String" />
            </InsertParameters>
            <SelectParameters>
                <asp:SessionParameter Name="user_name" SessionField="new" Type="String" />
            </SelectParameters>
            <UpdateParameters>
                <asp:Parameter Name="user_name" Type="String" />
                <asp:Parameter Name="address" Type="String" />
                <asp:Parameter Name="contact_no" Type="String" />
                <asp:Parameter Name="email_id" Type="String" />
                <asp:Parameter Name="city" Type="String" />
                <asp:Parameter Name="state" Type="String" />
                <asp:Parameter Name="user_id" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>
    </div>
    </form>
</asp:content>
