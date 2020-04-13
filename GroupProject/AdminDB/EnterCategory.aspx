<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="EnterCategory.aspx.cs" Inherits="GroupProject.AdminDB.EnterCategory" MasterPageFile="~/Site.Master" %>

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
            /*#txtBrand, #gvBrand, #btnAdd, #brand {
                margin-left:300px;
            }*/
            /*form-group.help-block,form-group.txtBrand{
                margin-left:300px;

            }
            .help-block, .txtBrand {
                margin-left:300px;

            }*/
        </style>
    </head>
    <body>
        <form id="form1" runat="server">
            <div class="form-group" align="center">
                <label id="brand">Loại sản phẩm</label>
                <asp:TextBox ID="txtCategory" class="form-control py-4" Width="300px" runat="server"></asp:TextBox>

                <p class="help-block">Nhập tên loại xe đạp.</p>
                <div class="btn_group">

                    <asp:Button ID="btnAddCategory" runat="server" Text="Thêm" Font-Bold="True" OnClick="btnAddCategoryClick" Width="300px" Height="45px" />

                    <asp:Button ID="btnUpdate" runat="server" Text="Cập nhật" Font-Bold="True" OnClick="btnUpdateClick" Width="300px" Height="45px" />

                    <asp:Button ID="btnReset" runat="server" Text="Nhập lại" Font-Bold="True" OnClick="btnResetClick" Width="300px" Height="45px" />
                </div>
            </div>

            <div style="width: 100%; word-wrap: break-word; table-layout: fixed;">

                <asp:GridView ID="gvCategory" runat="server" AutoGenerateColumns="False" OnRowDeleting="DeleteCategoryClick" OnSelectedIndexChanged="select_current_row" CellPadding="4" ForeColor="#333333" GridLines="None" Width="100%">
                    <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                    <Columns>
                        <asp:ButtonField ButtonType="Button" CommandName="Select" Text="Chọn">
                            <ControlStyle Width="100px" />
                        </asp:ButtonField>
                        <asp:BoundField DataField="category_id" HeaderText="ID Loại sản phẩm" ReadOnly="True" SortExpression="category_id" />
                        <asp:BoundField DataField="category_name" HeaderText="Loại sản phẩm" ReadOnly="True" SortExpression="category_name" />
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
            </div>
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
