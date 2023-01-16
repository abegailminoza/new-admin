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
	public partial class BB_BloodTransaction : System.Web.UI.Page
	{
        private Database_Connections db = new Database_Connections();
		protected void Page_Load(object sender, EventArgs e)
		{
            if (!Convert.ToBoolean(Session["LOGIN"]))
            {
                Response.Redirect("~/Default.aspx");
            }

            if(!Page.IsPostBack)
            {
                bloodbank bb = Session["bloodbank"] as bloodbank;
                //Set Username
                username.InnerText = bb.BB_USERNAME;
                PopulateDropDown();
                PopulateRequestBloodGrid();
            }
		}

        private void PopulateRequestBloodGrid()
        {
            string stat = RequestStatus.SelectedValue;
            string query = string.Format(@"select BREQ_ID, BREQ_UACC_ID, BREQ_JSON_SURVEY_FORM, BREQ_REQ_STATUS, BREQ_DATE,
                                            if(BREQ_SURVEY_STATUS = false && BREQ_REQ_STATUS = true, 'PENDING', 
                                            if(BREQ_SURVEY_STATUS = true && BREQ_REQ_STATUS = true, 'APPROVED', 
                                            if(BREQ_REQ_STATUS = false, 'REJECTED', 'REJECTED'))) as BREQ_SURVEY_STATUS,
                                            if(BREQ_BLOOD_STATUS = false && BREQ_REQ_STATUS = true, 'PENDING', 
                                            if(BREQ_BLOOD_STATUS = true && BREQ_REQ_STATUS = true, 'APPROVED', 
                                            if(BREQ_REQ_STATUS = false, 'REJECTED', 'REJECTED'))) as BREQ_BLOOD_STATUS
                                             from blood_request");
            switch(stat)
            {
                case "0":
                    query += " order by BREQ_DATE desc;";
                    break;
                case "1":
                    query += " where (BREQ_SURVEY_STATUS=false and BREQ_REQ_STATUS=true) or (BREQ_BLOOD_STATUS=false and BREQ_REQ_STATUS=true) order by BREQ_DATE desc;";
                    break;
                case "2":
                    query += " where BREQ_BLOOD_STATUS=true and BREQ_REQ_STATUS=true order by BREQ_DATE desc;";
                    break;
                case "3":
                    query += " where BREQ_REQ_STATUS=false order by BREQ_DATE desc;";
                    break;
            }


            DataTable dt = db.GetBloodTransactionTableData(query);
            if (dt != null)
            {
                GridUserBloodRequest.DataSource = null;
                GridUserBloodRequest.DataSource = dt;
                GridUserBloodRequest.DataBind();
            }
        }

        protected void GridUserBloodRequest_SelectedIndexChanged(object sender, EventArgs e)
        {
            GridViewRow row = GridUserBloodRequest.SelectedRow;
            string id = row.Cells[0].Text;

            blood_request br = db.SearchBloodRequest(id);
            if (br != null)
            {

                Session["BloodRequest"] = br;
                Response.Redirect("~/BB_Request_Survey.aspx");
            }
        }

        public void PopulateDropDown()
        {
            RequestStatus.Items.Clear();

            RequestStatus.Items.Insert(0, new ListItem("All", "0"));
            RequestStatus.Items.Insert(1, new ListItem("Pending", "1"));
            RequestStatus.Items.Insert(2, new ListItem("Approved", "2"));
            RequestStatus.Items.Insert(3, new ListItem("Rejected", "3"));
        }

        protected void RequestStatus_SelectedIndexChanged(object sender, EventArgs e)
        {
            PopulateRequestBloodGrid();
        }

        protected void SearchBloodRequest_Click(object sender, EventArgs e)
        {
            string query = string.Format("select * from blood_request where BREQ_UACC_ID={0};", SearchRequest.Text);
            DataTable dt = db.GetBloodTransactionTableData(query);
            if(dt != null)
            {
                GridUserBloodRequest.DataSource = null;
                GridUserBloodRequest.DataSource = dt;
                GridUserBloodRequest.DataBind();
            }
        }
    }
}