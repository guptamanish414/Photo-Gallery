using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
//using System.Data;
//using System.Data.OleDb;
//using System.Text;


namespace Photo_Gallery
{
    public partial class register : System.Web.UI.Page
    {
        public static SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\v11.0;AttachDbFilename=C:\Users\Sandy\Documents\Visual Studio 2012\Projects\Photo Gallery\Photo Gallery\App_Data\Database1.mdf;Integrated Security=True");
        SqlCommand cmd = new SqlCommand();
        SqlDataReader dr;
        
        protected void Button1_Click(object sender, EventArgs e)
        {
            string FName = FN.Text;
            string LName = LN.Text;
            string UName = UN.Text;
            string pwd = Password.Text;
            string mob = Mobile.Text;
            string dob = Day.Text + "/" + Month.Text + "/" + Year.Text;
            string usedbefore = "0";

            if (FName == "" || LName == "" || UName == "" || pwd == "" || mob == "" || Day.Text == "Day" || Month.Text == "Month" || Year.Text == "Year")
            {
                Response.Write("<script language='javascript'>alert('All fields are mandatory..');window.location='register.aspx'</script>");
            }
            else if (FName.Length < 6 || LName.Length < 6 || UName.Length < 6 || pwd.Length < 6 || mob.Length != 10)
            {
                Response.Write("<script language='javascript'>alert('Values of First Name, Last Name, Username and Password must be minimum 6 in length.. and Mobile 10 digits..');window.location='register.aspx'</script>");
            }
            else
            {
                String s = mob;
                var chars = s.ToCharArray();
                int flag = 0;
                for (int ctr = 0; ctr < chars.Length; ctr++)
                {
                    if (Convert.ToInt32(chars[ctr]) >= 48 && Convert.ToInt32(chars[ctr]) <= 57)
                    {
                        //Response.Write("<script language='javascript'>alert('if : " + chars[ctr] + " : " + Convert.ToInt32(chars[ctr]) + "')</script>");
                        flag = 1;
                    } 
                    else
                    {
                        //Response.Write("<script language='javascript'>alert('else : " + chars[ctr] + " : " + Convert.ToInt32(chars[ctr]) + "')</script>");
                        flag = 0;
                        break;
                    }
                }

                if (flag == 0)
                    Response.Write("<script language='javascript'>alert('Mobile no. can contain only numbers..');window.location='register.aspx'</script>");
                else
                {
                    cmd.Connection = con;
                    con.Open();

                    cmd.CommandText = "select COUNT(*) AS Count from UserData where UN='" + UName + "'";
                    cmd.ExecuteNonQuery();

                    dr = cmd.ExecuteReader();
                    while (dr.Read())
                    {
                        usedbefore = dr["Count"].ToString();
                    }
                    dr.Close();

                    if (usedbefore == "0")
                    {
                        cmd.CommandText = "insert into UserData values('" + FName + "','" + LName + "','" + UName + "','" + pwd + "','" + mob + "','" + dob + "')";
                        cmd.ExecuteNonQuery();
                        Response.Write("<script language='javascript'>alert('Successfully registered. Please continue to login.');window.location='default.aspx'</script>");
                        con.Close();
                    }
                    else
                    {
                        string script = @"<script language=""javascript""> alert('UserName already exists. Please choose a different UserName.'); </script>;";
                        Page.ClientScript.RegisterStartupScript(this.GetType(), "myJScript1", script);
                        con.Close();
                    }
                }
            }
        }

        protected void Month_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void DropDownList3_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void Page_Load(object sender, EventArgs e)
        {

        }

    }
}