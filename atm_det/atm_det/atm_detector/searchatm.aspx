<%@ Page Title="" Language="C#" MasterPageFile="~/usermaster.master" AutoEventWireup="true" CodeFile="searchatm.aspx.cs" Inherits="searchatm" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <form id="form1" runat="server">
Select city: <asp:DropDownList ID="DropDownList1" runat="server" Width="120px" 
        DataSourceID="SqlDataSource1" DataTextField="land_mark" 
        DataValueField="area_id">
    </asp:DropDownList>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:ConnectionString11 %>" 
        SelectCommand="SELECT * FROM [area_details]"></asp:SqlDataSource>
    &nbsp;and Area:
    <asp:DropDownList ID="DropDownList2" runat="server" Width="120px" 
        DataSourceID="SqlDataSource1" DataTextField="area_name" 
        DataValueField="area_id">
    </asp:DropDownList>
    <asp:Button ID="Button1" runat="server" Text="Search" onclick="Button1_Click" />
    <asp:Panel ID="Panel1" runat="server">
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
            DataSourceID="SqlDataSource2">
            <Columns>
                <asp:BoundField DataField="land_mark" HeaderText="City" 
                    SortExpression="land_mark" />
                <asp:BoundField DataField="area_name" HeaderText="area_name" 
                    SortExpression="area_name" />
                <asp:BoundField DataField="bank_name" HeaderText="bank_name" 
                    SortExpression="bank_name" />
                <asp:BoundField DataField="contact_no" HeaderText="contact_no" 
                    SortExpression="contact_no" />
                <asp:BoundField DataField="atm_no" HeaderText="atm_no" 
                    SortExpression="atm_no" />
                <asp:BoundField DataField="area_type" HeaderText="area_type" 
                    SortExpression="area_type" />
                <asp:BoundField DataField="status" HeaderText="status" 
                    SortExpression="status" />
                <asp:BoundField DataField="cc_camera" HeaderText="cc_camera" 
                    SortExpression="cc_camera" />
                <asp:BoundField DataField="security" HeaderText="security" 
                    SortExpression="security" />
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
            ConnectionString="<%$ ConnectionStrings:ConnectionString11 %>" 
            SelectCommand="SELECT area_details.land_mark, area_details.area_name, bank_details.bank_name, bank_details.contact_no, atm_details.atm_no, atm_details.area_type, atm_details.status, atm_details.cc_camera, atm_details.security FROM area_details INNER JOIN atm_details ON area_details.area_id = atm_details.area_id INNER JOIN bank_details ON atm_details.bank_id = bank_details.bank_id WHERE (area_details.area_id = @area_id) AND (area_details.area_id = @area_id2)">
            <SelectParameters>
                <asp:ControlParameter ControlID="DropDownList1" Name="area_id" 
                    PropertyName="SelectedValue" />
                <asp:ControlParameter ControlID="DropDownList2" Name="area_id2" 
                    PropertyName="SelectedValue" />
            </SelectParameters>
        </asp:SqlDataSource>
    </asp:Panel>
    </form>
</asp:Content>

