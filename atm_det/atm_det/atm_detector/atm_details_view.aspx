<%@ Page MasterPageFile="~/adminmaster.master" Language="C#" AutoEventWireup="true" CodeFile="atm_details_view.aspx.cs" Inherits="atm_details_view" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <form id="form1" runat="server">
    <div>
    
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
            DataKeyNames="atm_id" DataSourceID="SqlDataSource1" CellPadding="4" 
            ForeColor="#333333" GridLines="None">
            <AlternatingRowStyle BackColor="White" />
            <Columns>
                <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                <asp:BoundField DataField="atm_name" HeaderText="atm name" 
                    SortExpression="atm_name" />
                <asp:BoundField DataField="atm_no" HeaderText="atm no" 
                    SortExpression="atm_no" />
                <asp:BoundField DataField="area_type" HeaderText="area type" 
                    SortExpression="area_type" />
                <asp:BoundField DataField="bank_id" HeaderText="bank id" 
                    SortExpression="bank_id" />
                <asp:BoundField DataField="area_id" HeaderText="area id" 
                    SortExpression="area_id" />
                <asp:BoundField DataField="status" HeaderText="status" 
                    SortExpression="status" />
                <asp:BoundField DataField="cc_camera" HeaderText="cc camera" 
                    SortExpression="cc_camera" />
                <asp:BoundField DataField="security" HeaderText="security" 
                    SortExpression="security" />
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
            DeleteCommand="DELETE FROM [atm_details] WHERE [atm_id] = @atm_id" 
            InsertCommand="INSERT INTO [atm_details] ([atm_name], [atm_no], [area_type], [bank_id], [area_id], [status], [cc_camera], [security]) VALUES (@atm_name, @atm_no, @area_type, @bank_id, @area_id, @status, @cc_camera, @security)" 
            SelectCommand="SELECT * FROM [atm_details]" 
            UpdateCommand="UPDATE [atm_details] SET [atm_name] = @atm_name, [atm_no] = @atm_no, [area_type] = @area_type, [bank_id] = @bank_id, [area_id] = @area_id, [status] = @status, [cc_camera] = @cc_camera, [security] = @security WHERE [atm_id] = @atm_id">
            <DeleteParameters>
                <asp:Parameter Name="atm_id" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="atm_name" Type="String" />
                <asp:Parameter Name="atm_no" Type="Int32" />
                <asp:Parameter Name="area_type" Type="String" />
                <asp:Parameter Name="bank_id" Type="Int32" />
                <asp:Parameter Name="area_id" Type="Int32" />
                <asp:Parameter Name="status" Type="String" />
                <asp:Parameter Name="cc_camera" Type="String" />
                <asp:Parameter Name="security" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="atm_name" Type="String" />
                <asp:Parameter Name="atm_no" Type="Int32" />
                <asp:Parameter Name="area_type" Type="String" />
                <asp:Parameter Name="bank_id" Type="Int32" />
                <asp:Parameter Name="area_id" Type="Int32" />
                <asp:Parameter Name="status" Type="String" />
                <asp:Parameter Name="cc_camera" Type="String" />
                <asp:Parameter Name="security" Type="String" />
                <asp:Parameter Name="atm_id" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>
    <br />
        <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/atm_details.aspx">+Add new</asp:HyperLink>
    </div>
    </form>
</asp:content>
