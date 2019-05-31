using System;
using System.Data;
using System.Configuration;
using System.Collections;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;
using System.Data.SqlClient;

namespace project
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        SqlConnection con;
        SqlDataReader dr;
        SqlCommand cmd;
        public string conn;
        public void display()
        {
            conn = ConfigurationManager.ConnectionStrings["myconn"].ConnectionString;

            con = new SqlConnection(conn);
        }
        protected void Page_Load(object sender, EventArgs e)
        {
            //Label2.Text = Session["username"].ToString();
            display();
           
            con.Open();
            cmd = new SqlCommand("select username,uid from login where username='" + Label2.Text + "'  ", con);
            dr = cmd.ExecuteReader();
            while (dr.Read())
            {

                Label15.Text = dr["username"].ToString();
                Label15.Visible = false;
                Label16.Text = dr["uid"].ToString();
                Label16.Visible = false;
            }
            con.Close();
        }
    }
}
