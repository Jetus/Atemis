using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace AtemisNET.UserControls.Marketing.WebSite.CMS.HelpWebSite.WebSite
{
    public class Guide_Pages_Dummy
    {
        public int cp_id { get; set; }
	    public int cp_parentid { get; set; }
	    public string cp_name { get; set; }
	    public string cp_text { get; set; }
	    public string cp_title { get; set; }
	    public string cp_description { get; set; }
	    public string cp_keywords { get; set; }
	    public int cp_orderno { get; set; }
	    public string cp_externalurl { get; set; }
	    public bool cp_IsValid { get; set; }
	    public int clg_id { get; set; }
	    public int? cm_id { get; set; }
	    public DateTime? cp_modif_date { get; set; }
        public int? parent_id { get; set; }

        public Guide_Pages_Dummy()
        {
            clg_id = 1;
        }
    }
}