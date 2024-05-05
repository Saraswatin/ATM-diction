<%@ Page MasterPageFile="~/adminmaster.master" Language="C#" AutoEventWireup="true" CodeFile="bank_details_view.aspx.cs" Inherits="bank_details_view" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <form id="form1" runat="server">
    <div>
    
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
            CellPadding="4" DataKeyNames="bank_id" 
            DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None">
            <AlternatingRowStyle BackColor="White" />
            <Columns>
                <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                <asp:BoundField DataField="bank_name" HeaderText=" bank name" 
                    SortExpression="bank_name" />
                <asp:BoundField DataField="bank_main_branchs" HeaderText=" _bank main branchs" 
                    SortExpression="bank_main_branchs" />
                <asp:BoundField DataField="contact_no" HeaderText=" _contact no" 
                    SortExpression="contact_no" />
                <asp:BoundField DataField="branch_manager" HeaderText=" _  branch manager" 
                    SortExpression="branch_manager" />
            </Columns>
            <EditRowStyle BackColor="#7C6F57" />
            <FooterStyle BackColor="#1C5E55" ForeColor="White" Font-Bold="True" />
            <HeaderStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
            <PagerStyle ForeColor="White" HorizontalAlign="Center" BackColor="#666666" />
            <RowStyle BackColor="#E3EAEB" />
            <SelectedRowStyle BackColor="#C5BBAF" Font-Bold="True" ForeColor="#333333" />
            <SortedAscendingCellStyle BackColor="#F8FAFA" />
            <SortedAscendingHeaderStyle BackColor="#246B61" />
            <SortedDescendingCellStyle BackColor="#D4DFE1" />
            <SortedDescendingHeaderStyle BackColor="#15524A" />
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
            ConnectionString="<%$ ConnectionStrings:ConnectionString11 %>" 
            DeleteCommand="DELETE FROM [bank_details] WHERE [bank_id] = @bank_id" 
            InsertCommand="INSERT INTO [bank_details] ([bank_name], [bank_main_branchs], [contact_no], [branch_manager]) VALUES (@bank_name, @bank_main_branchs, @contact_no, @branch_manager)" 
            SelectCommand="SELECT * FROM [bank_details]" 
            UpdateCommand="UPDATE [bank_details] SET [bank_name] = @bank_name, [bank_main_branchs] = @bank_main_branchs, [contact_no] = @contact_no, [branch_manager] = @branch_manager WHERE [bank_id] = @bank_id">
            <DeleteParameters>
                <asp:Parameter Name="bank_id" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="bank_name" Type="String" />
                <asp:Parameter Name="bank_main_branchs" Type="String" />
                <asp:Parameter Name="contact_no" Type="String" />
                <asp:Parameter Name="branch_manager" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="bank_name" Type="String" />
                <asp:Parameter Name="bank_main_branchs" Type="String" />
                <asp:Parameter Name="contact_no" Type="String" />
                <asp:Parameter Name="branch_manager" Type="String" />
                <asp:Parameter Name="bank_id" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>
    <br />
        <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/bank_details.aspx">+Add new</asp:HyperLink>
    </div>
    </form>
</asp:content>
