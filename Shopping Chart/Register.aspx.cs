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
    public partial class Register : System.Web.UI.Page
    {
         SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\v11.0;Initial Catalog=shopping;Integrated Security=True");

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void regtxtbox_Click(object sender, EventArgs e)
        {
            con.Open();
            string gender = " ";
            if(male.Checked)
            {
                gender = "male";
            }
            else
            {
                gender = "female";
            }
           SqlCommand cmd = new SqlCommand("insert into customdetail values('" + Nametxtbox.Text + "','" + phnotxtbox.Text + "','" + emailtxtbox.Text + "','"+ gender +"','" + addresstxtbox.Text + "','" + passwordtxtbox.Text + "')", con);
           cmd.ExecuteNonQuery();
           Label1.Text = "registered successfully";
           Label1.ForeColor = System.Drawing.Color.Green;
            
        }
    }
}