using GroupProject.Common;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace GroupProject
{
    public partial class Cart : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                if (Session["product_id"] == null)
                {
                    Response.Redirect("Cart.aspx");
                }
                LoadProductIntoCart();
            }
        }

        public void LoadProductIntoCart()
        {
            int product_id = Convert.ToInt32(Session["product_id"]);
            string query = "USP_SelectProductIntoCart @product_id";
            DataList.DataSource = DataProvider.Instance.ExecuteQuery(query, new object[] { product_id });
            DataList.DataBind();
        }
    }
}