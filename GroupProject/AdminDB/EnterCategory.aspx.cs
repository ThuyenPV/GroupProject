using GroupProject.Common;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace GroupProject.AdminDB
{
    public partial class EnterCategory : System.Web.UI.Page
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
            gvCategory.DataSource = DataProvider.Instance.ExecuteQuery("select * from [production].categories");
            gvCategory.DataBind();
        }

        protected void btnAddCategoryClick(object sender, EventArgs e)
        {
            string query = "USP_InsertCategory @category_name";
            int isInsert = DataProvider.Instance.ExecuteNonQuery(query, new object[] { txtCategory.Text });
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

        protected void btnResetClick(object sender, EventArgs e)
        {
            txtCategory.Text = "";
        }


        protected void DeleteCategoryClick(object sender, GridViewDeleteEventArgs e)
        {
            TableCell cell = gvCategory.Rows[e.RowIndex].Cells[2];

            string category_name = cell.Text;

            string query = "USP_DeleteCategory @category_name";

            int isDeleted = DataProvider.Instance.ExecuteNonQuery(query, new object[] { category_name });

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
            txtCategory.Text = gvCategory.SelectedRow.Cells[2].Text;
        }

        protected void btnUpdateClick(object sender, EventArgs e)
        {
            int category_id = Convert.ToInt32(gvCategory.SelectedRow.Cells[1].Text);

            string queryUpdate = "USP_UpdateBrandsCategory @category_id , @category_name";
            int isUpdate = DataProvider.Instance.ExecuteNonQuery(queryUpdate, new object[] { category_id, txtCategory.Text });
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