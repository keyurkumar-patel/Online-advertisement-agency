using System;
using System.Collections;
using System.Configuration;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;
using System.Xml.Linq;
using System.Data.SqlClient;

namespace project
{
    public partial class sucessful_register : System.Web.UI.Page
    {
        SqlConnection con;
        SqlDataReader dr;
        SqlCommand cmd;
        public string conn;
        public void display()
        {
            conn = ConfigurationSettings.AppSettings["ConnectionString"];
            con = new SqlConnection(conn);
        }
        protected void Page_Load(object sender, EventArgs e)
        {
            Label2.Text = Session["name"].ToString();
            Label3.Text = Session["username"].ToString();
            //  Label4.Text = Session["password"].ToString();
            Label5.Text = Session["email"].ToString();
            Label1.Text = Session["uid"].ToString();
            display();
           
        }
    }
}
