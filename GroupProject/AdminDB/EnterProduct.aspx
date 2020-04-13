<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="EnterProduct.aspx.cs" Inherits="GroupProject.AdminDB.EnterProduct" MasterPageFile="~/site.master" %>

<asp:Content runat="server" ContentPlaceHolderID="maincontent">

    <!DOCTYPE html>
    <html>

    <head>
        <title></title>
        <link href="../Assets/css/RowButton.css" rel="RowButton" />
        <link href="../Assets/css/styles.css" rel="stylesheet" />
        <link href="https://cdn.datatables.net/1.10.20/css/dataTables.bootstrap4.min.css" rel="stylesheet" crossorigin="anonymous" />
        <script src="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.11.2/js/all.min.js" crossorigin="anonymous"></script>
        <style>
            #btnAdd, #btnEdit, #btnReset {
                margin-left: 100px
            }

            .auto-style1 {
                width: 150px;
                height: 30px;
            }
        </style>
    </head>
    <body>
        <form id="form1" runat="server">
            <div class="form-group" align="center">

                <label style="width: 150px">Tên sản phẩm</label>
                <asp:TextBox ID="txtProduct_name" class="form-control py-4" Width="300px" runat="server"></asp:TextBox>
                <br />
                <label style="width: 150px">Nhãn hiệu</label>
                <br />
                <asp:DropDownList ID="dlBrand_name" runat="server" DataSourceID="BrandDataSource" DataTextField="brand_name" DataValueField="brand_name" Width="300px">
                </asp:DropDownList>
                <asp:SqlDataSource ID="BrandDataSource" runat="server" ConnectionString="Data Source=DESKTOP-RNJR8J1\SQLEXPRESS;Initial Catalog=EstoreOnlineShop;Integrated Security=True" ProviderName="System.Data.SqlClient" SelectCommand="SELECT brand_name FROM production.brands"></asp:SqlDataSource>
                <br />
                <label class="auto-style1">Loại sản phẩm</label>
                <br />

                <asp:DropDownList ID="dlCategory_name" runat="server" DataSourceID="CategoryDataSource" DataTextField="category_name" DataValueField="category_name" Width="300px">
                </asp:DropDownList>
                <asp:SqlDataSource ID="CategoryDataSource" runat="server" ConnectionString="Data Source=DESKTOP-RNJR8J1\SQLEXPRESS;Initial Catalog=EstoreOnlineShop;Integrated Security=True" ProviderName="System.Data.SqlClient" SelectCommand="SELECT category_name FROM production.categories"></asp:SqlDataSource>
                <br />
                <label style="width: 150px">Mẫu năm</label>
                <asp:TextBox ID="txtModel" class="form-control py-4" Width="300px" runat="server"></asp:TextBox>
                <br />
                <label style="width: 150px">Giá thành</label>
                <asp:TextBox ID="txtPrice" class="form-control py-4" Width="300px" runat="server"></asp:TextBox>
                <br />
                <label style="width: 150px">Hình ảnh</label>
                <asp:TextBox ID="txtImage" class="form-control py-4" Width="300px" runat="server"></asp:TextBox>
                <div class="btn_group">

                    <asp:Button ID="btnAdd" runat="server" Text="Thêm" OnClick="btnAdd_Click" Height="45px" Width="300px" Font-Bold="True" />
                    <asp:Button ID="btnEdit" runat="server" Text="Cập nhật" OnClick="btnEdit_Click" Height="45px" Width="300px" Font-Bold="True" />
                    <asp:Button ID="btnReset" runat="server" Text="Nhập lại" OnClick="btnReset_Click" Height="45px" Width="300px" Font-Bold="True" />
                </div>
                <br />
            </div>
            <asp:GridView ID="gvProducts" runat="server" AutoGenerateColumns="False" OnRowDeleting="delete_current_row" OnSelectedIndexChanged="select_current_row" CellPadding="4" ForeColor="#333333" GridLines="None" Width="100%">
                <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                <Columns>
                    <asp:ButtonField ButtonType="Button" CommandName="Select" Text="Chọn">
                        <ControlStyle Width="100px" />
                    </asp:ButtonField>
                    <asp:BoundField DataField="product_id" HeaderText="ID sản phẩm" SortExpression="product_id" />
                    <asp:BoundField DataField="product_name" HeaderText="Tên sản phẩm" ReadOnly="True" SortExpression="product_name" />
                    <asp:BoundField DataField="brand_id" HeaderText="ID nhãn hiệu" ReadOnly="True" SortExpression="brand_id" />
                    <asp:BoundField DataField="category_id" HeaderText="ID loại sản phẩm" ReadOnly="True" SortExpression="category_id" />
                    <asp:BoundField DataField="model_year" HeaderText="Mẫu năm" ReadOnly="True" SortExpression="model_year" />
                    <asp:BoundField DataField="list_price" HeaderText="Giá thành" ReadOnly="True" SortExpression="list_price" />
                    <asp:BoundField DataField="image" HeaderText="Hình ảnh" ReadOnly="True" SortExpression="image" />
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
