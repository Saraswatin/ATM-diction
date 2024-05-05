<%@ Page Title="" Language="C#" MasterPageFile="~/usermaster.master" AutoEventWireup="true" CodeFile="snocash.aspx.cs" Inherits="snocash" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <form id="form1" runat="server">
Select city:&nbsp; <asp:DropDownList ID="DropDownList1" runat="server" 
        DataSourceID="SqlDataSource1" DataTextField="land_mark" 
        DataValueField="area_id" Width="120px">
    </asp:DropDownList>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:ConnectionString11 %>" 
        SelectCommand="SELECT * FROM [area_details]"></asp:SqlDataSource>
    <asp:DropDownList ID="DropDownList2" runat="server">
        <asp:ListItem>no cash</asp:ListItem>
    </asp:DropDownList>
    <asp:Button ID="Button1" runat="server" onclick="Button1_Click" Text="search" />
    <br />
    <asp:Panel ID="Panel1" runat="server">
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
            DataSourceID="SqlDataSource2">
            <Columns>
                <asp:BoundField DataField="land_mark" HeaderText="land_mark" 
                    SortExpression="land_mark" />
                <asp:BoundField DataField="area_name" HeaderText="area_name" 
                    SortExpression="area_name" />
                <asp:BoundField DataField="atm_name" HeaderText="atm_name" 
                    SortExpression="atm_name" />
                <asp:BoundField DataField="status" HeaderText="status" 
                    SortExpression="status" />
                <asp:BoundField DataField="cc_camera" HeaderText="cc_camera" 
                    SortExpression="cc_camera" />
                <asp:BoundField DataField="security" HeaderText="security" 
                    SortExpression="security" />
                <asp:BoundField DataField="area_type" HeaderText="area_type" 
                    SortExpression="area_type" />
                <asp:BoundField DataField="bank_name" HeaderText="bank_name" 
                    SortExpression="bank_name" />
                <asp:BoundField DataField="contact_no" HeaderText="contact_no" 
                    SortExpression="contact_no" />
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
            ConnectionString="<%$ ConnectionStrings:ConnectionString11 %>" 
            SelectCommand="SELECT area_details.land_mark, area_details.area_name, atm_details.atm_name, atm_details.status, atm_details.cc_camera, atm_details.security, atm_details.area_type, bank_details.bank_name, bank_details.contact_no FROM area_details INNER JOIN atm_details ON area_details.area_id = atm_details.area_id INNER JOIN bank_details ON atm_details.bank_id = bank_details.bank_id WHERE (area_details.area_id = @area_id) AND (atm_details.status = @status)">
            <SelectParameters>
                <asp:ControlParameter ControlID="DropDownList1" Name="area_id" 
                    PropertyName="SelectedValue" />
                <asp:ControlParameter ControlID="DropDownList2" Name="status" 
                    PropertyName="SelectedValue" />
            </SelectParameters>
        </asp:SqlDataSource>
    </asp:Panel>
    </form>
</asp:Content>

