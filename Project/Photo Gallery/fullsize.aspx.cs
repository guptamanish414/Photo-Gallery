using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Photo_Gallery
{
    public partial class fullsize : System.Web.UI.Page
    {
        public string imgpath;
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

            imgpath = "uploadedImages/"+Request.QueryString["imgname"];
        }
    }
}