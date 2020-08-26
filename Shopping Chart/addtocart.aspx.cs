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
    public partial class addtocart : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                if (Session["buyitems"] == null)
                {
                    Button1.Enabled = false;

                }
                else
                {
                    Button1.Enabled = true;
                }

                //adding product to gridview

                Session["addproduct"] = "false";
                DataTable dt = new DataTable();
                DataRow dr;
                dt.Columns.Add("sno");
                dt.Columns.Add("pid");
                dt.Columns.Add("pname");
                dt.Columns.Add("price");
                dt.Columns.Add("pimage");
                dt.Columns.Add("pquantity");
                dt.Columns.Add("ptotal");

                if (Request.QueryString["id"] != null)
                {
                    if (Session["buyitems"] == null)
                    {
                        dr = dt.NewRow();
                        SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\v11.0;Initial Catalog=cart;Integrated Security=True");

                        SqlDataAdapter da = new SqlDataAdapter("select * from product where pid=" + Request.QueryString["id"], con);
                        DataSet ds = new DataSet();
                        da.Fill(ds);

                        dr["sno"] = 1;
                        dr["pid"] = ds.Tables[0].Rows[0]["pid"].ToString();
                        dr["pname"] = ds.Tables[0].Rows[0]["pname"].ToString();
                        dr["price"] = ds.Tables[0].Rows[0]["price"].ToString();
                        dr["pimage"] = ds.Tables[0].Rows[0]["pimage"].ToString();
                        dr["pquantity"] = Request.QueryString["quantity"];

                        int price = Convert.ToInt32(ds.Tables[0].Rows[0]["price"].ToString());
                        int quantity = Convert.ToInt32(Request.QueryString["quantity"].ToString());
                        int totalprice = price * quantity;
                        dr["ptotal"] = totalprice;

                        dt.Rows.Add(dr);
                        GridView1.DataSource = dt;
                        GridView1.DataBind();
                        Session["buyitems"] = dt;
                        Button1.Enabled = true;

                        GridView1.FooterRow.Cells[5].Text = "total amout";
                        GridView1.FooterRow.Cells[6].Text = grandtotal().ToString();
                        Response.Redirect("addtocart.aspx");


                    }
                    else
                    {
                        dt = (DataTable)Session["buyitems"];
                        int sr;
                        sr = dt.Rows.Count;

                        dr = dt.NewRow();
                        SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\v11.0;Initial Catalog=cart;Integrated Security=True");

                        SqlDataAdapter da = new SqlDataAdapter("select * from product where pid=" + Request.QueryString["id"], con);
                        DataSet ds = new DataSet();
                        da.Fill(ds);

                        dr["sno"] = sr + 1;
                        dr["pid"] = ds.Tables[0].Rows[0]["pid"].ToString();
                        dr["pname"] = ds.Tables[0].Rows[0]["pname"].ToString();
                        dr["price"] = ds.Tables[0].Rows[0]["price"].ToString();
                        dr["pimage"] = ds.Tables[0].Rows[0]["image"].ToString();
                        dr["pquantity"] = Request.QueryString["quantity"];

                        int price = Convert.ToInt32(ds.Tables[0].Rows[0]["price"].ToString());
                        int quantity = Convert.ToInt16(Request.QueryString["quantity"].ToString());
                        int totalprice = price * quantity;
                        dr["ptotal"] = totalprice;

                        dt.Rows.Add(dr);
                        GridView1.DataSource = dt;
                        GridView1.DataBind();
                        Session["buyitems"] = dt;
                        Button1.Enabled = true;

                        GridView1.FooterRow.Cells[5].Text = "total amout";
                        GridView1.FooterRow.Cells[6].Text = grandtotal().ToString();
                        Response.Redirect("addtocart.aspx");

                    }
                }
                else
                {
                    dt = (DataTable)Session["buyitems"];
                    GridView1.DataSource = dt;
                    GridView1.DataBind();
                    if (GridView1.Rows.Count > 0)
                    {
                        GridView1.FooterRow.Cells[5].Text = "total amout";
                        GridView1.FooterRow.Cells[6].Text = grandtotal().ToString();
                    }

                }
            }
            string orderdate = DateTime.Now.ToShortDateString();
            Session["orderdate"] = orderdate;
            orderid();
        }


            // calculate final price

            public int  grandtotal()
            {
                DataTable dt = new DataTable();
                dt = (DataTable)Session["buyitems"];
                int nrow = dt.Rows.Count;
                int i = 0;
                int totalprice = 0;
                while(i<nrow)
                {
                    totalprice = totalprice + Convert.ToInt32(dt.Rows[i]["pprice"].ToString());

                    i=i+1;
                }
                return totalprice;
            }
        public void orderid()
        {
            string alpha = "abcdefghijklmnopqrstuvwxyz123456789";
            Random r = new Random();
            char[] myarray = new char[5];
            for(int i = 0; i< 5; i++)
            {
                myarray[i] = alpha[(int)(35 * r.NextDouble())];

            }
            string orderid;
            orderid = "order_id:" + DateTime.Now.Hour.ToString() + DateTime.Now.Second.ToString()
                + DateTime.Now.Day.ToString() +DateTime.Now.Month.ToString() +DateTime.Now.Year.ToString()
                +new string(myarray)+ DateTime.Now.Minute.ToString() + DateTime.Now.Second.ToString();
            Session["orderid"]=orderid;

        }

        protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            {
                DataTable dt = new DataTable();
                dt = (DataTable)Session["buy items"];

                for(int i=0; i<=dt.Rows.Count-1;i++)
                {
                    int sr;
                    int sr1;
                    string qdata;
                    string dtdata;
                    sr = Convert.ToInt32(dt.Rows[i]["sno"].ToString());
                    TableCell cell = GridView1.Rows[e.RowIndex].Cells[0];
                    qdata = cell.Text;
                    dtdata = sr.ToString();
                    sr1= Convert.ToInt32(qdata);

                    if(sr == sr1)
                    {
                        dt.Rows[i].Delete();
                        dt.AcceptChanges();
                        // items is deleted in  chart
                        break;
                    }
                }
                //after that

                for(int i =1;i<=dt.Rows.Count; i++)
                {
                    dt.Rows[i- 1]["sno"] = 1;
                    dt.AcceptChanges();


                }
                Session["buy items"]= dt;
                Response.Redirect("addtocart");

            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            DataTable dt;
            dt = (DataTable)Session["buyitems"];
            for(int i =0;i<=dt.Rows.Count -1;i++)
            {
                SqlConnection conn = new SqlConnection(@"Data Source=(LocalDB)\v11.0;Initial Catalog=final;Integrated Security=True");
                conn.Open();

                SqlCommand cmd = new SqlCommand("insert into orderdetails(orderid,sno,productid,productname,price,quantity,orderdate) values('"  + Session["orderid"]+"','" + dt.Rows[i]["sno"]+ "','" + dt.Rows[i]["pid"]+ "','" + dt.Rows[i]["pname"]+ "','" + dt.Rows[i]["pprice"]+ "','" + dt.Rows[i]["pquantity"]+ "','" + dt.Rows[i]["orderdate"]+ "')",conn);
                  
                cmd.ExecuteNonQuery();
                conn.Close();
                    
            }
            //after that move to checkout page
            if(Session["username"]== null)
            {
                Response.Redirect("login.aspx");
            }
            else
            {
                if(GridView1.Rows.Count.ToString() =="0")
                {
                   Response.Write("<script>alert('Shopping_Chart is empty');</script>");
                }
                else
                {
                    Response.Redirect("Checkoutpage.aspx");
                }
            }
        }
    }
}