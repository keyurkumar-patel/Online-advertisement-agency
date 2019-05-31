
using System;
using System.Collections;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Web;
using System.Web.SessionState;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.HtmlControls;
using System.Data.SqlClient;
using System.Configuration;

namespace project
{
    public partial class adminnewspaper : System.Web.UI.Page
    {
        public static int numberdiv;
        public string filename;
        public SqlConnection con;
        public SqlDataAdapter sqlda;
        public DataSet ds = new DataSet();
        public SqlDataReader dr;
        public SqlCommand cmd;
        public string conn;
        protected void Page_Load(object sender, System.EventArgs e)
        {
            if (!Page.IsPostBack)
                display();
            display1();
        }
        public void display2()
        {
            conn = ConfigurationManager.ConnectionStrings["myconn"].ConnectionString;

            con = new SqlConnection(conn);
        }

        #region Web Form Designer generated code
        override protected void OnInit(EventArgs e)
        {
            //
            // CODEGEN: This call is required by the ASP.NET Web Form Designer.
            //
            InitializeComponent();
            base.OnInit(e);
        }

        /// <summary>
        /// Required method for Designer support - do not modify
        /// the contents of this method with the code editor.
        /// </summary>
        private void InitializeComponent()
        {
            this.DataGrid1.PageIndexChanged += new System.Web.UI.WebControls.DataGridPageChangedEventHandler(this.DataGrid1_PageIndexChanged);
            this.DataGrid2.PageIndexChanged += new System.Web.UI.WebControls.DataGridPageChangedEventHandler(this.DataGrid2_PageIndexChanged);
            this.DataGrid2.CancelCommand += new System.Web.UI.WebControls.DataGridCommandEventHandler(this.DataGrid2_CancelCommand);
            this.DataGrid2.EditCommand += new System.Web.UI.WebControls.DataGridCommandEventHandler(this.DataGrid2_EditCommand);
            this.DataGrid1.EditCommand += new System.Web.UI.WebControls.DataGridCommandEventHandler(this.DataGrid1_EditCommand);
            this.DataGrid1.SortCommand += new System.Web.UI.WebControls.DataGridSortCommandEventHandler(this.DataGrid1_SortCommand);
            this.DataGrid2.SortCommand += new System.Web.UI.WebControls.DataGridSortCommandEventHandler(this.DataGrid2_SortCommand);
            this.DataGrid2.UpdateCommand += new System.Web.UI.WebControls.DataGridCommandEventHandler(this.DataGrid2_UpdateCommand);
            this.DataGrid1.DeleteCommand += new System.Web.UI.WebControls.DataGridCommandEventHandler(this.DataGrid1_DeleteCommand);
            this.DataGrid2.DeleteCommand += new System.Web.UI.WebControls.DataGridCommandEventHandler(this.DataGrid2_DeleteCommand);

        }
        #endregion
        public void display()
        {

            display2();
            //con = new SqlConnection("server=SUTHAHAR-F92F17\\TEST;database=sample;user id=sa;pwd=sukitha");
            SqlCommand cmd = new SqlCommand("select * from newspaper", con);
            con.Open();
            cmd.CommandType = CommandType.Text;
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataSet ds = new DataSet();
            da.Fill(ds, "newspaper");
            cmd.ExecuteReader();
            DataGrid1.DataSource = ds;
            DataGrid1.DataBind();


            // dr.Close();
            con.Close();

        }
        public void display1()
        {

            display2();
            //con = new SqlConnection("server=SUTHAHAR-F92F17\\TEST;database=sample;user id=sa;pwd=sukitha");
            SqlCommand cmd = new SqlCommand("select * from adminnewspaper", con);
            con.Open();
            cmd.CommandType = CommandType.Text;
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataSet ds = new DataSet();
            da.Fill(ds, "adminnewspaper");
            cmd.ExecuteReader();
            DataGrid2.DataSource = ds;
            DataGrid2.DataBind();


            // dr.Close();
            con.Close();

        }



