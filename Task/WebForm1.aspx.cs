using System;
using Task.Models;
using Newtonsoft.Json;
using System.IO;

namespace Task
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            GithubUser user = new GithubUser();
            user.Username = TextBox1.Text;
            bool success = int.TryParse(TextBox2.Text, out int id);
            if (success)
            {
                user.Id = id;
            }
            else
            {
                Response.Write("<script>alert('You must enter a number')</script>");
                return;
            }
            user.Url = TextBox3.Text;
            user.Name = TextBox4.Text;
            user.Location = TextBox5.Text;
            user.Email = TextBox6.Text;
            string strJson = JsonConvert.SerializeObject(user);
            File.WriteAllText(@"C:\Users\User\Desktop\json\user.json", strJson);
        }
    }
}