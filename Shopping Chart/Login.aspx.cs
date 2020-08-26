using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

namespace Shopping_Chart
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
       
        }

        protected void loginbtn_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\v11.0;Initial Catalog=shopping;Integrated Security=True");
            SqlDataAdapter da = new SqlDataAdapter("select * from customdetail where emailid='" + logtxtbox.Text + "'and password='" + passtxtbox.Text + "'", con);
            DataTable dt = new DataTable();
            da.Fill(dt);
            if (dt.Rows.Count == 1)
            {
                Session["username"] = logtxtbox.Text;
                Response.Redirect("defaults.aspx");
                Label1.Text = "login successfully";
                Label1.ForeColor = System.Drawing.Color.Green;
            }
            else
            {
                Label1.Text = "invalid user";
                Label1.ForeColor = System.Drawing.Color.Red;
            }
        }
    }
}