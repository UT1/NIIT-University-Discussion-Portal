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
    public partial class Deleteevent : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            Label1.Visible = false;
            Label2.Visible = false;
            Label1.Text = Session["name"].ToString();
            Fill_Grid();
        }
        public void Fill_Grid()
        {
            //char vr = Label1.Text.ToString();
            SqlConnection Csql = new SqlConnection("Data source=SHRONITBHARGAVA\\SQLEXPRESS; initial catalog=Project; integrated security=SSPI;persist security info=False; Trusted_Connection=Yes");
            Csql.Open();
            SqlCommand Cmmd = new SqlCommand("Select * from Create_Even where username = '" + Label1.Text + "'", Csql);
            SqlDataAdapter da = new SqlDataAdapter(Cmmd);
            DataSet ds = new DataSet();
            da.Fill(ds);
            Csql.Close();
            if (ds.Tables[0].Rows.Count > 0)
            {
                GridView1.DataSource = ds.Tables[0];
                GridView1.DataBind();
            }
            else
            {
                Label2.Visible = true;
                Label2.Text = "No Records to Delete";
            }
        }
        public void Delete(Int64 Id)
        {
            SqlConnection Csql = new SqlConnection("Data source=SHRONITBHARGAVA\\SQLEXPRESS; initial catalog=Project; integrated security=SSPI;persist security info=False; Trusted_Connection=Yes");

            string sql = "Delete From Create_Even Where PostId=" + Id;
            Csql.Open();
            SqlCommand cmd = new SqlCommand(sql, Csql);
            cmd.ExecuteNonQuery();
            Csql.Close();
            Csql.Dispose();
        }
        protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            Delete(Convert.ToInt64(GridView1.DataKeys[e.RowIndex].Values[0]));
            Page_Load(null, EventArgs.Empty);

        }
        protected void OnPaging(object sender, GridViewPageEventArgs e)
        {
            GridView1.PageIndex = e.NewPageIndex;
            GridView1.DataBind();
        }
    }
}
