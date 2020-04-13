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
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
        }

        protected void btnLogin_Click(object sender, EventArgs e)
        {
            string query = "USP_LoginAccount @username , @password , @type";
            DataTable isAdmin = DataProvider.Instance.ExecuteQuery(query, new object[] { txtEmail.Text, txtPassword.Text, 0 });

            DataTable isUser = DataProvider.Instance.ExecuteQuery(query, new object[] { txtEmail.Text, txtPassword.Text, 1 });

            if (isAdmin.Rows.Count > 0)
            {
                Response.Redirect("Admin.aspx");
            }
            else if (isUser.Rows.Count > 0)
            {
                Response.Redirect("Index.aspx");
            }
            else
            {
                Response.Write("<script type=\"text/javascript\">alert('Tên đăng nhập hoặc mật khẩu không chính xác!');</script>");

            }
        }
    }
}