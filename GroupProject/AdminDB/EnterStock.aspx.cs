using GroupProject.Common;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace GroupProject.AdminDB
{
    public partial class EnterStock : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                LoadStore();
            }
        }
        public void LoadStore()
        {
            gvStore.DataSource = DataProvider.Instance.ExecuteQuery("select * from [production].stocks");
            gvStore.DataBind();
        }
        protected void btnAdd_Click(object sender, EventArgs e)
        {
            string query = "USP_InsertStock @store_id , @product_id , @quantity";
            int store_id = dlStore.SelectedIndex + 1;
            int product_id = dlProduct.SelectedIndex + 1;
            int isInsert = DataProvider.Instance.ExecuteNonQuery(query, new object[] { store_id, product_id, txtQuantity.Text });

            if (isInsert > 0)
            {
                Response.Write("<script type=\"text/javascript\">alert('Thêm thành công~');</script>");
                LoadStore();
            }
            else
            {
                Page.ClientScript.RegisterStartupScript(this.GetType(), "Scripts", "<script>alert('Thêm không thành công!');</scripts>");
            }
        }

        protected void btnEdit_Click(object sender, EventArgs e)
        {
            //int category_id = Convert.ToInt32(gvStore.SelectedRow.Cells[1].Text);

            //string queryUpdate = "USP_UpdateBrandsCategory @category_id , @category_name";
            //int isUpdate = DataProvider.Instance.ExecuteNonQuery(queryUpdate, new object[] { category_id, txtCategory.Text });
            //if (isUpdate > 0)
            //{
            //    LoadStore();
            //}
            //else
            //{
            //    Response.Write("<script type=\"text/javascript\">alert('Cập nhật không thành công!');</script>");
            //}
        }

        protected void btnReset_Click(object sender, EventArgs e)
        {
            txtQuantity.Text = "";

        }

        protected void select_current_row(object sender, EventArgs e)
        {
            txtQuantity.Text = gvStore.SelectedRow.Cells[2].Text;

        }

        protected void delete_current_row(object sender, GridViewDeleteEventArgs e)
        {
            //TableCell cell = gvStore.Rows[e.RowIndex].Cells[1];

            //string id = cell.Text;

            //string query = "USP_DeleteCategory @category_name";

            //int isDeleted = DataProvider.Instance.ExecuteNonQuery(query, new object[] { category_name });

            //if (isDeleted > 0)
            //{
            //    LoadStore();
            //}
            //else
            //{
            //    Response.Write("<script type=\"text/javascript\">alert('Xóa không thành công~');</script>");
            //}
        }
    }
}