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
    public partial class Found : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Label1.Visible = false;
            Label1.Text = Session["name"].ToString();
        }

        protected void FoundPost_Click(object sender, EventArgs e)
        {
            if (FileUpload1.HasFile)
            {
                string date = DateTime.Now.ToString();

                int length = FileUpload1.PostedFile.ContentLength;
                byte[] imgbyte = new byte[length];
                HttpPostedFile img = FileUpload1.PostedFile;
                img.InputStream.Read(imgbyte, 0, length);
                string strname = FileUpload1.FileName.ToString();
                FileUpload1.PostedFile.SaveAs(Server.MapPath("~/images/") + strname);
                SqlConnection con = new SqlConnection("Data source=SHRONITBHARGAVA\\SQLEXPRESS; initial catalog=Project;integrated security=SSPI;persist security info=False; Trusted_Connection=Yes");
                con.Open();
                SqlCommand cmd = new SqlCommand("INSERT INTO Create_Foun(username,image,description,date,Subject,Status) VALUES ('" + Label1.Text + "','" + strname + "','"+TxtFound.Text.Trim()+"','"+date+"','"+TxtSubject.Text.Trim()+"','Pending')", con);
                
                int count = cmd.ExecuteNonQuery();
               // bindrepeater();
                TxtFound.Text = " ";
                TxtSubject.Text = "";
                con.Close();

            }
           
        }
    }
}
