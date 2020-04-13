using GroupProject.Common;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace GroupProject.AdminDB
{
    public partial class EnterBrand : System.Web.UI.Page
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
            gvBrand.DataSource = DataProvider.Instance.ExecuteQuery("select * from [production].brands");
            gvBrand.DataBind();
        }

        protected void btnAddBrandClick(object sender, EventArgs e)
        {
            string query = "USP_InsertBrands @brand_name";
            int isInsert = DataProvider.Instance.ExecuteNonQuery(query, new object[] { txtBrand.Text });
            if (isInsert > 0)
            {
                //Response.Write("<script type=\"text/javascript\">alert('Thêm thành công~');</script>");

                //string script = "alert(\"Thêm thành công!\");";
                //ScriptManager.RegisterStartupScript(this, GetType(), "Thông báo!", script, true);

                LoadBrandProduct();
            }
            else
            {
                Page.ClientScript.RegisterStartupScript(this.GetType(), "Scripts", "<script>alert('Thêm không thành công!');</scripts>");
            }

        }

        protected void btnResetClick(object sender, EventArgs e)
        {
            txtBrand.Text = "";
        }


        protected void DeleteBrandClick(object sender, GridViewDeleteEventArgs e)
        {
            TableCell cell = gvBrand.Rows[e.RowIndex].Cells[1];

            string brand_id = cell.Text;

            string query = "USP_DeleteBrands @brand_id";

            int isDeleted = DataProvider.Instance.ExecuteNonQuery(query, new object[] { brand_id });

            if (isDeleted > 0)
            {
                LoadBrandProduct();
            }
            else
            {
                Response.Write("<script type=\"text/javascript\">alert('Xóa không thành công~');</script>");
            }
        }

        protected void select_current_row(object sender, EventArgs e)
        {
            txtBrand.Text = gvBrand.SelectedRow.Cells[2].Text;
        }

        protected void btnUpdateClick(object sender, EventArgs e)
        {
            int brand_id = Convert.ToInt32(gvBrand.SelectedRow.Cells[1].Text);

            string queryUpdate = "USP_UpdateBrands @brand_id , @brand_name";
            int isUpdate = DataProvider.Instance.ExecuteNonQuery(queryUpdate, new object[] { brand_id, txtBrand.Text });
            if (isUpdate > 0)
            {
                LoadBrandProduct();
            }
            else
            {
                Response.Write("<script type=\"text/javascript\">alert('Cập nhật không thành công!');</script>");
            }
        }
    }
}