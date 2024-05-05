<%@ Page Language="C#" AutoEventWireup="true" CodeFile="login_view.aspx.cs" Inherits="login_view" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
            BackColor="#DEBA84" BorderColor="#DEBA84" BorderStyle="None" BorderWidth="1px" 
            CellPadding="3" CellSpacing="2" DataKeyNames="login_id" 
            DataSourceID="SqlDataSource1">
            <Columns>
                <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                <asp:BoundField DataField="login_id" HeaderText="login_id" 
                    InsertVisible="False" ReadOnly="True" SortExpression="login_id" />
                <asp:BoundField DataField="user_name" HeaderText="user_name" 
                    SortExpression="user_name" />
                <asp:BoundField DataField="password" HeaderText="password" 
                    SortExpression="password" />
                <asp:BoundField DataField="type" HeaderText="type" SortExpression="type" />
                <asp:BoundField DataField="hint_q" HeaderText="hint_q" 
                    SortExpression="hint_q" />
                <asp:BoundField DataField="hint_a" HeaderText="hint_a" 
                    SortExpression="hint_a" />
                <asp:BoundField DataField="status" HeaderText="status" 
                    SortExpression="status" />
            </Columns>
            <FooterStyle BackColor="#F7DFB5" ForeColor="#8C4510" />
            <HeaderStyle BackColor="#A55129" Font-Bold="True" ForeColor="White" />
            <PagerStyle ForeColor="#8C4510" HorizontalAlign="Center" />
            <RowStyle BackColor="#FFF7E7" ForeColor="#8C4510" />
            <SelectedRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="White" />
            <SortedAscendingCellStyle BackColor="#FFF1D4" />
            <SortedAscendingHeaderStyle BackColor="#B95C30" />
            <SortedDescendingCellStyle BackColor="#F1E5CE" />
            <SortedDescendingHeaderStyle BackColor="#93451F" />
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
            ConnectionString="<%$ ConnectionStrings:ConnectionString11 %>" 
            DeleteCommand="DELETE FROM [login] WHERE [login_id] = @login_id" 
            InsertCommand="INSERT INTO [login] ([user_name], [password], [type], [hint_q], [hint_a], [status]) VALUES (@user_name, @password, @type, @hint_q, @hint_a, @status)" 
            SelectCommand="SELECT * FROM [login]" 
            UpdateCommand="UPDATE [login] SET [user_name] = @user_name, [password] = @password, [type] = @type, [hint_q] = @hint_q, [hint_a] = @hint_a, [status] = @status WHERE [login_id] = @login_id">
            <DeleteParameters>
                <asp:Parameter Name="login_id" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="user_name" Type="String" />
                <asp:Parameter Name="password" Type="String" />
                <asp:Parameter Name="type" Type="String" />
                <asp:Parameter Name="hint_q" Type="String" />
                <asp:Parameter Name="hint_a" Type="String" />
                <asp:Parameter Name="status" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="user_name" Type="String" />
                <asp:Parameter Name="password" Type="String" />
                <asp:Parameter Name="type" Type="String" />
                <asp:Parameter Name="hint_q" Type="String" />
                <asp:Parameter Name="hint_a" Type="String" />
                <asp:Parameter Name="status" Type="String" />
                <asp:Parameter Name="login_id" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>
    
    </div>
    </form>
</body>
</html>
