using GroupProject.Common;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace GroupProject
{
    public partial class DetailProducts : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                if (Request.QueryString["id"] == null)
                {
                    Response.Redirect("Index.aspx");
                }
                LoadDetailProduct();
            }
        }

        public void LoadDetailProduct()
        {
            int id = Convert.ToInt32(Request.QueryString["id"]);
            Session["product_id"] = id;
            string query = "USP_SelectProductById @product_id";
            DetailView.DataSource = DataProvider.Instance.ExecuteQuery(query, new object[] { id });
            DetailView.DataBind();
        }
    }
}