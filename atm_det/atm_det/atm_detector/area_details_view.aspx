<%@ Page MasterPageFile="~/adminmaster.master" Language="C#" AutoEventWireup="true" CodeFile="area_details_view.aspx.cs" Inherits="area_details_view" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <form id="form1" runat="server">
    <div>
    
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
            CellPadding="4" DataKeyNames="area_id" DataSourceID="SqlDataSource1" 
            ForeColor="#333333" GridLines="None">
            <AlternatingRowStyle BackColor="White" />
            <Columns>
                <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                <asp:BoundField DataField="area_id" HeaderText="area_id" InsertVisible="False" 
                    ReadOnly="True" SortExpression="area_id" />
                <asp:BoundField DataField="area_name" HeaderText="area_name" 
                    SortExpression="area_name" />
                <asp:BoundField DataField="land_mark" HeaderText="land_mark" 
                    SortExpression="land_mark" />
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
            DeleteCommand="DELETE FROM [area_details] WHERE [area_id] = @area_id" 
            InsertCommand="INSERT INTO [area_details] ([area_name], [land_mark]) VALUES (@area_name, @land_mark)" 
            SelectCommand="SELECT * FROM [area_details]" 
            UpdateCommand="UPDATE [area_details] SET [area_name] = @area_name, [land_mark] = @land_mark WHERE [area_id] = @area_id">
            <DeleteParameters>
                <asp:Parameter Name="area_id" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="area_name" Type="String" />
                <asp:Parameter Name="land_mark" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="area_name" Type="String" />
                <asp:Parameter Name="land_mark" Type="String" />
                <asp:Parameter Name="area_id" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>
    <br />
        <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/area_details.aspx">+Add new</asp:HyperLink>
    </div>
    </form>
</asp:Content>