﻿using BloodBank.Database;
using Newtonsoft.Json;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;

namespace BloodBank
{
    public partial class Donor_Survey : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            DonorSurvey ds = JsonConvert.DeserializeObject<DonorSurvey>("{\"personalInfo\":{\"PanelName\":\"asfdasf\",\"DonorName\":\"safa\",\"FamilyName\":\"sadfs\",\"FirstName\":\"dsgse\",\"Title\":\"estrwg\",\"IDNo\":\"dsges\",\"DateOfBirth\":\"2023-01-14\",\"Gender\":\"dsfwecs dasd \",\"Occupation\":\"sadasd\",\"ResidentialAddress\":\"asrwq\",\"PostalAddress\":\"wrwer\",\"Home\":\"13214\",\"Work\":\"2141254\",\"Mobile\":\"4356436\",\"EmailAddress\":\"bdeadsd\"},\"healthAssessment\":{\"N11\":\"yes\",\"N12\":\"yes\",\"N13\":\"yes\",\"N14\":\"yes\",\"N15\":\"yes\",\"N16a\":\"yes\",\"N16b\":\"yes\",\"N16c\":\"yes\",\"N16d\":null,\"N17\":\"yes\",\"N18a\":\"yes\",\"N18b\":\"yes\",\"N19a\":\"yes\",\"N19b\":\"yes\",\"N19c\":\"yes\",\"N110\":\"yes\",\"N111\":\"yes\",\"N112\":\"yes\",\"N113\":\"yes\",\"N114a\":\"yes\",\"N114b\":\"yes\",\"N115\":\"sdasdn\"},\"riskAssessment\":{\"N21\":\"yes\",\"N22\":\"yes\",\"N23\":\"voluntary,\",\"N24\":\"yes\",\"N25\":\"yes\",\"N26\":\"yes\",\"N27a\":\"yes\",\"N27b\":\"yes\",\"N27c\":\"yes\",\"N28\":\"yes\",\"N29\":\"yes\",\"N210\":\"yes\",\"N211\":\"yes\"}}");
            PopulateSurveyForm(ds);
        }

        protected void Unnamed_Click(object sender, EventArgs e)
        {
            string sample11 = Request.Form["rd23"].ToString();
            Response.Write("<script>alert('" + sample11 + "')</script>");
            //GetSurveyInputs();
        }

        private void GetSurveyInputs()
        {
            DonorSurvey ds = new DonorSurvey();

            //Basic/Personal Information
            ds.personalInfo.Lname = Request.Form["familyname"].ToString();
            ds.personalInfo.Fname = Request.Form["firstname"].ToString();
            ds.personalInfo.Mname = Request.Form["middlename"].ToString();
            ds.personalInfo.Month = Request.Form["month"].ToString();
            ds.personalInfo.Day = Request.Form["day"].ToString();
            ds.personalInfo.Year = Request.Form["year"].ToString();
            ds.personalInfo.Gender = Request.Form["Sex"].ToString();
            ds.personalInfo.Street = Request.Form["street"].ToString();
            ds.personalInfo.Barangay = Request.Form["barangay"].ToString();
            ds.personalInfo.City = Request.Form["city"].ToString();
            ds.personalInfo.Province = Request.Form["province"].ToString();
            ds.personalInfo.Zip = Request.Form["zip"].ToString();
            ds.personalInfo.Homenum = Request.Form["Home"].ToString();
            ds.personalInfo.Mobilenum = Request.Form["Mobile"].ToString();
            ds.personalInfo.Email = Request.Form["email"].ToString();

            //1st Part of the Survey
            ds.healthAssessment.N11 = Request.Form["rd11"].ToString();
            ds.healthAssessment.N12 = Request.Form["rd12"].ToString();
            ds.healthAssessment.N13 = Request.Form["rd13"].ToString();
            ds.healthAssessment.N14 = Request.Form["rd14"].ToString();
            ds.healthAssessment.N15 = Request.Form["rd15"].ToString();
            ds.healthAssessment.N16a = Request.Form["rd16a"].ToString();
            ds.healthAssessment.N16b = Request.Form["rd16b"].ToString();  
            ds.healthAssessment.N16c = Request.Form["rd16c"].ToString();
            ds.healthAssessment.N16d = Request.Form["rd16d"].ToString();
            ds.healthAssessment.N17 = Request.Form["rd17"].ToString();
            ds.healthAssessment.N18a = Request.Form["rd18a"].ToString();
            ds.healthAssessment.N18b = Request.Form["rd18b"].ToString();
            ds.healthAssessment.N19a = Request.Form["rd19a"].ToString();
            ds.healthAssessment.N19b = Request.Form["rd19b"].ToString();
            ds.healthAssessment.N19c = Request.Form["rd19c"].ToString();
            ds.healthAssessment.N110 = Request.Form["rd110"].ToString();
            ds.healthAssessment.N111 = Request.Form["rd111"].ToString();
            ds.healthAssessment.N112 = Request.Form["rd112"].ToString();
            ds.healthAssessment.N113 = Request.Form["rd113"].ToString();
            ds.healthAssessment.N114a = Request.Form["rd114a"].ToString();
            ds.healthAssessment.N114b = Request.Form["rd114b"].ToString();
            ds.healthAssessment.N115 = Request.Form["rd115"].ToString();

            //2nd Part of the survey
            ds.riskAssessment.N21 = Request.Form["rd21"].ToString();
            ds.riskAssessment.N22 = Request.Form["rd22"].ToString();
            ds.riskAssessment.N23 = Request.Form["rd23"].ToString();
            ds.riskAssessment.N24 = Request.Form["rd24"].ToString();
            ds.riskAssessment.N25 = Request.Form["rd25"].ToString(); 
            ds.riskAssessment.N26 = Request.Form["rd26"].ToString();
            ds.riskAssessment.N27a = Request.Form["rd27a"].ToString();
            ds.riskAssessment.N27b = Request.Form["rd27b"].ToString();
            ds.riskAssessment.N27c = Request.Form["rd27c"].ToString();
            ds.riskAssessment.N28 = Request.Form["rd28"].ToString();
            ds.riskAssessment.N29 = Request.Form["rd29"].ToString();
            ds.riskAssessment.N210 = Request.Form["rd210"].ToString();
            ds.riskAssessment.N211 = Request.Form["rd211"].ToString();

            Session["Surver"] = JsonConvert.SerializeObject(ds);
            Response.Write(JsonConvert.SerializeObject(ds));
        }

        protected void samp_Click(object sender, EventArgs e)
        {
            

        }

        public void SampleInputs(DonorSurvey ds)
        {
            //HtmlInputText pn = (HtmlInputText)Page.FindControl("panelname");
            //Response.Write(pn);
            //pn.Value = ds.personalInfo.PanelName;
        }

        public void PopulateSurveyForm(DonorSurvey ds)
        {


            //Basic/Personal Information
            ViewState["familyname"] = ds.personalInfo.Lname;
            ViewState["firstname"] = ds.personalInfo.Fname;
            ViewState["middlename"] = ds.personalInfo.Mname;
            ViewState["gender"] = ds.personalInfo.Gender;
            ViewState["month"] = ds.personalInfo.Month;
            ViewState["day"] = ds.personalInfo.Day;
            ViewState["year"] = ds.personalInfo.Year;
            ViewState["street"] = ds.personalInfo.Street;
            ViewState["barangay"] = ds.personalInfo.Barangay;
            ViewState["city"] = ds.personalInfo.City; ;
            ViewState["province"] = ds.personalInfo.Province;
            ViewState["zip"] = ds.personalInfo.Zip;
            ViewState["homenum"] = ds.personalInfo.Homenum;
            ViewState["mobilenum"] = ds.personalInfo.Mobilenum;
            ViewState["email"] = ds.personalInfo.Email;

            ////1st Part of the Survey
            //Request.Params["rd11"] = ds.healthAssessment.N11;
            //Request.Params["rd12"] = ds.healthAssessment.N12;
            //Request.Params["rd13"] = ds.healthAssessment.N13;
            //Request.Params["rd14"] = ds.healthAssessment.N14;
            //Request.Params["rd15"] = ds.healthAssessment.N15;
            //Request.Params["rd16a"] = ds.healthAssessment.N16a;
            //Request.Params["rd16b"] = ds.healthAssessment.N16b;
            //Request.Params["rd16c"] = ds.healthAssessment.N16c;
            //Request.Params["rd17"] = ds.healthAssessment.N17;
            //Request.Params["rd18a"] = ds.healthAssessment.N18a;
            //Request.Params["rd18b"] = ds.healthAssessment.N18b;
            //Request.Params["rd19a"] = ds.healthAssessment.N19a;
            //Request.Params["rd19b"] = ds.healthAssessment.N19b;
            //Request.Params["rd19c"] = ds.healthAssessment.N19c;
            //Request.Params["rd110"] = ds.healthAssessment.N110;
            //Request.Params["rd111"] = ds.healthAssessment.N111;
            //Request.Params["rd112"] = ds.healthAssessment.N112;
            //Request.Params["rd113"] = ds.healthAssessment.N113;
            //Request.Params["rd114a"] = ds.healthAssessment.N114a;
            //Request.Params["rd114b"] = ds.healthAssessment.N114b;
            //Request.Params["rd115"] = ds.healthAssessment.N115;

            ////2nd Part of the survey
            //Request.Params["rd21"] = ds.riskAssessment.N21;
            //Request.Params["rd22"] = ds.riskAssessment.N22;
            //Request.Params["rd23"] = ds.riskAssessment.N23;
            //Request.Params["rd24"] = ds.riskAssessment.N24;
            //Request.Params["rd25"] = ds.riskAssessment.N25;
            //Request.Params["rd26"] = ds.riskAssessment.N26;
            //Request.Params["rd27a"] = ds.riskAssessment.N27a;
            //Request.Params["rd27b"] = ds.riskAssessment.N27b;
            //Request.Params["rd27c"] = ds.riskAssessment.N27c;
            //Request.Params["rd28"] = ds.riskAssessment.N28;
            //Request.Params["rd29"] = ds.riskAssessment.N29;
            //Request.Params["rd210"] = ds.riskAssessment.N210;
            //Request.Params["rd211"] = ds.riskAssessment.N211;
        }

        protected void BackButton_Click(object sender, EventArgs e)
        {

        }

        protected void BtnLogout_ServerClick(object sender, EventArgs e)
        {

            Session.Clear();
            Session.RemoveAll();
            Server.Transfer("~/Default.aspx");
        }
    }
}