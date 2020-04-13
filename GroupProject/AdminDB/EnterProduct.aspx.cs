using GroupProject.Common;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace GroupProject.AdminDB
{
    public partial class EnterProduct : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                LoadBrandProduct();
            }
        }
        public void LoadBrandProduct()
        {
            gvProducts.DataSource = DataProvider.Instance.ExecuteQuery("select * from [production].products");
            gvProducts.DataBind();
        }

        protected void btnAdd_Click(object sender, EventArgs e)
        {
            string query = "USP_InsertProducts @product_name , @brand_id , @category_id , @model_year , @list_price , @image";
            int brand_id = dlBrand_name.SelectedIndex + 1;
            int category_id = dlCategory_name.SelectedIndex + 1;
            int isInsert = DataProvider.Instance.ExecuteNonQuery(query, new object[] { txtProduct_name.Text, brand_id, category_id, txtModel.Text, txtPrice.Text, txtImage.Text });
            if (isInsert > 0)
            {
                Response.Write("<script type=\"text/javascript\">alert('Thêm thành công~');</script>");

                //string script = "alert(\"Thêm thành công!\");";
                //ScriptManager.RegisterStartupScript(this, GetType(), "Thông báo!", script, true);

                LoadBrandProduct();
            }
            else
            {
                Page.ClientScript.RegisterStartupScript(this.GetType(), "Scripts", "<script>alert('Thêm không thành công!');</scripts>");
            }
        }

        protected void btnReset_Click(object sender, EventArgs e)
        {
            txtProduct_name.Text = "";
            txtImage.Text = "";
            txtPrice.Text = "";
            txtModel.Text = "";
        }

        protected void delete_current_row(object sender, GridViewDeleteEventArgs e)
        {
            TableCell cell = gvProducts.Rows[e.RowIndex].Cells[1];

            int product_id = Convert.ToInt32(cell.Text);

            string query = "USP_DeleteProductByName @product_id";

            int isDeleted = DataProvider.Instance.ExecuteNonQuery(query, new object[] { product_id });

            if (isDeleted > 0)
            {
                Response.Write("<script type=\"text/javascript\">alert('Xóa thành công~');</script>");
                LoadBrandProduct();
            }
            else
            {
                Response.Write("<script type=\"text/javascript\">alert('Xóa không thành công~');</script>");
            }
        }

        protected void select_current_row(object sender, EventArgs e)
        {
            txtProduct_name.Text = gvProducts.SelectedRow.Cells[1].Text;
            int brand_id = Convert.ToInt32(gvProducts.SelectedRow.Cells[3].Text);
            int category_id = Convert.ToInt32(gvProducts.SelectedRow.Cells[4].Text);

            dlBrand_name.SelectedIndex = brand_id - 1;

            dlCategory_name.SelectedIndex = category_id - 1;

            txtModel.Text = gvProducts.SelectedRow.Cells[4].Text;
            txtPrice.Text = gvProducts.SelectedRow.Cells[5].Text;
            txtImage.Text = gvProducts.SelectedRow.Cells[6].Text;
        }

        protected void btnEdit_Click(object sender, EventArgs e)
        {
            int product_id = Convert.ToInt32(gvProducts.SelectedRow.Cells[2].Text);

            int category_id = dlCategory_name.SelectedIndex + 1;
            int brand_id = dlBrand_name.SelectedIndex + 1;

            string queryUpdate = "USP_UpdateProductByName @product_id , @product_name , @brand_id , @category_id , @model_year , @list_price , @image";

            int isUpdate = DataProvider.Instance.ExecuteNonQuery(queryUpdate, new object[] { product_id, txtProduct_name.Text, brand_id, category_id, txtModel.Text, txtPrice.Text, txtImage.Text });
            if (isUpdate > 0)
            {
                Response.Write("<script type=\"text/javascript\">alert('Cập nhật thành công!');</script>");
                LoadBrandProduct();
            }
            else
            {
                Response.Write("<script type=\"text/javascript\">alert('Cập nhật không thành công!');</script>");
            }
        }
    }
}