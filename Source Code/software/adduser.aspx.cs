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
    public partial class adduser : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Label1.Visible = false;
            Label1.Text = Session["name"].ToString();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {

            SqlConnection con = new SqlConnection("Data source=SHRONITBHARGAVA\\SQLEXPRESS; initial catalog=Project;integrated security=SSPI;persist security info=False; Trusted_Connection=Yes");
            con.Open();
            if (TxtAge.Text == " " || Txtcontact.Text == " ")
            {
                SqlCommand cmd = new SqlCommand("insert into reg(username,password,phoneno,email,type,address,age,gender,name,father_name,Branch) values ('" + Txtusername.Text + "','" + Txtpassword.Text + "','NULL','" + Txtemail.Text + "','" + Txttype.Text + "','" + TxtAddress.Text + "','" + TxtAge.Text + "','" + TxtGender.Text + "','" + Txtname.Text + "','" + Txtfname.Text + "','" + Txtbranch.Text + "')");
                cmd.Connection = con;
                cmd.ExecuteNonQuery();

            }
            else
            {
                SqlCommand cmd = new SqlCommand("insert into reg(username,password,phoneno,email,type,address,age,gender,name,father_name,Branch) values ('" + Txtusername.Text + "','" + Txtpassword.Text + "','" + Txtcontact.Text + "','" + Txtemail.Text + "','" + Txttype.Text + "','" + TxtAddress.Text + "','" + TxtAge.Text + "','" + TxtGender.Text + "','" + Txtname.Text + "','" + Txtfname.Text + "','" + Txtbranch.Text + "')");
                cmd.Connection = con;
                cmd.ExecuteNonQuery();

            }
            con.Close();
            TxtAddress.Text = " ";
            TxtAge.Text = " ";
            Txtbranch.Text = " ";
            Txtcontact.Text = " ";
            Txtemail.Text = " ";
            Txtfname.Text = " ";
            TxtGender.Text = " ";
            Txtname.Text = " ";
            Txtpassword.Text = " ";
            Txttype.Text = " ";
            Txtusername.Text = " ";
            

        }

    }
}
