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
    public partial class Editlost : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Panel1.Visible = true;
            Panel2.Visible = false;
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
            SqlCommand Cmmd = new SqlCommand("Select * from Create_Loss where username = '"+Label1.Text+"'", Csql);
            SqlDataAdapter da = new SqlDataAdapter(Cmmd);
            DataSet ds = new DataSet();
            da.Fill(ds);
            Csql.Close();
            if (ds.Tables[0].Rows.Count > 0)
            {
                
                GridView1.DataSource = ds.Tables[0];
                GridView1.DataKeyNames = new String[] { "PostId" };
                GridView1.DataBind();
            }
            else
            {
                Label2.Visible = true;
                Label2.Text = "No Records to Edit";
            }
            
        }
        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {
            Panel1.Visible = false;
            Panel2.Visible = true;
            GetInitialsByID(Convert.ToInt64(GridView1.SelectedValue));
        }
        protected void GridView1_RowDataBound(object sender, GridViewRowEventArgs e)
        {
            if (e.Row.RowType == DataControlRowType.DataRow)
            {
                string ss = DataBinder.Eval(e.Row.DataItem, "Status").ToString();
                if (ss == "Approved"|| ss =="Rejected")
                {
                    LinkButton SelectButton = (LinkButton)e.Row.Cells[5].Controls[0];
                    SelectButton.Enabled = false;
                }
            }
        }
        public void GetInitialsByID(Int64 Id)
        {
            SqlConnection Csql = new SqlConnection("Data source=SHRONITBHARGAVA\\SQLEXPRESS; initial catalog=Project; integrated security=SSPI;persist security info=False; Trusted_Connection=Yes");
            Csql.Open();
            SqlCommand Cmmd = new SqlCommand("Select * from Create_Loss where PostId=" + Id, Csql);
            SqlDataReader rdr = null;
            rdr = Cmmd.ExecuteReader();
            if (rdr.HasRows)
            {

                rdr.Read();
                Session["Id"] = rdr["PostId"].ToString();
                TxtEditLost.Text = rdr["Description"].ToString();
                TxtSubject.Text = rdr["Subject"].ToString();
                
            }

        }
        protected void BtnEditLost_Click(object sender, EventArgs e)
        {
            string date = DateTime.Now.ToString();

            SqlConnection con = new SqlConnection("Data source=SHRONITBHARGAVA\\SQLEXPRESS; initial catalog=Project;integrated security=SSPI;persist security info=False; Trusted_Connection=Yes");
            con.Open();
            SqlCommand cmd = new SqlCommand("update Create_Loss set Description ='" + TxtEditLost.Text.Trim() + "',date='"+date+"', Subject ='"+TxtSubject.Text.Trim()+"'where PostId = '"+Session["id"]+"'");
            cmd.Connection = con;
            cmd.ExecuteNonQuery();
            con.Close();
            Label2.Visible = true;
            Label2.Text = "Post Updated";
            Page_Load(null,EventArgs.Empty);
        }
        protected void OnPaging(object sender, GridViewPageEventArgs e)
        {
            GridView1.PageIndex = e.NewPageIndex;
            GridView1.DataBind();
        }
    }
}
