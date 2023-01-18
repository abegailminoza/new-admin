using BloodBank.Database;
using Newtonsoft.Json;
using System;
using System.Collections.Generic;
using System.Diagnostics;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace BloodBank
{
    public partial class _Default : Page
    {
        private Database_Connections db = new Database_Connections();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Login_Click(object sender, EventArgs e)
        {
            string uname = Username.Text;
            string pword = Password.Text;

            //Check if Input Fields are Empty
            if(uname == "" || pword == "")
            {
                //Display Message

            }
            else
            {
                //Attempt to Login

                //Query or SQL Command
                string query = string.Format(@"select * from admin where binary ADMIN_EMAIL='{0}' and binary ADMIN_PASSWORD='{1}';", uname, pword);

                //Try Query
                bloodbank bb = db.BloodbankLogin(query);

                Debug.Print(JsonConvert.SerializeObject(bb));

                //Check if it is not empty
                if(bb.BB_ID != null)
                {
                    //Save Login Information in Session
                    Session["LOGIN"] = true;
                    Session["bloodbank"] = bb;

                    
                    Response.Redirect("~/BB_Dashboard.aspx");
                }
                else
                {
                    Response.Write("<script>alert('Username and Password Mismatch.')</script>");
                }
                
            }
        }
    }
}