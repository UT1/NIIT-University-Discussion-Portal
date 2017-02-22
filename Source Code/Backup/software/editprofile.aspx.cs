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
    public partial class editprofile : System.Web.UI.Page
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
            SqlCommand Cmmd = new SqlCommand("Select * from reg ", Csql);
            SqlDataAdapter da = new SqlDataAdapter(Cmmd);
            DataSet ds = new DataSet();
            da.Fill(ds);
            Csql.Close();
            if (ds.Tables[0].Rows.Count > 0)
            {
                GridView1.DataSource = ds.Tables[0];
                GridView1.DataKeyNames = new String[] { "UserId" };
                GridView1.DataBind();
            }
            else
            {
                Label2.Visible = true;
                Label2.Text = "No Records to Edit";
            };
        }
        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {
            Panel1.Visible = false;
            Panel2.Visible = true;
            GetInitialsByID(Convert.ToInt64(GridView1.SelectedValue));
        }
        //protected void GridView1_RowDataBound(object sender, GridViewRowEventArgs e)
        //{
        //    if (e.Row.RowType == DataControlRowType.DataRow)
        //    {
        //        string ss = DataBinder.Eval(e.Row.DataItem, "Status").ToString();
        //        if (ss == "Approved" || ss == "Rejected")
        //        {
        //            LinkButton SelectButton = (LinkButton)e.Row.Cells[5].Controls[0];
        //            SelectButton.Enabled = false;
        //        }
        //    }
        //}
        public void GetInitialsByID(Int64 Id)
        {
            
                SqlConnection Csql = new SqlConnection("Data source=SHRONITBHARGAVA\\SQLEXPRESS; initial catalog=Project; integrated security=SSPI;persist security info=False; Trusted_Connection=Yes");
                Csql.Open();
                SqlCommand Cmmd = new SqlCommand("Select * from reg where UserId=" + Id, Csql);
                SqlDataReader rdr = null;
                rdr = Cmmd.ExecuteReader();
                if (rdr.HasRows)
                {

                    rdr.Read();
                    Session["Id"] = rdr["UserId"].ToString();
                    Txtusername.Text = rdr["username"].ToString();
                    Txtpassword.Text = rdr["password"].ToString();
                    Txtname.Text = rdr["name"].ToString();
                    Txtfname.Text = rdr["father_name"].ToString();
                    TxtAge.Text = Convert.ToInt32(rdr["age"]).ToString();
                    Txtcontact.Text = Convert.ToInt64(rdr["phoneno"]).ToString();
                    TxtAddress.Text = rdr["address"].ToString();
                    TxtGender.Text = rdr["gender"].ToString();
                    Txtemail.Text = rdr["email"].ToString();
                    Txttype.Text = rdr["type"].ToString();
                    Txtbranch.Text = rdr["Branch"].ToString();

                }
            

        }
        protected void Button1_Click(object sender, EventArgs e)
        {
            string date = DateTime.Now.ToString();

            SqlConnection con = new SqlConnection("Data source=SHRONITBHARGAVA\\SQLEXPRESS; initial catalog=Project;integrated security=SSPI;persist security info=False; Trusted_Connection=Yes");
            con.Open();
            SqlCommand cmd = new SqlCommand("update reg set password =@Password,phoneno =@Phone,email =@Email,address =@Address,age =@Age,gender =@Gender,name =@Name,father_name =@Fname,username =@Username,type=@type,branch=@branch where userId = '" +Session["id"] + "'");
            cmd.Connection = con;
            cmd.Parameters.AddWithValue("@Password", Txtpassword.Text);
            cmd.Parameters.AddWithValue("@Phone", Txtcontact.Text);
            cmd.Parameters.AddWithValue("@Email", Txtemail.Text);
            cmd.Parameters.AddWithValue("@Address", TxtAddress.Text);
            cmd.Parameters.AddWithValue("@Age", TxtAge.Text);
            cmd.Parameters.AddWithValue("@Gender", TxtGender.Text);
            cmd.Parameters.AddWithValue("@Name", Txtname.Text);
            cmd.Parameters.AddWithValue("@Fname", Txtfname.Text);
            cmd.Parameters.AddWithValue("@Username", Txtusername.Text);
            cmd.Parameters.AddWithValue("@type", Txttype.Text);
            cmd.Parameters.AddWithValue("@branch", Txtbranch.Text);
            
            cmd.ExecuteNonQuery();
            con.Close();
            Label2.Visible = true;
            Label2.Text = "Post Updated";
            Page_Load(null, EventArgs.Empty);
        }
        protected void OnPaging(object sender, GridViewPageEventArgs e)
        {
            GridView1.PageIndex = e.NewPageIndex;
            GridView1.DataBind();
        }

    }
}
