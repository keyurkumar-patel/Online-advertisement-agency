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
    public partial class magazine : System.Web.UI.Page
    {
        SqlConnection con;
    SqlDataReader dr;
    SqlCommand cmd;
    string a, conn;


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
            cmd = new SqlCommand("select magazine from adminmagazine", con);
            cmd.ExecuteNonQuery();
            SqlDataAdapter ad = new SqlDataAdapter(cmd);
            ad.Fill(dt);
            //  DropDownList11.Items.Clear();

            if (dt.Rows.Count > 0)
            {
                for (int i = 0; i < dt.Rows.Count; i++)
                {
                    string val = dt.Rows[i]["magazine"].ToString();
                    DropDownList11.Items.Add(val);

                }

            }
            con.Close();

        }
    }


    protected void DropDownList18_SelectedIndexChanged(object sender,EventArgs e)
    {
        Label19.Visible = false;

        if ((DropDownList12.Text == "DAY") || (DropDownList13.Text == "MONTH") || (DropDownList14.Text == "YEAR") || (DropDownList15.Text == "DAY") || (DropDownList16.Text == "MONTH") || (DropDownList17.Text == "YEAR"))
        {
            Label17.Visible = true;
            Label17.Text = "Select Advertising date";
        }
        else
        {
            Label17.Visible = false;
        }


    }
    protected void DropDownList12_SelectedIndexChanged(object sender, EventArgs e)
    {
        Label17.Visible = false;
    }
         
    protected void DropDownList19_SelectedIndexChanged(object sender,EventArgs e)
    {

        Label20.Visible = false;
        if (DropDownList18.Text == "NONE")
        {
            Label19.Text = "Select Advertising page";
        }
        else
        {
            Label19.Visible = false;
        }


    }
    protected void RadioButtonList1_SelectedIndexChanged(object sender, EventArgs e)
    {
        if ((DropDownList19.Text == "NONE") || (DropDownList20.Text == "NONE"))
        {
            Label20.Text = "Select AD Size & Issues";
        }
        else
        {
            string str = DropDownList18.SelectedItem.ToString();
            string str3 = DropDownList19.SelectedItem.ToString();
            string str4 = DropDownList20.SelectedItem.ToString();
            string str5 = RadioButtonList1.SelectedItem.ToString();
            if ((str == "First page") && (str3 == "50x50") && (str4 == "Weekly") && (str5 == "MONO"))
            {
                TextBox1.Text = "Rs 500/-";
            }
            if ((str == "First page") && (str3 == "50x50") && (str4 == "Weekly") && (str5 == "COLOR"))
            {
                TextBox1.Text = "Rs 700/-";
            }
            if ((str == "First page") && (str3 == "50x50") && (str4 == "Monthly") && (str5 == "MONO"))
            {
                TextBox1.Text = "Rs 1500/-";
            }
            if ((str == "First page") && (str3 == "50x50") && (str4 == "Monthly") && (str5 == "COLOR"))
            {
                TextBox1.Text = "Rs 2100/-";
            }
            if ((str == "First page") && (str3 == "100x100") && (str4 == "Weekly") && (str5 == "MONO"))
            {
                TextBox1.Text = "Rs 800/-";
            }
            if ((str == "First page") && (str3 == "100x100") && (str4 == "Weekly") && (str5 == "COLOR"))
            {
                TextBox1.Text = "Rs 1000/-";
            }
            if ((str == "First page") && (str3 == "100x100") && (str4 == "Monthly") && (str5 == "MONO"))
            {
                TextBox1.Text = "Rs 2400/-";
            }
            if ((str == "First page") && (str3 == "100x100") && (str4 == "Monthly") && (str5 == "COLOR"))
            {
                TextBox1.Text = "Rs 3000/-";
            }
            if ((str == "Middle Page") && (str3 == "50x50") && (str4 == "Weekly") && (str5 == "MONO"))
            {
                TextBox1.Text = "Rs 400/-";
            }
            if ((str == "Middle Page") && (str3 == "50x50") && (str4 == "Weekly") && (str5 == "COLOR"))
            {
                TextBox1.Text = "Rs 600/-";
            }
            if ((str == "Middle Page") && (str3 == "50x50") && (str4 == "Monthly") && (str5 == "MONO"))
            {
                TextBox1.Text = "Rs 1200/-";
            }
            if ((str == "Middle Page") && (str3 == "50x50") && (str4 == "Monthly") && (str5 == "COLOR"))
            {
                TextBox1.Text = "Rs 1800/-";
            }

            if ((str == "Middle Page") && (str3 == "100x100") && (str4 == "Weekly") && (str5 == "MONO"))
            {
                TextBox1.Text = "Rs 600/-";
            }
            if ((str == "Middle Page") && (str3 == "100x100") && (str4 == "Weekly") && (str5 == "COLOR"))
            {
                TextBox1.Text = "Rs 800/-";
            }
            if ((str == "Middle Page") && (str3 == "100x100") && (str4 == "Monthly") && (str5 == "MONO"))
            {
                TextBox1.Text = "Rs 1800/-";
            }
            if ((str == "Middle Page") && (str3 == "100x100") && (str4 == "Monthly") && (str5 == "COLOR"))
            {
                TextBox1.Text = "Rs 2400/-";
            }

            if ((str == "Last Page") && (str3 == "50x50") && (str4 == "Weekly") && (str5 == "MONO"))
            {
                TextBox1.Text = "Rs 500/-";
            }
            if ((str == "Last Page") && (str3 == "50x50") && (str4 == "Weekly") && (str5 == "COLOR"))
            {
                TextBox1.Text = "Rs 700/-";
            }
            if ((str == "Last Page") && (str3 == "50x50") && (str4 == "Monthly") && (str5 == "MONO"))
            {
                TextBox1.Text = "Rs 1500/-";
            }
            if ((str == "Last Page") && (str3 == "50x50") && (str4 == "Monthly") && (str5 == "COLOR"))
            {
                TextBox1.Text = "Rs 3000/-";
            }

            if ((str == "Last Page") && (str3 == "100x100") && (str4 == "Weekly") && (str5 == "MONO"))
            {
                TextBox1.Text = "Rs 800/-";
            }
            if ((str == "Last Page") && (str3 == "100x100") && (str4 == "Weekly") && (str5 == "COLOR"))
            {
                TextBox1.Text = "Rs 1000/-";
            }
            if ((str == "Last Page") && (str3 == "100x100") && (str4 == "Monthly") && (str5 == "MONO"))
            {
                TextBox1.Text = "Rs 2400/-";
            }
            if ((str == "Last Page") && (str3 == "100x100") && (str4 == "Monthly") && (str5 == "COLOR"))
            {
                TextBox1.Text = "Rs 3000/-";
            }

        }

    }
    protected void Button4_Click(object sender,EventArgs e)
    {

        if ((TextBox1.Text == ""))
        {
            Label21.Visible = true;
            Label21.Text = "Fill all the fields before submitting";
        }
        else if (FileUpload1.PostedFile.FileName == "")
        {
            Label21.Visible = true;
            Label21.Text = "Upload the File";
        }

        else
        {
            //string b, c;


            if (RadioButtonList1.SelectedItem.ToString() == "MONO")
            {
                a = "MONO";

            }
            else if (RadioButtonList1.SelectedItem.ToString() == "COLOR")
            {
                a = "COLOR";

            }

            con.Open();
            System.IO.FileInfo filename = new System.IO.FileInfo(FileUpload1.PostedFile.FileName);
            string sql = "Insert into magazine(cid,name,magazinename,dfrom,dto,advertisingpage,adsize,issues,pattern,price,content,uploadcontent) Values('" + Label16.Text + "','" + Label15.Text + "','" + DropDownList11.Text + "','" + DropDownList12.Text + "/" + DropDownList13.Text + "/" + DropDownList14.Text + "','" + DropDownList15.Text + "/" + DropDownList16.Text + "/" + DropDownList17.Text + "','" + DropDownList18.Text + "','" + DropDownList19.Text + "','" + DropDownList20.Text + "','" + a + "','" + TextBox1.Text + "',@content,@uploadcontent)";
            cmd = con.CreateCommand();
            cmd.CommandType = CommandType.Text;
            cmd.CommandText = sql;
            byte[] bData = new byte[(FileUpload1.PostedFile.InputStream.Length)];
            FileUpload1.PostedFile.InputStream.Read(bData, 0, bData.Length);
            cmd.Parameters.Add("@content", bData);
            cmd.Parameters.Add("@uploadcontent", filename.Name);
            int numberOfRowsInserted = cmd.ExecuteNonQuery();
            Label21.Visible = true;
            Label21.Text = "Your Registration is Successfull";
        }
    }

   
   

    
    }
}
