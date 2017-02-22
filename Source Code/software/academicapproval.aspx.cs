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
    public partial class academicapproval : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Panel1.Visible = true;
            Panel2.Visible = false;
            Label1.Visible = false;
            Label2.Visible = false;
            Label3.Visible = false;
            Label1.Text = Session["name"].ToString();
            Fill_Grid();
        }
        public void Fill_Grid()
        {
            Label3.Text ="Academics Department";
            //char vr = Label1.Text.ToString();
            SqlConnection Csql = new SqlConnection("Data source=SHRONITBHARGAVA\\SQLEXPRESS; initial catalog=Project; integrated security=SSPI;persist security info=False; Trusted_Connection=Yes");
            Csql.Open();
            SqlCommand Cmmd = new SqlCommand("Select * from Create_Even where approval ='"+Label3.Text+"' ", Csql);
            SqlDataAdapter da = new SqlDataAdapter(Cmmd);
            DataSet ds = new DataSet();
            da.Fill(ds);

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



            Csql.Close();
        }
        protected void OnPaging(object sender, GridViewPageEventArgs e)
        {
            GridView1.PageIndex = e.NewPageIndex;
            GridView1.DataBind();
        }
        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {
            Panel1.Visible = false;
            Panel2.Visible = true;
            GetInitialsByID(Convert.ToInt64(GridView1.SelectedValue));
        }
        public void GetInitialsByID(Int64 Id)
        {
            SqlConnection Csql = new SqlConnection("Data source=SHRONITBHARGAVA\\SQLEXPRESS; initial catalog=Project; integrated security=SSPI;persist security info=False; Trusted_Connection=Yes");
            Csql.Open();
            SqlCommand Cmmd = new SqlCommand("Select * from Create_Even where PostId=" + Id, Csql);
            SqlDataReader rdr = null;
            rdr = Cmmd.ExecuteReader();
            if (rdr.HasRows)
            {

                rdr.Read();
                Session["Id"] = rdr["PostId"].ToString();
                Txtby.Text = rdr["username"].ToString();
                TxtEditLost.Text = rdr["Description"].ToString();
                TxtSubject.Text = rdr["Subject"].ToString();

            }
            rdr.Close();

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlConnection Csql = new SqlConnection("Data source=SHRONITBHARGAVA\\SQLEXPRESS; initial catalog=Project; integrated security=SSPI;persist security info=False; Trusted_Connection=Yes");
            Csql.Open();
            SqlCommand Cmmd = new SqlCommand("update Create_Even set status = 'Approved',comments ='" + TxtComment.Text + "',DoneBy = '" + Label1.Text + "' where PostId='" + Session["id"] + "'", Csql);
            Cmmd.ExecuteNonQuery();
            Csql.Close();
            Page_Load(null, EventArgs.Empty);
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            SqlConnection Csql = new SqlConnection("Data source=SHRONITBHARGAVA\\SQLEXPRESS; initial catalog=Project; integrated security=SSPI;persist security info=False; Trusted_Connection=Yes");
            Csql.Open();
            SqlCommand Cmmd = new SqlCommand("update Create_Even set status = 'Rejected',comments ='" + TxtComment.Text + "',DoneBy = '" + Label1.Text + "' where PostId='" + Session["id"] + "'", Csql);
            Cmmd.ExecuteNonQuery();
            Csql.Close();
            Page_Load(null, EventArgs.Empty);
        }

    }
}
