using GroupProject.Common;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace GroupProject.AdminDB
{
    public partial class EnterStore : System.Web.UI.Page
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
            gvStore.DataSource = DataProvider.Instance.ExecuteQuery("select * from [sales].stores");
            gvStore.DataBind();
        }

        protected void btnAdd_Click(object sender, EventArgs e)
        {
            string query = "USP_InsertStore @store_name , @phone , @email , @street , @city , @state , @zip_code";

            object[] arrInsert = new object[] { txtStore.Text, txtPhone.Text, txtEmail.Text, txtStreet.Text, txtCity.Text, txtState.Text, txtZipCode.Text };

            int isInsert = DataProvider.Instance.ExecuteNonQuery(query, arrInsert);
            if (isInsert > 0)
            {
                Response.Write("<script type=\"text/javascript\">alert('Thêm thành công~');</script>");
                LoadBrandProduct();
            }
            else
            {
                Page.ClientScript.RegisterStartupScript(this.GetType(), "Scripts", "<script>alert('Thêm không thành công!');</scripts>");
            }
        }

        protected void btnReset_Click(object sender, EventArgs e)
        {
            txtStore.Text = "";
            txtPhone.Text = "";
            txtEmail.Text = "";
            txtStreet.Text = "";
            txtCity.Text = "";
            txtState.Text = "";
            txtZipCode.Text = "";
        }

        protected void delete_current_row(object sender, GridViewDeleteEventArgs e)
        {
            TableCell cell = gvStore.Rows[e.RowIndex].Cells[1];

            int store_id = Convert.ToInt32(cell.Text);

            string query = "USP_DeleteStore @store_id";

            int isDeleted = DataProvider.Instance.ExecuteNonQuery(query, new object[] { store_id });

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
            txtStore.Text = gvStore.SelectedRow.Cells[2].Text;
            txtPhone.Text = gvStore.SelectedRow.Cells[3].Text;
            txtEmail.Text = gvStore.SelectedRow.Cells[4].Text;
            txtStreet.Text = gvStore.SelectedRow.Cells[5].Text;
            txtCity.Text = gvStore.SelectedRow.Cells[6].Text;
            txtState.Text = gvStore.SelectedRow.Cells[7].Text;
            txtZipCode.Text = gvStore.SelectedRow.Cells[8].Text;

        }

        protected void btnEdit_Click(object sender, EventArgs e)
        {
            int store_id = Convert.ToInt32(gvStore.SelectedRow.Cells[1].Text);

            string queryUpdate = "USP_UpdateStore @store_id , @store_name , @phone , @email , @street , @city , @state , @zip_code";

            object[] arrUpdate = new object[] { store_id, txtStore.Text, txtPhone.Text, txtEmail.Text, txtStreet.Text, txtCity.Text, txtState.Text, txtZipCode.Text };
            int isUpdate = DataProvider.Instance.ExecuteNonQuery(queryUpdate, arrUpdate);
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