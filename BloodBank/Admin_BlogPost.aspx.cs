using BloodBank.Database;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;


namespace BloodBank
{
    public partial class Admin_BlogPost : System.Web.UI.Page
    {
        Database_Connections db = new Database_Connections();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Convert.ToBoolean(Session["LOGIN"]))
            {
                Response.Redirect("~/Default.aspx");
            }
            if (!Page.IsPostBack)
            {
                bloodbank bb = Session["bloodbank"] as bloodbank;
                //Set Username
                username.InnerText = bb.BB_USERNAME;

                PopulatePosts();
            }
        }

        public void PopulatePosts()
        {
           DataTable dt = db.SampleReapeater();
            if (dt != null)
            {
                BlogPosts.DataSource = null;
                BlogPosts.DataSource = dt;
                BlogPosts.DataBind();
                Session["BlogPosts"] = dt;
            }
        }
        protected void BtnLogout_ServerClick(object sender, EventArgs e)
        {

            Session.Clear();
            Session.RemoveAll();
            Server.Transfer("~/Default.aspx");
        }
    }
}