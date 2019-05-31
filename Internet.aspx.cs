using System;
using System.Collections;
using System.Configuration;
using System.Data;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Data.SqlClient;

namespace project
{
    public partial class Internet : System.Web.UI.Page
    {
        SqlConnection con;
        SqlDataReader dr;
        SqlCommand cmd;
        string a, b, c, conn;
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

                Label15.Text = dr["name"].ToString();
                Label15.Visible = false;
                Label16.Text = dr["uid"].ToString();
                Label16.Visible = false;
            }
            con.Close();
            if (!Page.IsPostBack)
            {

                DataTable dt = new DataTable();
                con.Open();
                cmd = new SqlCommand("select website from admininternet", con);
                cmd.ExecuteNonQuery();
                SqlDataAdapter ad = new SqlDataAdapter(cmd);
                ad.Fill(dt);
                //DropDownList1.Items.Clear();

                if (dt.Rows.Count > 0)
                {
                    for (int i = 0; i < dt.Rows.Count; i++)
                    {
                        string val = dt.Rows[i]["website"].ToString();
                        DropDownList11.Items.Add(val);

                    }

                }
                con.Close();

            }
        }
        protected void RadioButtonList1_SelectedIndexChanged(object sender, EventArgs e)
        {


            string str3 = DropDownList19.SelectedItem.ToString();
            string str5 = RadioButtonList1.SelectedItem.ToString();
            if ((str3 == "50x50") && (str5 == "STATIC"))
            {
                TextBox1.Text = "Rs 1500";
            }
            if ((str3 == "50x50") && (str5 == "DYNAMIC"))
            {
                TextBox1.Text = "Rs 3000";
            }

            if ((str3 == "100x100") && (str5 == "STATIC"))
            {
                TextBox1.Text = "Rs 2500";
            }
            if ((str3 == "100x100") && (str5 == "DYNAMIC"))
            {
                TextBox1.Text = "Rs 5000";
            }



        }
        protected void Button4_Click(object sender, EventArgs e)
        {
            if (DropDownList11.Text == "Select One")
            {
                Label21.Text = "Select WebSite";
            }

            else if ((TextBox1.Text == ""))
            {
                Label21.Visible = true;
                Label21.Text = "Fill all the fields before submitting";
            }

            else if ((DropDownList12.Text == "DAY") || (DropDownList13.Text == "MONTH") || (DropDownList14.Text == "YEAR") || (DropDownList15.Text == "DAY") || (DropDownList16.Text == "MONTH") || (DropDownList17.Text == "YEAR"))
            {
                Label21.Text = "Select Advertising date";
            }
            else if (DropDownList19.Text == "NONE")
            {
                Label21.Text = "Select AD Size ";
            }


            else if (FileUpload1.PostedFile.FileName == "")
            {
                Label21.Visible = true;
                Label21.Text = "Upload the File";
            }
            else
            {
                //string b, c;


                if (RadioButtonList1.SelectedItem.ToString() == "STATIC")
                {
                    a = "STATIC";

                }
                else if (RadioButtonList1.SelectedItem.ToString() == "DYNAMIC")
                {
                    a = "DYNAMIC";

                }

                con.Open();
                System.IO.FileInfo filename = new System.IO.FileInfo(FileUpload1.PostedFile.FileName);
                string sql = "Insert into internet(cid,name,website,dfrom,dto,adsize,pattern,price,content,uploadcontent) Values('" + Label16.Text + "','" + Label15.Text + "','" + DropDownList11.Text + "','" + DropDownList12.Text + "/" + DropDownList13.Text + "/" + DropDownList14.Text + "','" + DropDownList15.Text + "/" + DropDownList16.Text + "/" + DropDownList17.Text + "','" + DropDownList19.Text + "','" + a + "','" + TextBox1.Text + "',@content,@uploadcontent)";
                cmd = con.CreateCommand();
                cmd.CommandType = CommandType.Text;
                cmd.CommandText = sql;
                byte[] bData = new byte[(FileUpload1.PostedFile.InputStream.Length)];
                FileUpload1.PostedFile.InputStream.Read(bData, 0, bData.Length);
                cmd.Parameters.Add("@content", bData);
                cmd.Parameters.Add("@uploadcontent", filename.Name);
                int numberOfRowsInserted = cmd.ExecuteNonQuery();
                Label22.Visible = true;
                Label22.Text = "Your Registration is Successfull";
            }
        }
    }
}
