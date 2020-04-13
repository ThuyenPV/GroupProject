using GroupProject.Common;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace GroupProject
{
    public partial class Index : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                LoadProducts();
            }
        }

        public void LoadProducts()
        {
            string query = "select product_id,product_name,list_price,image,Round(list_price*(RAND()*(1-0.2)+0.2),2) as discount from [production].products";
            DataTable listProduct = DataProvider.Instance.ExecuteQuery(query);
            rptFilter.DataSource = listProduct;
            rptFilter.DataBind();
        }
    }
}