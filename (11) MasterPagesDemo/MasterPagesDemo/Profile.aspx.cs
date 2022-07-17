using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace MasterPagesDemo
{
    public partial class Profile : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnupload_Click(object sender, EventArgs e)
        {
            //check user has selected the file or not
            if(picupload.HasFile) //returns true if user has selected the file
            {
                if (picupload.PostedFile.ContentType.Equals(@"image/jpeg"))
                {
                    try
                    {
                        picupload.SaveAs(@"C:\Users\mcamock\source\repos\MasterPagesDemo\MasterPagesDemo\Profilepics\" + picupload.FileName);
                        Label2.Text = "File uploaded successfully<br>" + picupload.PostedFile.ContentType;
                        imgprofile.ImageUrl = @"~\Profilepics\" + picupload.FileName;
                    }
                    catch (Exception ex)
                    {
                        Label2.Text = ex.Message;
                    }
                }
                else
                {
                    Label2.Text = "File must be jpeg";
                }
            }
            
            else
            {
                Label2.Text = "You have not selected any file";
            }
        }
    }
}