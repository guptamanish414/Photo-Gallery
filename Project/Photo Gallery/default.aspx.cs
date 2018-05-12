using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
//using System.Data.Sql;
using System.Data.SqlClient;

namespace Photo_Gallery
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        public static SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\v11.0;AttachDbFilename=C:\Users\Sandy\Documents\Visual Studio 2012\Projects\Photo Gallery\Photo Gallery\App_Data\Database1.mdf;Integrated Security=True");
        SqlCommand cmd = new SqlCommand();
        SqlDataReader dr;

        protected void Page_Load(object sender, EventArgs e)
        {
            Session["UserName"] = "";
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string UName = UN.Text;
            string pwd = Password.Text;
            string userexists = "0";

            cmd.Connection = con;
            con.Open();

            cmd.CommandText = "select COUNT(*) AS Count from UserData where UN='" + UName + "' AND Pwd = '" + pwd + "'";
            cmd.ExecuteNonQuery();

            dr = cmd.ExecuteReader();
            while (dr.Read())
            {
                userexists = dr["Count"].ToString();
            }
            dr.Close();

            if (userexists == "0")
            {
                msg.Visible = true;
                con.Close();
            }
            else
            {
                msg.Visible = false;
                Session["UserName"] = UName;
                con.Close();
                Response.Redirect("~/cat1.aspx");
            }
        }
    }
}