        protected void ADD_Click(object sender, System.EventArgs e)
        {
            display2();
            //con = new SqlConnection("server=SUTHAHAR-F92F17\\TEST;database=sample;user id=sa;pwd=sukitha");
            con.Open();

            string sql = "Insert into adminnewspaper(newspaper) Values('" + TextBox1.Text + "')";
            cmd = con.CreateCommand();
            cmd.CommandType = CommandType.Text;
            cmd.CommandText = sql;
            int numberOfRowsInserted = cmd.ExecuteNonQuery();

            display();
            display1();

        }
        private void DataGrid1_EditCommand(object source, System.Web.UI.WebControls.DataGridCommandEventArgs e)
        {
            display2();
            //con = new SqlConnection("server=SUTHAHAR-F92F17\\TEST;database=sample;user id=sa;pwd=sukitha");

            if (e.CommandName == "EDIT")
            {
                filename = ((LinkButton)e.Item.Cells[11].FindControl("uploadcontent")).Text;
                try
                {
                    string Command = "SELECT * FROM newspaper WHERE uploadcontent='" + filename + "'";
                    cmd = new SqlCommand(Command, con);
                    con.Open();
                    cmd.Prepare();
                    dr = cmd.ExecuteReader();
                    if (dr.Read())
                    {
                        string fName = dr["uploadcontent"].ToString();
                        if ((fName.EndsWith(".pdf")) || (fName.EndsWith(".PDF")))
                        {
                            Response.AppendHeader("Content-Disposition", "attachment; filename=" + fName);
                            Response.ContentType = "Application/pdf";
                            Response.BinaryWrite((byte[])dr["content"]);
                        }
                        else if ((fName.EndsWith(".doc")) || (fName.EndsWith(".DOC")))
                        {
                            Response.AppendHeader("Content-Disposition", "attachment; filename=" + fName);
                            Response.ContentType = "Application/msword";
                            Response.BinaryWrite((byte[])dr["content"]);
                        }
                        else if ((fName.EndsWith(".txt")) || (fName.EndsWith(".TXT")))
                        {
                            Response.AppendHeader("Content-Disposition", "attachment; filename=" + fName);
                            Response.ContentType = "Application/text";
                            Response.BinaryWrite((byte[])dr["content"]);
                        }
                        else if ((fName.EndsWith(".jpg")) || (fName.EndsWith(".JPG")))
                        {
                            Response.AppendHeader("Content-Disposition", "attachment; filename=" + fName);
                            Response.ContentType = "Image/jpg";
                            Response.BinaryWrite((byte[])dr["content"]);
                        }
                        else if ((fName.EndsWith(".bmp")) || (fName.EndsWith(".BMP")))
                        {
                            Response.AppendHeader("Content-Disposition", "attachment; filename=" + fName);
                            Response.ContentType = "Application/msword";
                            Response.BinaryWrite((byte[])dr["content"]);
                        }
                        else if ((fName.EndsWith(".zip")) || (fName.EndsWith(".ZIP")))
                        {
                            Response.AppendHeader("Content-Disposition", "attachment; filename=" + fName);
                            Response.ContentType = "Application/Zip";
                            Response.BinaryWrite((byte[])dr["content"]);
                        }
                        else if ((fName.EndsWith(".aspx")) || (fName.EndsWith(".ASPX")))
                        {
                            Response.AppendHeader("Content-Disposition", "attachment; filename=" + fName);
                            Response.ContentType = "weppage/aspxfiles";
                            Response.BinaryWrite((byte[])dr["content"]);
                        }
                        else
                        {
                            Response.AppendHeader("Content-Disposition", "attachment; filename=" + fName);
                            Response.ContentType = "Application/Binary";
                            Response.BinaryWrite((byte[])dr["content"]);
                        }
                    }
                }
                catch (Exception SqlException)
                {
                    Response.Write("<script>alert('" + SqlException.Message + "')</script>");
                }
                finally
                {
                    // dr.Close();
                    con.Close();
                }
            }
            else if (e.CommandName == "Edit")
            {
                DataGrid1.EditItemIndex = e.Item.ItemIndex;
                display();
            }

        }
        private void DataGrid2_EditCommand(object source, System.Web.UI.WebControls.DataGridCommandEventArgs e)
        {
            //con = new SqlConnection("server=SUTHAHAR-F92F17\\TEST;database=sample;user id=sa;pwd=sukitha");
            display2();

            if (e.CommandName == "Edit")
            {
                DataGrid2.EditItemIndex = e.Item.ItemIndex;
                display();
                display1();
            }

        }

