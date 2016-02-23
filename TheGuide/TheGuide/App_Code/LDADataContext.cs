using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace AtemisNET.UserControls.Marketing.WebSite.CMS.HelpWebSite.WebSite
{
    public class LDADataContext
    {
        public List<Guide_Pages_Dummy> Guide_Pages { get; set; }

        public LDADataContext()
        {
            Guide_Pages = new List<Guide_Pages_Dummy>();
            LoadDummyData();
        }

        private void LoadDummyData()
        {
            Guide_Pages.Add(new Guide_Pages_Dummy()
            {
                cp_id = 1,
                cp_parentid = -1,
                cp_name = "Main",
                cp_text = "<h1>Main!</h1><a href='javascript:GoToPage(4)'>More about Email</a><br/><a href='javascript:GoToPage(5)'>Check Income</a>",
                cp_title = "Main",
                cp_orderno = 0,
            });
            Guide_Pages.Add(new Guide_Pages_Dummy()
            {
                cp_id = 2,
                cp_parentid = -1,
                cp_name = "Messages",
                cp_text = "<h1>Messages!</h1>",
                cp_title = "Messages",
                cp_orderno = 1,
            });
            Guide_Pages.Add(new Guide_Pages_Dummy()
            {
                cp_id = 3,
                cp_parentid = 2,
                cp_name = "Internal Messages",
                cp_text = "<h1>Internal Messages!</h1><a href='javascript:GoToPage(1)'>Go back to Main</a>",
                cp_title = "Internal Messages",
                cp_orderno = 0,
            });
            Guide_Pages.Add(new Guide_Pages_Dummy()
            {
                cp_id = 4,
                cp_parentid = 2,
                cp_name = "Emails",
                cp_text = "<h1>Emails!</h1>",
                cp_title = "Emails",
                cp_orderno = 1,
            });
            Guide_Pages.Add(new Guide_Pages_Dummy()
            {
                cp_id = 5,
                cp_parentid = 4,
                cp_name = "Inbox",
                cp_text = "<h1>Inbox!</h1>",
                cp_title = "Inbox",
                cp_orderno = 0,
            });
        }
    }
}