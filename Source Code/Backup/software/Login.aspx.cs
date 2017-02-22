using System;
using System.Collections;
using System.Configuration;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Xml.Linq;
using System.Data.SqlClient;

namespace software
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            try
            {

                SqlConnection con = new SqlConnection("Data source=SHRONITBHARGAVA\\SQLEXPRESS; initial catalog=Project;integrated security=SSPI;persist security info=False; Trusted_Connection=Yes");
                con.Open();
                SqlCommand cmd = new SqlCommand("select * FROM reg WHERE username='" + txtUserName.Text + "' and password='" + txtpassword.Text + "'");
                cmd.Connection = con;
                SqlDataReader rdr = null;
                rdr = cmd.ExecuteReader();
                if (rdr.HasRows)
                {

                    rdr.Read();
                    Session["TY"] = rdr["type"].ToString();
                }
                else
                {
                    Label1.Text = "Invalid username or password";

                }

                if (Session["TY"].ToString() == "1")
                {
                    Session["name"] = txtUserName.Text;
                    Response.Redirect("Home.aspx");
                }
                else if (Session["TY"].ToString() == "2")
                {
                    Session["name"] = txtUserName.Text;
                    Response.Redirect("Default1.aspx");

                }
                else if (Session["TY"].ToString() == "3")
                {
                    Session["name"] = txtUserName.Text;
                    Response.Redirect("adminacademic.aspx");

                }
                else if (Session["TY"].ToString() == "4")
                {
                    Session["name"] = txtUserName.Text;
                    Response.Redirect("admincultural.aspx");

                }
                else if (Session["TY"].ToString() == "5")
                {
                    Session["name"] = txtUserName.Text;
                    Response.Redirect("adminsports.aspx");

                }
                //else if (Session["TY"].ToString() == "6")
                //{
                //    Session["name"] = txtUserName.Text;
                //    Response.Redirect("admin_guest.aspx");

                //}


                else
                {
                    Label1.Text = "Invalid username or password";

                }
            }
            catch (NullReferenceException ex)
            {
                
            }
        }

        private void ShowMessageBox(string p)
        {
            throw new NotImplementedException();
        }
    }
}
