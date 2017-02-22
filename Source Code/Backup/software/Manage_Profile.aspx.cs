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
    public partial class Manage_Profile : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                Label21.Visible = false;
                Label21.Text = Session["name"].ToString();
                SqlConnection Csql = new SqlConnection("Data source=SHRONITBHARGAVA\\SQLEXPRESS; initial catalog=Project; integrated security=SSPI;persist security info=False; Trusted_Connection=Yes");
                Csql.Open();
                SqlCommand Cmmd = new SqlCommand("Select * from reg where username='" + Label21.Text + "'", Csql);
                SqlDataReader rdr = null;
                rdr = Cmmd.ExecuteReader();
                if (rdr.HasRows)
                {

                    rdr.Read();
                    Txtid.Text = Convert.ToInt32(rdr["UserId"]).ToString();
                    Txtusername.Text = rdr["username"].ToString();
                    Txtpassword.Text = rdr["password"].ToString();
                    Txtname.Text = rdr["name"].ToString();
                    Txtfname.Text = rdr["father_name"].ToString();
                    TxtAge.Text = Convert.ToInt32(rdr["age"]).ToString();
                    Txtcontact.Text = Convert.ToInt64(rdr["phoneno"]).ToString();
                    TxtAddress.Text = rdr["address"].ToString();
                    TxtGender.Text = rdr["gender"].ToString();
                    Txtemail.Text = rdr["email"].ToString();

                }
                rdr.Close();
                Csql.Close();
            }

        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection("Data source=SHRONITBHARGAVA\\SQLEXPRESS; initial catalog=Project;integrated security=SSPI;persist security info=False; Trusted_Connection=Yes");
            con.Open();
            SqlCommand cmd = new SqlCommand("update reg set password =@Password,phoneno =@Phone,email =@Email,address =@Address,age =@Age,gender =@Gender,name =@Name,father_name =@Fname where userId = '"+Txtid.Text+"'");
            cmd.Connection = con;
            cmd.Parameters.AddWithValue("@Password",Txtpassword.Text);
            cmd.Parameters.AddWithValue("@Phone", Txtcontact.Text);
            cmd.Parameters.AddWithValue("@Email", Txtemail.Text);
            cmd.Parameters.AddWithValue("@Address", TxtAddress.Text);
            cmd.Parameters.AddWithValue("@Age", TxtAge.Text);
            cmd.Parameters.AddWithValue("@Gender", TxtGender.Text);
            cmd.Parameters.AddWithValue("@Name", Txtname.Text);
            cmd.Parameters.AddWithValue("@Fname", Txtfname.Text);
            
            
            cmd.ExecuteNonQuery();
            con.Close();
            Page_Load(null, EventArgs.Empty);
        }
    }
}
