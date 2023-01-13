using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace BloodBank.Database
{
    public class bloodbank
    {
        public string BB_ID { get; set; }
        public string BB_USERNAME { get; set; }
        public string BB_PASSWORD { get; set; }
        public bool BB_RANK { get; set; }
        public bool BB_STATUS { get; set; }
    }

    public class bloodbanklogs
    {
        public string BL_ID { get; set; }
        public string BL_DESCRIPTION { get; set; }
        public string BL_BB_ID { get; set; }
        public string BL_DATE { get; set; }
    }
}