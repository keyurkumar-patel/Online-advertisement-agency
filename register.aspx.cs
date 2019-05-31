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
using System.Net.Mail;
using System.Net;
using System.ComponentModel;
//using System.Text.RegularExpressions;

namespace project
{
    public partial class register : System.Web.UI.Page
    {
        SqlConnection con;
        SqlDataReader dr;
        SqlCommand cmd;
        SqlDataAdapter da;
        public string conn;

        public void display()
        {
            conn = ConfigurationManager.ConnectionStrings["myconn"].ConnectionString;

            con = new SqlConnection(conn);
        }
        protected void Page_Load(object sender, EventArgs e)
        {
            display();

        }



        protected void Button1_Click(object sender, EventArgs e)
        {
            string c1 = "";
            if (Page.IsValid == true)
            {

                //E-mail validation
                string s = TextBox10.Text;
                string s1 = TextBox11.Text;
                int l1 = s1.Length;
                int l = s.Length;
                if ((!isdigit(TextBox10.Text)) || (!isdigit(TextBox11.Text)))
                {

                    Label2.Text = " Invalid Phone Number ";

                }

                else if ((l > 12 || l < 10) || (l1 > 12 || l1 < 10))
                {
                    Label2.Text = "  Phone Number should be of 10-12 Numbers ";
                }


                else if (CheckBox1.Checked == false)
                {
                    Label2.Text = "Check the terms and conditions to continue";
                }
                else
                {
                    cmd = new SqlCommand("select * from login ", con);
                    con.Close();
                    con.Open();
                    dr = cmd.ExecuteReader();
                    while (dr.Read())
                    {

                        if (TextBox6.Text == dr["username"].ToString())
                        {
                            Label2.Text = "User with similar Username already Exist";

                        }
                        else
                        {
                            Label2.Text = "registered";

                        }
                    }
                }
                if (Label2.Text == "registered")
                {
                    //Database Updation
                    cmd = new SqlCommand("select * from id ", con);
                    con.Close();
                    con.Open();
                    dr = cmd.ExecuteReader();
                    while (dr.Read())
                    {
                        c1 = "2k8ATS" + dr[1].ToString();
                    }
                    dr.Close();
                    con.Close();
                    cmd.Dispose();
                    cmd = new SqlCommand();
                    con.Open();
                    cmd.Connection = con;
                    cmd.CommandText = "update id set idvalue=idvalue + 1 where name='ats'";
                    cmd.ExecuteNonQuery();
                    con.Close();
                    cmd.Dispose();
                    con.Close();
                    con.Open();

                    Int64 p1 = Int64.Parse(TextBox10.Text);
                    Int64 p2 = Int64.Parse(TextBox11.Text);
                    string sql = "Insert into login(uid,username,password,email,name,addr,mobile,phone,designation) Values('" + c1 + "','" + TextBox6.Text + "','" + TextBox7.Text + "','" + TextBox4.Text + "','" + TextBox8.Text + "','" + TextBox9.Text + "'," + p1 + "," + p2 + ",'" + TextBox12.Text + "')";
                    cmd = con.CreateCommand();
                    cmd.CommandType = CommandType.Text;
                    cmd.CommandText = sql;


                    int numberOfRowsInserted = cmd.ExecuteNonQuery();
                    Label2.Visible = false;
                    Session["name"] = TextBox8.Text;
                    Session["username"] = TextBox6.Text;
                    Session["password"] = TextBox7.Text;
                    Session["email"] = TextBox4.Text;
                    Session["uid"] = c1;

                    //Sending Mail
                    //string a = TextBox4.Text;
                    //string b = TextBox8.Text;
                    //MailMessage msg = new MailMessage();
                    //msg.From = new MailAddress("suthaharanmca@gmail.com");
                    //msg.To.Add(new MailAddress(a));
                    // msg.Subject = "Registration confirmed in ATS Advertising Agency";
                    // msg.Body = "Hai!you have successfully registered to ATS Advertising Agency,This message is send for confirming your registration..";
                    // SmtpClient client = new SmtpClient("smtp.gmail.com", 587);
                    // client.EnableSsl = true;
                    // client.Credentials = new NetworkCredential("suthaharanmca@gmail.com", "ssukitha");
                    // client.Send(msg);
                    Server.Transfer("sucessful register.aspx");
                    // con.Close();


                }



            }

        }

        //function for accepting only numbers
        bool isdigit(string s)
        {

            bool ok = true;

            for (int i = 0; i < s.Length; i++)
            {
                if (!Char.IsNumber(s[i]))


                //for (int j = 0; j <= 9; j++)
                //    if (s[i] == j)
                {
                    ok = false;
                    break;
                }
            }

            return ok;
        }
    }
}
