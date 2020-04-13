<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="EnterStock.aspx.cs" Inherits="GroupProject.AdminDB.EnterStock" MasterPageFile="~/Site.Master" %>

<asp:Content runat="server" ContentPlaceHolderID="MainContent">
    <!DOCTYPE html>

    <html>
    <head>
        <title></title>
        <link href="../Assets/css/RowButton.css" rel="RowButton" />
        <link href="../Assets/css/styles.css" rel="stylesheet" />
        <link href="https://cdn.datatables.net/1.10.20/css/dataTables.bootstrap4.min.css" rel="stylesheet" crossorigin="anonymous" />
        <script src="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.11.2/js/all.min.js" crossorigin="anonymous"></script>
        <style>
        </style>
    </head>
    <body>
        <form id="form1" runat="server">
            <div class="form-group" align="center">
                &nbsp;<br />
                Tên cửa hàng
        <br />
                <asp:DropDownList ID="dlStore" runat="server" DataSourceID="StoreDataSource" DataTextField="store_name" DataValueField="store_name" Width="300px">
                </asp:DropDownList>
                <asp:SqlDataSource ID="StoreDataSource" runat="server" ConnectionString="Data Source=DESKTOP-RNJR8J1\SQLEXPRESS;Initial Catalog=EstoreOnlineShop;Integrated Security=True" ProviderName="System.Data.SqlClient" SelectCommand="SELECT store_name FROM sales.stores"></asp:SqlDataSource>
                <br />
                Tên sản phẩm
        <br />

                <asp:DropDownList ID="dlProduct" runat="server" DataSourceID="ProductDataSource" DataTextField="product_name" DataValueField="product_name" Width="300px">
                </asp:DropDownList>
                <asp:SqlDataSource ID="ProductDataSource" runat="server" ConnectionString="Data Source=DESKTOP-RNJR8J1\SQLEXPRESS;Initial Catalog=EstoreOnlineShop;Integrated Security=True" ProviderName="System.Data.SqlClient" SelectCommand="SELECT product_name FROM production.products"></asp:SqlDataSource>
                <br />
                Số lượng
        <asp:TextBox ID="txtQuantity" class="form-control py-4" Width="300px" runat="server"></asp:TextBox>
                <br />
                &nbsp;<br />
                <div class="btn_group">
                    &nbsp;<asp:Button ID="btnAdd" runat="server" Text="Thêm" OnClick="btnAdd_Click" Height="45px" Width="300px" Font-Bold="True" />
                    <asp:Button ID="btnEdit" runat="server" Text="Cập nhật" OnClick="btnEdit_Click" Height="45px" Width="300px" Font-Bold="True" />
                    <asp:Button ID="btnReset" runat="server" Text="Nhập lại" OnClick="btnReset_Click" Height="45px" Width="300px" Font-Bold="True" />
                </div>
                <br />
            </div>
            <asp:GridView ID="gvStore" runat="server" AutoGenerateColumns="False" OnRowDeleting="delete_current_row" OnSelectedIndexChanged="select_current_row" CellPadding="4" ForeColor="#333333" GridLines="None" Width="100%">
                <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                <Columns>
                    <asp:ButtonField ButtonType="Button" CommandName="Select" Text="Chọn">
                        <ControlStyle Width="100px" />
                    </asp:ButtonField>
                    <asp:BoundField DataField="store_id" HeaderText="ID cửa hàng" SortExpression="store_id" />
                    <asp:BoundField DataField="product_id" HeaderText="ID sản phẩm" SortExpression="product_id" />
                    <asp:BoundField DataField="quantity" HeaderText="Số lượng" SortExpression="quantity" />
                    <asp:ButtonField ButtonType="Button" CommandName="Delete" Text="Xóa">
                        <ControlStyle Width="100px" />
                    </asp:ButtonField>
                </Columns>
                <EditRowStyle BackColor="#999999" />
                <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
                <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
                <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
                <SortedAscendingCellStyle BackColor="#E9E7E2" />
                <SortedAscendingHeaderStyle BackColor="#506C8C" />
                <SortedDescendingCellStyle BackColor="#FFFDF8" />
                <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
            </asp:GridView>
        </form>
        <script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.bundle.min.js"></script>
        <script src="../Assets/js/scripts.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.8.0/Chart.min.js"></script>
        <script src="https://cdn.datatables.net/1.10.20/js/jquery.dataTables.min.js"></script>
        <script src="https://cdn.datatables.net/1.10.20/js/dataTables.bootstrap4.min.js"></script>
    </body>
    </html>
</asp:Content>
