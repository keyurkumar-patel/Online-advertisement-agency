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

namespace project
{
    public partial class adminlogin : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
        {
            if ((TextBox1.Text == "") || (TextBox2.Text == ""))
            {
                Label1.Text = "Enter Login Details";
            }
            else if ((TextBox1.Text == "system") && (TextBox2.Text == "admin") || (TextBox1.Text == "SYSTEM") && (TextBox2.Text == "ADMIN"))
            {
                Response.Redirect("Adminpage.aspx");
            }
            else
            {
                Label1.Text = "Invalid Username & Password";
            }
        }
    }
}
