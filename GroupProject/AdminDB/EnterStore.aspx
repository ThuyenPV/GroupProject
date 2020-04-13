<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="EnterStore.aspx.cs" Inherits="GroupProject.AdminDB.EnterStore" %>

<%--<asp:Content runat="server" ContentPlaceHolderID="MainContent">--%>
<%--MasterPageFile="~/Site.Master"--%>
<!DOCTYPE html>

<html>

<head>
    <title></title>
    <link href="../Assets/css/RowButton.css" rel="RowButton" />
    <link href="../Assets/css/styles.css" rel="stylesheet" />
    <link href="https://cdn.datatables.net/1.10.20/css/dataTables.bootstrap4.min.css" rel="stylesheet" crossorigin="anonymous" />
    <script src="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.11.2/js/all.min.js" crossorigin="anonymous"></script>

</head>
<body>
    <form id="form1" runat="server">
        <div class="form-group" align="center">

            <label style="width: 150px">Tên cửa hàng</label>
            <asp:TextBox ID="txtStore" class="form-control py-4" Width="300px" runat="server"></asp:TextBox>
            <br />
            <label style="width: 150px">Số điện thoại</label>
            <br />
            <asp:TextBox ID="txtPhone" class="form-control py-4" Width="300px" runat="server"></asp:TextBox>
            <br />
            <label style="width: 150px">Email</label>
            <br />

            <asp:TextBox ID="txtEmail" class="form-control py-4" Width="300px" runat="server"></asp:TextBox>
            <br />
            <label style="width: 150px">Địa chỉ</label>
            <asp:TextBox ID="txtStreet" class="form-control py-4" Width="300px" runat="server"></asp:TextBox>
            <br />
            <label style="width: 150px">Thành phố</label>
            <asp:TextBox ID="txtCity" class="form-control py-4" Width="300px" runat="server"></asp:TextBox>
            <br />
            <label class="auto-style1">Tiểu bang</label>
            <asp:TextBox ID="txtState" class="form-control py-4" Width="300px" runat="server"></asp:TextBox>
            <br />
            <label class="auto-style1">Mã ZIP</label><asp:TextBox ID="txtZipCode" class="form-control py-4" Width="300px" runat="server"></asp:TextBox>
            <br />
            <div class="btn_group">

                <asp:Button ID="btnAdd" runat="server" Text="Thêm" OnClick="btnAdd_Click" Height="45px" Width="300px" Font-Bold="True" />
                <asp:Button ID="btnEdit" runat="server" Text="Cập nhật" OnClick="btnEdit_Click" Height="45px" Width="300px" Font-Bold="True" />
                <asp:Button ID="btnReset" runat="server" Text="Nhập lại" OnClick="btnReset_Click" Height="45px" Width="300px" Font-Bold="True" />
                <br />
            </div>
        </div>
        <asp:GridView ID="gvStore" runat="server" AutoGenerateColumns="False" OnRowDeleting="delete_current_row" OnSelectedIndexChanged="select_current_row" CellPadding="4" ForeColor="#333333" GridLines="None" Width="100%">
            <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
            <Columns>
                <asp:ButtonField ButtonType="Button" CommandName="Select" Text="Chọn">
                    <ControlStyle Width="100px" />
                </asp:ButtonField>
                <asp:BoundField DataField="store_id" HeaderText="ID cửa hàng" SortExpression="store_id" />
                <asp:BoundField DataField="store_name" HeaderText="Tên cửa hàng" ReadOnly="True" SortExpression="store_name" />
                <asp:BoundField DataField="phone" HeaderText="Số điện thoại" ReadOnly="True" SortExpression="phone" />
                <asp:BoundField DataField="email" HeaderText="Email" ReadOnly="True" SortExpression="email" />
                <asp:BoundField DataField="street" HeaderText="Địa chỉ" ReadOnly="True" SortExpression="street" />
                <asp:BoundField DataField="city" HeaderText="Thành phố" ReadOnly="True" SortExpression="city" />
                <asp:BoundField DataField="state" HeaderText="Tiểu bang" ReadOnly="True" SortExpression="state" />
                <asp:BoundField DataField="zip_code" HeaderText="Mã ZIP" SortExpression="zip_code" />
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
<%--</asp:Content>--%>