        private void DataGrid1_DeleteCommand(object source, System.Web.UI.WebControls.DataGridCommandEventArgs e)
        {
            display2();
            //con = new SqlConnection("server=SUTHAHAR-F92F17\\TEST;database=sample;user id=sa;pwd=sukitha");
            string s = e.Item.Cells[0].Text;
            con.Open();
            SqlCommand cmd = new SqlCommand("delete  from newspaper where cid='" + s + "'", con);
            cmd.CommandType = CommandType.Text;

            cmd.ExecuteNonQuery();
            con.Close();
            display();
        }
        private void DataGrid2_DeleteCommand(object source, System.Web.UI.WebControls.DataGridCommandEventArgs e)
        {
            display2();
            //con = new SqlConnection("server=SUTHAHAR-F92F17\\TEST;database=sample;user id=sa;pwd=sukitha");
            string s = e.Item.Cells[0].Text;
            con.Open();
            SqlCommand cmd = new SqlCommand("delete  from adminnewspaper where program='" + s + "'", con);
            cmd.CommandType = CommandType.Text;

            cmd.ExecuteNonQuery();
            con.Close();
            display();
            display1();
        }

        private void DataGrid2_CancelCommand(object source, System.Web.UI.WebControls.DataGridCommandEventArgs e)
        {
            DataGrid2.EditItemIndex = -1;
            display();
            display1();
        }

        private void DataGrid1_PageIndexChanged(object source, System.Web.UI.WebControls.DataGridPageChangedEventArgs e)
        {
            DataGrid1.CurrentPageIndex = e.NewPageIndex;
            display();
            display1();
        }
        private void DataGrid2_PageIndexChanged(object source, System.Web.UI.WebControls.DataGridPageChangedEventArgs e)
        {
            DataGrid2.CurrentPageIndex = e.NewPageIndex;
            display();
            display1();
        }
        private void DataGrid2_UpdateCommand(object source, System.Web.UI.WebControls.DataGridCommandEventArgs e)
        {
            display2();
            //con = new SqlConnection("server=SUTHAHAR-F92F17\\TEST;database=sample;user id=sa;pwd=sukitha");
            con.Open();
            TextBox newspaper;


            newspaper = (TextBox)e.Item.Cells[0].Controls[0];

            string updt = "update adminnewspaper set newspaper=@newspaper where newspaper=@newspaper ";
            SqlCommand cmd = new SqlCommand(updt, con);
            cmd.Parameters.Add("@newspaper", newspaper.Text);


            cmd.ExecuteNonQuery();
            con.Close();
            DataGrid2.EditItemIndex = -1;

            display();
            display1();
        }
        private void DataGrid1_SortCommand(object source, System.Web.UI.WebControls.DataGridSortCommandEventArgs e)
        {
            //con = new SqlConnection("server=SUTHAHAR-F92F17\\TEST;database=sample;user id=sa;pwd=sukitha");
            display2();
            SqlCommand cmd = new SqlCommand("select * from newspaper", con);
            cmd.CommandType = CommandType.Text;
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataSet ds = new DataSet();
            da.Fill(ds, "newspaper");
            con.Open();
            DataView dv = new DataView(ds.Tables["newspaper"]);
            if ((numberdiv % 2) == 0)
            {
                dv.Sort = e.SortExpression + " " + "ASC";
            }
            else
            {
                dv.Sort = e.SortExpression + " " + "DESC";
            }
            numberdiv++;
            DataGrid1.DataSource = dv;
            DataGrid1.DataBind();

        }
        private void DataGrid2_SortCommand(object source, System.Web.UI.WebControls.DataGridSortCommandEventArgs e)
        {
            //con = new SqlConnection("server=SUTHAHAR-F92F17\\TEST;database=sample;user id=sa;pwd=sukitha");
            display2();
            SqlCommand cmd = new SqlCommand("select * from adminnewspaper", con);
            cmd.CommandType = CommandType.Text;
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataSet ds = new DataSet();
            da.Fill(ds, "adminnewspaper");
            con.Open();
            DataView dv = new DataView(ds.Tables["adminnewspaper"]);
            if ((numberdiv % 2) == 0)
            {
                dv.Sort = e.SortExpression + " " + "ASC";
            }
            else
            {
                dv.Sort = e.SortExpression + " " + "DESC";
            }
            numberdiv++;
            DataGrid2.DataSource = dv;
            DataGrid2.DataBind();

        }
    }
}
