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
    public partial class Banner : System.Web.UI.Page
    {
        SqlConnection con;
        SqlDataReader dr;
        SqlCommand cmd;
        string conn;
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
            cmd = new SqlCommand("select name,uid from login where username='" + Label2.Text + "'  ", con);
            dr = cmd.ExecuteReader();
            while (dr.Read())
            {

                Label9.Text = dr["name"].ToString();
                Label9.Visible = false;
                Label15.Text = dr["uid"].ToString();
                Label15.Visible = false;
            }
            con.Close();
            if (!Page.IsPostBack)
            {

                DataTable dt = new DataTable();
                con.Open();
                cmd = new SqlCommand("select distinct state from adminbanner", con);
                cmd.ExecuteNonQuery();
                SqlDataAdapter ad = new SqlDataAdapter(cmd);
                ad.Fill(dt);
                //DropDownList1.Items.Clear();

                if (dt.Rows.Count > 0)
                {
                    for (int i = 0; i < dt.Rows.Count; i++)
                    {
                        string val = dt.Rows[i]["state"].ToString();
                        DropDownList1.Items.Add(val);

                    }

                }
                con.Close();

            }


        }
        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {
            DataTable dt = new DataTable();
            con.Open();

            cmd = new SqlCommand("select distinct location from adminbanner where state='" + DropDownList1.Text + "'", con);


            cmd.ExecuteNonQuery();
            SqlDataAdapter ad = new SqlDataAdapter(cmd);
            ad.Fill(dt);

            DropDownList11.Items.Clear();
            DropDownList11.Items.Add("Select One ");
            if (dt.Rows.Count > 0)
            {
                for (int i = 0; i < dt.Rows.Count; i++)
                {
                    string val = dt.Rows[i]["location"].ToString();

                    DropDownList11.Items.Add(val);

                }

            }
            con.Close();


        }




        protected void DropDownList11_SelectedIndexChanged(object sender, EventArgs e)
        {
            DataTable dt = new DataTable();
            con.Open();
            cmd = new SqlCommand("select distinct place from adminbanner where location='" + DropDownList11.Text + "'", con);


            cmd.ExecuteNonQuery();
            SqlDataAdapter ad = new SqlDataAdapter(cmd);
            ad.Fill(dt);

            DropDownList18.Items.Clear();
            DropDownList18.Items.Add("Select One ");
            if (dt.Rows.Count > 0)
            {
                for (int i = 0; i < dt.Rows.Count; i++)
                {
                    string val = dt.Rows[i]["place"].ToString();

                    DropDownList18.Items.Add(val);

                }

            }
            con.Close();
        }

        protected void DropDownList19_SelectedIndexChanged(object sender, EventArgs e)
        {
            Label17.Visible = false;
            if ((DropDownList13.Text == "MONTH") || (DropDownList16.Text == "MONTH"))
            {
                Label16.Visible = true;
                Label16.Text = "Select Advertising Duration";
            }
            else
            {
                Label16.Visible = false;
            }
        }
        protected void RadioButtonList1_SelectedIndexChanged(object sender, EventArgs e)
        {
            if ((DropDownList19.Text == "NONE") || (DropDownList1.Text == "Select One") || (DropDownList11.Text == "NONE") || (DropDownList18.Text == "NONE") || (DropDownList12.Text == "DAY") || (DropDownList13.Text == "MONTH") || (DropDownList14.Text == "YEAR") || (DropDownList15.Text == "DAY") || (DropDownList16.Text == "MONTH") || (DropDownList17.Text == "YEAR"))
            {
                Label16.Visible = false;
                Label17.Visible = true;
                Label17.Text = "Fill all above Entries properly";

            }
            else
            {
                Label17.Visible = false;
                string str = DropDownList19.SelectedItem.ToString();
                string str1 = RadioButtonList1.SelectedItem.ToString();
                if ((str == "Flex") && (str1 == "SMALL"))
                {
                    TextBox1.Text = "";
                    TextBox1.Text = "Rs 1500";
                }
                if ((str == "Flex") && (str1 == "MEDIUM"))
                {
                    TextBox1.Text = "";
                    TextBox1.Text = "Rs 2500";
                }
                if ((str == "Flex") && (str1 == "LARGE"))
                {
                    TextBox1.Text = "";
                    TextBox1.Text = "Rs 4000";
                }
                if ((str == "Cloth") && (str1 == "SMALL"))
                {
                    TextBox1.Text = "";
                    TextBox1.Text = "Rs 1000";
                }
                if ((str == "Cloth") && (str1 == "MEDIUM"))
                {
                    TextBox1.Text = "";
                    TextBox1.Text = "Rs 2000";
                }
                if ((str == "Cloth") && (str1 == "LARGE"))
                {
                    TextBox1.Text = "";
                    TextBox1.Text = "Rs 3000";
                }

            }
        }
        protected void DropDownList13_SelectedIndexChanged(object sender, EventArgs e)
        {
            Label16.Visible = false;

        }
        protected void DropDownList16_SelectedIndexChanged(object sender, EventArgs e)
        {

            Label16.Visible = false;
        }
        protected void Button1_Click(object sender, EventArgs e)
        {
            if ((DropDownList1.Text == "Select One") || (DropDownList11.Text == "NONE") || (DropDownList18.Text == "NONE") || (TextBox1.Text == ""))
            {
                Label18.Text = "Fill all the Entries before Submitting";
            }
            else if (FileUpload1.PostedFile.FileName == "")
            {
                Label18.Visible = true;
                Label18.Text = "Upload the File";
            }
            else
            {

                Label18.Visible = false;
                string a;
                if (RadioButtonList1.SelectedItem.ToString() == "SMALL")
                {
                    a = "small";

                }
                else if (RadioButtonList1.SelectedItem.ToString() == "MEDIUM")
                {
                    a = "medium";

                }
                else
                {
                    a = "large";

                }




                con.Open();
                System.IO.FileInfo filename = new System.IO.FileInfo(FileUpload1.PostedFile.FileName);
                string sql = "Insert into banner(cid,name,state,location,place,dfrom,dto,btype,bsize,price,content,uploadcontent) Values('" + Label15.Text + "','" + Label9.Text + "','" + DropDownList1.Text + "','" + DropDownList11.Text + "','" + DropDownList18.Text + "','" + DropDownList12.Text + "/" + DropDownList13.Text + "/" + DropDownList14.Text + "','" + DropDownList15.Text + "/" + DropDownList16.Text + "/" + DropDownList17.Text + "','" + DropDownList19.Text + "','" + a + "','" + TextBox1.Text + "',@content,@uploadcontent)";
                cmd = con.CreateCommand();
                cmd.CommandType = CommandType.Text;
                cmd.CommandText = sql;
                byte[] bData = new byte[(FileUpload1.PostedFile.InputStream.Length)];
                FileUpload1.PostedFile.InputStream.Read(bData, 0, bData.Length);
                cmd.Parameters.Add("@content", bData);
                cmd.Parameters.Add("@uploadcontent", filename.Name);
                int numberOfRowsInserted = cmd.ExecuteNonQuery();
                Label19.Text = "Your registration is Successfull";
            }
        }

    }
}
