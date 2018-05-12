using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;

namespace Photo_Gallery
{
    public partial class cat2 : System.Web.UI.Page
    {
        public string imagesForConatiner;
        protected void Page_Load(object sender, EventArgs e)
        {
            string UserName = (string)(Session["UserName"]);
            if (UserName == "" || UserName == null)
            {
                Response.Redirect("~/default.aspx");
            }
            else
            {
                string UName = (string)(Session["UserName"]);
                LoggedUser.Text = "Welcome " + UName;
            }

            int cat = 2;
            imagesForConatiner = common.retrieveImages(cat).ToString();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string UserName = (string)(Session["UserName"]);
            String ex = Path.GetExtension(FileUpload1.FileName);
            if (ex == ".jpg" || ex == ".jpeg" || ex == ".png" || ex == ".JPG" || ex == ".JPEG" || ex == ".PNG")
            {
                String file_name = common.filename() + ex;
                FileUpload1.PostedFile.SaveAs(Server.MapPath("~/uploadedImages/") + file_name);
                int cat = 2;
                common.uploadImage(file_name, cat, UserName);
                Response.Write("<script language='javascript'>alert('Image Uploaded Successfully..');window.location='cat2.aspx'</script>");
            }
            else
            {
                string script = @"<script language=""javascript""> alert('Please use correct format... [.jpeg/.jpg/.png]'); </script>;";
                Page.ClientScript.RegisterStartupScript(this.GetType(), "myJScript1", script);
            }
        }
    }
}