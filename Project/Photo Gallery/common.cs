using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.SqlClient;
using System.Data;
using System.Data.OleDb;
using System.IO;

namespace Photo_Gallery
{
    public class common
    {

        public static void uploadImage(string filename,int cat,string un)
        {
            SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\v11.0;AttachDbFilename=C:\Users\Sandy\Documents\Visual Studio 2012\Projects\Photo Gallery\Photo Gallery\App_Data\Database1.mdf;Integrated Security=True");
            SqlCommand cmd = new SqlCommand();

            cmd.Connection = con;
            con.Open();

            cmd.CommandText = "insert into imageData (image,category,uploadedby) values('" + filename + "','" + cat + "','"+un+"')";
            cmd.ExecuteNonQuery();
            con.Close();
        }

        public static string retrieveImages(int cat)
        {
            SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\v11.0;AttachDbFilename=C:\Users\Sandy\Documents\Visual Studio 2012\Projects\Photo Gallery\Photo Gallery\App_Data\Database1.mdf;Integrated Security=True");
            SqlCommand cmd = new SqlCommand();
            SqlDataReader dr;

            cmd.Connection = con;
            con.Open();

            cmd.CommandText = "select image AS img, uploadedby AS uploader from imageData where category ='" + cat + "'";
            cmd.ExecuteNonQuery();

            string imagesForConatiner = "";

            dr = cmd.ExecuteReader();
            
            while (dr.Read()){
                string img = dr["img"].ToString();
                string imgpath = "uploadedImages/" + img;
                string uploader = dr["uploader"].ToString();
                imagesForConatiner = imagesForConatiner + "<div class='imageContainer'><a href='fullsize.aspx?imgname=" + img + "' target='_blank'><img src='" + imgpath + "' alt='Sorry Image Missing' title='to see large image click' /></a><div class='text-content'>Uploaded By<br /> " + uploader + "</div></div>";
            }
            dr.Close();

            con.Close();

            return imagesForConatiner;
        }

        public static string filename()
        {
            DateTime CurrentDate = Convert.ToDateTime(DateTime.Now);
            string dt = CurrentDate.ToString();
            dt = dt.Replace("/", "");
            dt = dt.Replace(":", "");
            dt = dt.Replace(" ", "");
            dt = dt.Remove(dt.Length - 2);
            Random rnd = new Random();
            String file_name = dt + rnd.Next(111111, 999999).ToString();
            return file_name;
        }
    }
}