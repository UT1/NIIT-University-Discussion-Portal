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

namespace software
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Label1.Visible = false;
            Label1.Text = Session["name"].ToString();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string date = DateTime.Now.ToString();

            SqlConnection con = new SqlConnection("Data source=SHRONITBHARGAVA\\SQLEXPRESS; initial catalog=Project;integrated security=SSPI;persist security info=False; Trusted_Connection=Yes");
            con.Open();
            SqlCommand cmd = new SqlCommand("insert into Create_Loss(Username,Description,date,Subject,Status) values ('"+Label1.Text+"','"+TextBox1.Text.Trim()+"','"+date+"','"+TextBox2.Text.Trim()+"','Pending')");
            cmd.Connection = con;
            cmd.ExecuteNonQuery();
            con.Close();
            TextBox1.Text = " ";
            TextBox2.Text = " ";

        }
    }
}
