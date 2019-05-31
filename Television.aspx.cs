using System;
using System.Data;
using System.Configuration;
using System.ComponentModel;
using System.Collections;
using System.Web;
using System.Web.Security;
using System.Drawing;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;
using System.Data.SqlClient;


namespace project
{
    public partial class Television : System.Web.UI.Page
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
            // Label2.Text = Session["username"].ToString();
            display();

            con.Open();
            cmd = new SqlCommand("select name,uid from login where username='" + Label2.Text + "'  ", con);
            dr = cmd.ExecuteReader();
            while (dr.Read())
            {

                Label18.Text = dr["name"].ToString();
                Label18.Visible = false;
                Label17.Text = dr["uid"].ToString();
                Label17.Visible = false;
            }
            con.Close();


            //Label2.Text = Session["username"].ToString();
            //  con = new SqlConnection("server=SUTHAHAR-F92F17\\TEST;database=sample;user id=sa;pwd=sukitha");
            //To ADD items to the dropdownlistbox from the adminradio table during runtime
            if (!Page.IsPostBack)
            {

                DataTable dt = new DataTable();
                con.Open();
                cmd = new SqlCommand("select distinct station from admintv", con);
                cmd.ExecuteNonQuery();
                SqlDataAdapter ad = new SqlDataAdapter(cmd);
                ad.Fill(dt);
                //DropDownList1.Items.Clear();

                if (dt.Rows.Count > 0)
                {
                    for (int i = 0; i < dt.Rows.Count; i++)
                    {
                        string val = dt.Rows[i]["station"].ToString();
                        DropDownList1.Items.Add(val);

                    }

                }
                con.Close();

            }
        }




        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {
            TextBox2.Text = "";
            TextBox4.Text = "";
            Label19.Visible = false;
            DataTable dt = new DataTable();
            con.Open();
            cmd = new SqlCommand("select program from admintv where station='" + DropDownList1.Text + "'", con);


            cmd.ExecuteNonQuery();
            SqlDataAdapter ad = new SqlDataAdapter(cmd);
            ad.Fill(dt);

            DropDownList18.Items.Clear();
            DropDownList18.Items.Add("Select One ");
            if (dt.Rows.Count > 0)
            {
                for (int i = 0; i < dt.Rows.Count; i++)
                {
                    string val = dt.Rows[i]["program"].ToString();

                    DropDownList18.Items.Add(val);

                }

            }
            con.Close();


        }

        protected void DropDownList18_SelectedIndexChanged(object sender, EventArgs e)
        {
            //DataTable dt = new DataTable();
            con.Open();

            cmd = new SqlCommand("select pduration,convert(varchar,ptime,108)AS ptime from admintv where program='" + DropDownList18.Text + "'", con);

            //cmd.ExecuteNonQuery();
            // SqlDataAdapter ad = new SqlDataAdapter(cmd);
            //ad.Fill(dt);



            dr = cmd.ExecuteReader();
            while (dr.Read())
            {

                TextBox2.Text = dr["ptime"].ToString();
                TextBox4.Text = dr["pduration"].ToString();
                Label16.Visible = false;
            }


            con.Close();


        }



        protected void DropDownList19_SelectedIndexChanged(object sender, EventArgs e)
        {
            Label15.Visible = false;
            if ((DropDownList1.Text == "Select One") || (DropDownList18.Text == "NONE") || (DropDownList12.Text == "DAY") || (DropDownList13.Text == "MONTH") || (DropDownList14.Text == "YEAR") || (DropDownList15.Text == "DAY") || (DropDownList16.Text == "MONTH") || (DropDownList17.Text == "YEAR"))
            {
                Label16.Visible = true;
                Label16.Text = "Select the Station,Program,AD Date.";
            }
            else
            {
                Label16.Visible = false;
            }

        }
        protected void RadioButtonList1_SelectedIndexChanged(object sender, EventArgs e)
        {
            Label16.Visible = false;
            if (DropDownList19.Text == "NONE")
            {
                Label19.Visible = false;
                Label15.Visible = true;
                Label15.Text = "Select Ad Duration";

            }
            else
            {
                Label15.Visible = false;
                string str = DropDownList19.SelectedItem.ToString();
                string str1 = RadioButtonList1.SelectedItem.ToString();
                if ((str == "5sec") && (str1 == "nil"))
                {
                    TextBox1.Text = "";
                    TextBox1.Text = "Rs 5000";
                }
                if ((str == "5sec") && (str1 == "2 Times"))
                {
                    TextBox1.Text = "";
                    TextBox1.Text = "Rs 7000";
                }
                if ((str == "5sec") && (str1 == "3 Times"))
                {
                    TextBox1.Text = "";
                    TextBox1.Text = "Rs 10000";
                }
                if ((str == "5sec") && (str1 == "4 Times"))
                {
                    TextBox1.Text = "";
                    TextBox1.Text = "Rs 12000";
                }
                if ((str == "10sec") && (str1 == "nil"))
                {
                    TextBox1.Text = "";
                    TextBox1.Text = "Rs 6000";
                }
                if ((str == "10sec") && (str1 == "2 Times"))
                {
                    TextBox1.Text = "";
                    TextBox1.Text = "Rs 8000";
                }
                if ((str == "10sec") && (str1 == "3 Times"))
                {
                    TextBox1.Text = "";
                    TextBox1.Text = "Rs 12000";
                }
                if ((str == "10sec") && (str1 == "4 Times"))
                {
                    TextBox1.Text = "";
                    TextBox1.Text = "Rs 14000";
                }
                if ((str == "15sec") && (str1 == "nil"))
                {
                    TextBox1.Text = "";
                    TextBox1.Text = "Rs 8000";
                }
                if ((str == "15sec") && (str1 == "2 Times"))
                {
                    TextBox1.Text = "";
                    TextBox1.Text = "Rs 10000";
                }
                if ((str == "15sec") && (str1 == "3 Times"))
                {
                    TextBox1.Text = "";
                    TextBox1.Text = "Rs 15000";
                }
                if ((str == "15sec") && (str1 == "4 Times"))
                {
                    TextBox1.Text = "";
                    TextBox1.Text = "Rs 17000";
                }
            }

        }
        protected void Button4_Click(object sender, EventArgs e)
        {
            if ((TextBox1.Text == ""))
            {
                Label19.Visible = true;
                Label19.Text = "Fill all the fields before submitting";
            }

            else if (FileUpload1.PostedFile.FileName == "")
            {
                Label19.Visible = true;
                Label19.Text = "Upload the File";
            }

            else if (DropDownList19.Text == "NONE")
            {
                Label15.Visible = true;
                Label15.Text = "Select Ad Duration";
            }
            else
            {
                string a;
                if (RadioButtonList1.SelectedItem.ToString() == "nil")
                {
                    a = "nil";

                }
                else if (RadioButtonList1.SelectedItem.ToString() == "2 Times")
                {
                    a = "2 Times";

                }
                else if (RadioButtonList1.SelectedItem.ToString() == "3 Times")
                {
                    a = "3 Times";

                }
                else
                {
                    a = "4 Times";

                }
                con.Open();
                System.IO.FileInfo filename = new System.IO.FileInfo(FileUpload1.PostedFile.FileName);
                string sql = "Insert into television(cid,name,station,dfrom,dto,program,btime,bduration,adduration,repeat,price,content,uploadcontent) Values('" + Label17.Text + "','" + Label18.Text + "','" + DropDownList1.Text + "','" + DropDownList12.Text + "/" + DropDownList13.Text + "/" + DropDownList14.Text + "','" + DropDownList15.Text + "/" + DropDownList16.Text + "/" + DropDownList17.Text + "','" + DropDownList18.Text + "','" + TextBox2.Text + "','" + TextBox4.Text + "','" + DropDownList19.Text + "','" + a + "','" + TextBox1.Text + "',@content,@uploadcontent)";
                cmd = con.CreateCommand();
                cmd.CommandType = CommandType.Text;
                cmd.CommandText = sql;

                byte[] bData = new byte[(FileUpload1.PostedFile.InputStream.Length)];
                FileUpload1.PostedFile.InputStream.Read(bData, 0, bData.Length);
                cmd.Parameters.Add("@content", bData);
                cmd.Parameters.Add("@uploadcontent", filename.Name);
                int numberOfRowsInserted = cmd.ExecuteNonQuery();
                Label20.Visible = true;
                Label20.Text = "Your Registration is Successfull";
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
    }
}
