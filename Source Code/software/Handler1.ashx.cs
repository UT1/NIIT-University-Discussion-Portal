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
using System.IO;
using System.Web.Services;
using System.Web.Services.Protocols;
using System.Xml.Linq;
using System.Data.SqlClient;

namespace software
{
    /// <summary>
    /// Summary description for $codebehindclassname$
    /// </summary>
    [WebService(Namespace = "http://tempuri.org/")]
    [WebServiceBinding(ConformsTo = WsiProfiles.BasicProfile1_1)]
    public class Handler1 : IHttpHandler
    {

        public void ProcessRequest(HttpContext context)
        {
            if (context.Request.QueryString["id"] != null)
            {
                // context.Response.Write(context.Request.QueryString["id"]);
                SqlConnection Csql = new SqlConnection("Data source=SHRONITBHARGAVA\\SQLEXPRESS; initial catalog=Project; integrated security=SSPI;persist security info=False; Trusted_Connection=Yes");
                Csql.Open();
                SqlCommand Cmmd = new SqlCommand("Select image from Create_Foun where PostId=@empid", Csql);
                Cmmd.Parameters.AddWithValue("@empid", context.Request.QueryString["PostId"].ToString());
                SqlDataReader dr = Cmmd.ExecuteReader();
                dr.Read();
                context.Response.BinaryWrite((byte[])dr["image"]);
                dr.Close();
                Csql.Close();
            }
            else
            {
                context.Response.Write("No Image Found");
            }
        }

        public bool IsReusable
        {
            get
            {
                return false;
            }
        }
    }
}
