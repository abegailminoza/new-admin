using BloodBank.Database;
using Newtonsoft.Json;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace BloodBank
{
    public partial class BB_Request_Survey : System.Web.UI.Page
    {
        private Database_Connections db = new Database_Connections();
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
                PopulateFormInputs();
            }
        }

        private void PopulateFormInputs()
        {
            blood_request br = Session["BloodRequest"] as blood_request;
            request_survey_form rq = JsonConvert.DeserializeObject<request_survey_form>(br.BREQ_JSON_SURVEY_FORM);

            familyname.Text = rq.lname;
            firstname.Text = rq.fname;
            middlename.Text = rq.mname;
            Sex.SelectedValue = rq.gender;
            month.SelectedValue = rq.month;
            day.Text = rq.day;
            year.Text = rq.year;
            Bloodtype.SelectedValue = rq.bloodtype;
            city.Text = rq.city;
            street.Text = rq.street;
            province.Text = rq.province;
            barangay.Text = rq.barangay;
            zip.Text = rq.zip;
            Home.Text = rq.homenum;
            Mobile.Text = rq.mobilenum;
            Email.Text = rq.email;

            DisableInputs();

            if(!br.BREQ_REQ_STATUS)
            {
                SurveyGroup.Style.Add("display", "none");
                BloodGroup.Style.Add("display", "none");
            }
            else if (!br.BREQ_SURVEY_STATUS)
            {
                SurveyGroup.Style.Add("display", "");
                BloodGroup.Style.Add("display", "none");
            }
            else if(!br.BREQ_BLOOD_STATUS)
            {
                SurveyGroup.Style.Add("display", "none");
                BloodGroup.Style.Add("display", "");
            }
        }

        private void DisableInputs()
        {
            familyname.Enabled = false;
            firstname.Enabled = false;
            middlename.Enabled = false;
            month.Enabled = false;
            day.Enabled = false;
            year.Enabled = false;
            Bloodtype.Enabled = false;
            city.Enabled = false;
            street.Enabled = false;
            province.Enabled = false;
            barangay.Enabled = false;
            zip.Enabled = false;
            Home.Enabled = false;
            Mobile.Enabled = false;
            Email.Enabled = false;
            Sex.Enabled = false;
            BackButton.Visible = true;
        }

        protected void BackButton_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/BB_BloodTransaction.aspx");
        }

        protected void ApproveSurveyBtn_Click(object sender, EventArgs e)
        {
            UserRequestSurveyResponse(true);
        }

        protected void RejectSurveyBtn_Click(object sender, EventArgs e)
        {
            UserRequestSurveyResponse(false);
        }

        private void UserRequestSurveyResponse(bool res)
        {
            blood_request br = Session["BloodRequest"] as blood_request;
            string query = "";

            if (res)
            {
                query = string.Format(@"update blood_request set BREQ_SURVEY_STATUS={0} where BREQ_ID={1}", res, br.BREQ_ID);
                if(db.UpdateBloodRequestStatus(query))
                {
                    //Success
                    Response.Write(string.Format("<script>alert('User {0} blood request survey was successfully approved.')</script>", br.BREQ_UACC_ID));

                    SurveyGroup.Style.Add("display", "none");
                    BloodGroup.Style.Add("display", "");
                }
            }
            else
            {
                query = string.Format(@"update blood_request set BREQ_SURVEY_STATUS=false, BREQ_BLOOD_STATUS=false, BREQ_REQ_STATUS={0} where BREQ_ID={1}", res, br.BREQ_ID);
                if (db.UpdateBloodRequestStatus(query))
                {
                    //Success
                    Response.Write(string.Format("<script>alert('User {0} blood request survey was successfully rejected.')</script>", br.BREQ_UACC_ID));

                    SurveyGroup.Style.Add("display", "none");
                    BloodGroup.Style.Add("display", "none");
                }
            }
        }

        protected void ApproveBloodBtn_Click(object sender, EventArgs e)
        {
            UserRequestBloodResponse(true);
        }

        protected void RejectBloodBtn_Click(object sender, EventArgs e)
        {
            UserRequestBloodResponse(false);
        }

        private void UserRequestBloodResponse(bool res)
        {
            blood_request br = Session["BloodRequest"] as blood_request;
            string query = "";

            if (res)
            {
                query = string.Format(@"update blood_request set BREQ_BLOOD_STATUS={0} where BREQ_ID={1}", res, br.BREQ_ID);
                if (db.UpdateBloodRequestStatus(query))
                {
                    //Success
                    Response.Write(string.Format("<script>alert('User {0} blood request was successfully approved.')</script>", br.BREQ_UACC_ID));

                    SurveyGroup.Style.Add("display", "none");
                    BloodGroup.Style.Add("display", "none");
                }
            }
            else
            {
                query = string.Format(@"update blood_request set BREQ_BLOOD_STATUS=false, BREQ_REQ_STATUS={0} where BREQ_ID={1}", res, br.BREQ_ID);
                if (db.UpdateBloodRequestStatus(query))
                {
                    //Success
                    Response.Write(string.Format("<script>alert('User {0} blood request was successfully rejected.')</script>", br.BREQ_UACC_ID));

                    SurveyGroup.Style.Add("display", "none");
                    BloodGroup.Style.Add("display", "none");
                }
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