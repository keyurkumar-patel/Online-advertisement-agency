using System;
using System.Data;
using System.Configuration;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;
using System.Data.SqlClient;

namespace project
{
    public partial class Home : System.Web.UI.Page
    {
        SqlConnection con;
        SqlDataReader dr;
        SqlCommand cmd;
        string conn;
        protected void Page_Load(object sender, EventArgs e)
        {
            display();
        }
        public void display()
        {
            conn = ConfigurationManager.ConnectionStrings["myconn"].ConnectionString;
            con = new SqlConnection(conn);
        }

            protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
        {
            if ((TextBox1.Text == "") && (TextBox2.Text == ""))
            {
                Label1.Text = "Enter Username and Password to Login";
            }
            else
            {
                con.Open();
                cmd = new SqlCommand("select * from login where username='" + TextBox1.Text + "' and password='" + TextBox2.Text + "'", con);
                dr = cmd.ExecuteReader();
                if (dr.HasRows)
                {
                    
                    while (dr.Read())
                    {

                        TextBox1.Text = dr["username"].ToString();
                        Session["username"] = TextBox1.Text;
                        Server.Transfer("Mediaselection.aspx");
                        TextBox1.Text = "";
                        TextBox2.Text = "";
                    }
              }
              else
              {
                    Label1.Text = "Invalid Username and Password";
                    TextBox1.Text = "";
                    TextBox2.Text = "";
              }
            }
       }
    }
}