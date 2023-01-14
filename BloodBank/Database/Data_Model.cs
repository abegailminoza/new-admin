using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace BloodBank.Database
{
    [Serializable]
    public class bloodbank
    {
        public string BB_ID { get; set; }
        public string BB_USERNAME { get; set; }
        public string BB_PASSWORD { get; set; }
        public bool BB_RANK { get; set; }
        public bool BB_STATUS { get; set; }
    }

    [Serializable]
    public class bloodbanklogs
    {
        public string BL_ID { get; set; }
        public string BL_DESCRIPTION { get; set; }
        public string BL_BB_ID { get; set; }
        public string BL_DATE { get; set; }
    }

    [Serializable]
    public class DonorSurvey
    {
        public PersonalInfo personalInfo { get; set; }
        public HealthAssessment healthAssessment { get; set; }
        public RiskAssessment riskAssessment { get; set; }

        public DonorSurvey()
        {
            personalInfo = new PersonalInfo();
            healthAssessment = new HealthAssessment();
            riskAssessment = new RiskAssessment();
        }
    }

    [Serializable]
    public class PersonalInfo
    {
        public string PanelName { get; set; }
        public string DonorName { get; set; }
        public string FamilyName { get; set; }
        public string FirstName { get; set; }
        public string Title { get; set; }
        public string IDNo { get; set; }
        public string DateOfBirth { get; set; }
        public string Gender { get; set; }
        public string Occupation { get; set; }
        public string ResidentialAddress { get; set; }
        public string PostalAddress { get; set; }
        public string Home { get; set; }
        public string Work { get; set; }
        public string Mobile { get; set; }
        public string EmailAddress { get; set; }
    }

    [Serializable]
    public class HealthAssessment
    {
        public string N11 { get; set; }
        public string N12 { get; set; }
        public string N13 { get; set; }
        public string N14 { get; set; }
        public string N15 { get; set; }
        public string N16a { get; set; }
        public string N16b { get; set; }
        public string N16c { get; set; }
        public string N16d { get; set; }
        public string N17 { get; set; }
        public string N18a { get; set; }
        public string N18b { get; set; }
        public string N19a { get; set; }
        public string N19b { get; set; }
        public string N19c { get; set; }
        public string N110 { get; set; }
        public string N111 { get; set; }
        public string N112 { get; set; }
        public string N113 { get; set; }
        public string N114a { get; set; }
        public string N114b { get; set; }
        public string N115 { get; set; }
    }

    [Serializable]
    public class RiskAssessment
    {
        public string N21 { get; set; }
        public string N22 { get; set; }
        public string N23 { get; set; }
        public string N24 { get; set; }
        public string N25 { get; set; }
        public string N26 { get; set; }
        public string N27a { get; set; }
        public string N27b { get; set; }
        public string N27c { get; set; }
        public string N28 { get; set; }
        public string N29 { get; set; }
        public string N210 { get; set; }
        public string N211 { get; set; }
    }
}