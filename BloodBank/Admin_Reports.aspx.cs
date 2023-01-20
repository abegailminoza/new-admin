using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using BloodBank.Database;

namespace BloodBank
{
    public partial class Admin_Reports : System.Web.UI.Page
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
                PopulateDropDown();
                PopulateUserGrid();
            }
        }



        private void PopulateUserGrid()
        {
            string stat = UserTableView.SelectedValue;
            string query = string.Format(@"select UACC_ID,UACC_FIRST,UACC_MIDDLE,UACC_LAST from user_account");
            switch (stat)
            {
                case "0":
                    query += " order by UACC_LAST desc;";
                    break;
                case "1":
                    query += " where UACC_REQUESTOR=true  order by UACC_LAST desc;";
                    break;
                case "2":
                    query += " where UACC_DONOR=true  order by UACC_LAST desc;";
                    break;
      
            }


            DataTable dt = db.GetUserTableData(query);
            if (dt != null)
            {
                GridUser.DataSource = null;
                GridUser.DataSource = dt;
                GridUser.DataBind();
            }
        }
        public void PopulateDropDown()
        {

            UserTableView.Items.Insert(0, new ListItem("All", "0"));
            UserTableView.Items.Insert(1, new ListItem("Blood Requester", "1"));
            UserTableView.Items.Insert(2, new ListItem("Blood Donor", "2"));
        }

        protected void TableView_SelectedIndexChanged(object sender, EventArgs e)
        {


            int table = UserTableView.SelectedIndex;
            switch (table)
            {
                case 0:
                    PopulateUserGrid();
                    break;
                case 1:

                    PopulateUserGrid();
                    break;
                case 2:

                    PopulateUserGrid();
                    break;
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