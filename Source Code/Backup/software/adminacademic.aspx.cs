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
    public partial class adminacademic : System.Web.UI.Page
    {
        SqlDataAdapter sqlda;
        DataTable dt;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                bindrepeater();
                bindrepeater1();
                bindrepeater2();
            }
        }
        private void bindrepeater()
        {
            SqlConnection con = new SqlConnection("Data source=SHRONITBHARGAVA\\SQLEXPRESS; initial catalog=Project; integrated security=SSPI;persist security info=False; Trusted_Connection=Yes");

            con.Open();
            sqlda = new SqlDataAdapter("SELECT * FROM Create_Loss where status ='approved' ", con);
            dt = new DataTable();
            sqlda.Fill(dt);
            sqlda.Dispose();
            Repeater1.DataSource = dt;
            Repeater1.DataBind();
            con.Close();
        }
        private void bindrepeater1()
        {
            SqlConnection con = new SqlConnection("Data source=SHRONITBHARGAVA\\SQLEXPRESS; initial catalog=Project; integrated security=SSPI;persist security info=False; Trusted_Connection=Yes");

            con.Open();
            sqlda = new SqlDataAdapter("SELECT * FROM Create_Foun where status ='approved' ", con);
            dt = new DataTable();
            sqlda.Fill(dt);
            sqlda.Dispose();
            Repeater2.DataSource = dt;
            Repeater2.DataBind();
            con.Close();
        }
        private void bindrepeater2()
        {
            SqlConnection con = new SqlConnection("Data source=SHRONITBHARGAVA\\SQLEXPRESS; initial catalog=Project; integrated security=SSPI;persist security info=False; Trusted_Connection=Yes");

            con.Open();
            sqlda = new SqlDataAdapter("SELECT * FROM Create_Even where status ='approved' ", con);
            dt = new DataTable();
            sqlda.Fill(dt);
            sqlda.Dispose();
            Repeater3.DataSource = dt;
            Repeater3.DataBind();
            con.Close();
        }
    }
}
