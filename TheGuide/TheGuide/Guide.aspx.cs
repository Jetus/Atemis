using System;
using System.Drawing;
using System.IO;
using System.Linq;
using System.Web.UI.WebControls;
//using AtemisNET.Commons.DataAccess;
//using AtemisNET.Commons.Commons;
using DevExpress.Web;
using DevExpress.Web.ASPxHtmlEditor;
using DevExpress.Web.Internal;
using DevExpress.XtraPrinting;
using DevExpress.XtraRichEdit;
using DevExpress.XtraRichEdit.API.Native;
using Page = System.Web.UI.Page;

namespace AtemisNET.UserControls.Marketing.WebSite.CMS.HelpWebSite.WebSite
{
    public partial class WebSite : Page
    {
        readonly LDADataContext db = new LDADataContext();

        protected void Page_Load(object sender, EventArgs e)
        {
            InitData();
        }

        void InitData()
        {

            //if (MySession.CMS.HelpWebsite.LngID == 0)
            //{
            //    ReadStartParams();
            //}

            if (!cpContent.IsCallback)
            {
                FillCategories();
                LoadContentControls();
            }
        }

        void FillCategories()
        {
            var Sel = (from n in db.Guide_Pages where n.cp_parentid == -1 && n.clg_id == 1 /*MySession.CMS.HelpWebsite.LngID*/ select n).OrderBy(n => n.cp_parentid).OrderBy(n => n.cp_orderno).ToList();

            tvw.Nodes.Clear();

            for (int i = 0; i < Sel.Count; i++)
            {
                TreeNode tnRoot = new TreeNode
                {
                    Text = Sel[i].cp_name,                    
                    Value = Sel[i].cp_id.ToString(),                                        
                    ToolTip = Sel[i].cp_id.ToString(),
                    //SelectAction = TreeNodeSelectAction.SelectExpand,
                    //NavigateUrl = "JavaScript:GoToPage('" + Sel[i].cp_id + "')",
                };

                if (Sel[i].cp_name == "1b") tnRoot.Expand();
                AddSubNodes(tnRoot, Sel[i].cp_id);

                tvw.Nodes.Add(tnRoot);
            }

            tvw.CollapseAll();

            for (int i = 0; i < tvw.Nodes.Count; i++)
            {
                ExpantCurrent(tvw.Nodes[i]);
            }
        }

        void ExpantCurrent(TreeNode tn)
        {
            // I got error with the IsNotNullOrEmpty() so I replace
            //if (Request.Params["pid"].IsNotNullOrEmpty())
            if (Request.Params["pid"] != null && !string.IsNullOrEmpty(Request.Params["pid"].ToString()))
            {
                if (tn.Value == Request.Params["pid"])
                {
                    ExpandParents(tn);
                }
            }

            for (int i = 0; i < tn.ChildNodes.Count; i++)
            {
                ExpantCurrent(tn.ChildNodes[i]);
            }
        }

        void ExpandParents(TreeNode tn)
        {
            tn.Expand();

            if (tn.Parent != null) ExpandParents(tn.Parent);
        }

        void AddSubNodes(TreeNode tn, int cp_parentid)
        {
            var Sel = (from n in db.Guide_Pages where n.cp_parentid == cp_parentid select n).OrderBy(n => n.cp_orderno).ToList();

            for (int i = 0; i < Sel.Count; i++)
            {
                TreeNode tnNew = new TreeNode {
                    Text = Sel[i].cp_name,
                    //NavigateUrl = "JavaScript:GoToPage('" + Sel[i].cp_id + "')",
                    Value = Sel[i].cp_id.ToString(),
                    ToolTip = Sel[i].cp_id.ToString(),
                    //SelectAction = TreeNodeSelectAction.SelectExpand,
                };

                tn.ChildNodes.Add(tnNew);

                AddSubNodes(tnNew, Sel[i].cp_id);
            }
        }

        //void ReadStartParams()
        //{
        //    if (Request.Params["lng"] != null)
        //    {
        //        int i;
        //        int.TryParse(Request.Params["lng"], out i);

        //        MySession.CMS.HelpWebsite.LngID = i;
        //    }

        //    if (MySession.CMS.HelpWebsite.LngID == 0)
        //    {
        //        MySession.CMS.HelpWebsite.LngID = 1;
        //    }
        //}

        void LoadCMSPage(int pid)
        {
            var GetPage = (from n in db.Guide_Pages where n.cp_id == pid select n).FirstOrDefault()
                ?? (from n in db.Guide_Pages where n.cp_parentid == -1 && n.clg_id == 1 /*MySession.CMS.HelpWebsite.LngID*/ select n).OrderBy(n => n.cp_orderno).FirstOrDefault();

            if (GetPage != null)
            {
                if (string.IsNullOrEmpty(GetPage.cp_externalurl))
                {
                    dxRpContent.HeaderText = GetPage.cp_name;

                    plhContentContent.Controls.Clear();
                    Literal ltr = new Literal { Text = GetPage.cp_text };
                    plhContentContent.Controls.Add(ltr);
                }
            }
        }

        void LoadContentControls()
        {
            int pid = 0;

            if (Request.Params["pid"] != null)
            {
                int.TryParse(Request.Params["pid"], out pid);
            }

            LoadCMSPage(pid);
        }

        #region Callbacks

        protected void cpContent_Callback(object source, CallbackEventArgsBase e)
        {
            // I got error with the ToInteger() so I replace
            //LoadCMSPage(e.Parameter.ToInteger());
            if (e.Parameter == "export")
            {
                var Sel = (from n in db.Guide_Pages where n.cp_parentid == -1 && n.clg_id == 1 /*MySession.CMS.HelpWebsite.LngID*/ select n).OrderBy(n => n.cp_parentid).OrderBy(n => n.cp_orderno).ToList();
                string content = string.Empty;
                foreach (var page in Sel)
                    AddExportContent(ref content, page.cp_id, page.cp_name, page.cp_text, 1);
                ExecuteExport(content);
            }
            else
                LoadCMSPage(Convert.ToInt32(e.Parameter));
        }

        #endregion

        protected string GetTreeViewMap()
        {
            string result = string.Empty;
            foreach (var page in db.Guide_Pages)
            {
                result += string.Format("{{\"cp_id\":{0}, \"cp_parentid\":{1}}},", page.cp_id, page.cp_parentid);
            }
            if (result.Length > 0)
                result = result.TrimEnd(',');
            return string.Format("[{0}]", result);
        }

        protected void btnExportToPDF_Click(object sender, EventArgs e)
        {
            var Sel = (from n in db.Guide_Pages where n.cp_parentid == -1 && n.clg_id == 1 /*MySession.CMS.HelpWebsite.LngID*/ select n).OrderBy(n => n.cp_parentid).OrderBy(n => n.cp_orderno).ToList();
            string content = string.Empty;
            foreach (var page in Sel)
                AddExportContent(ref content, page.cp_id, page.cp_name, page.cp_text, 1);
            ExecuteExport(content);
        }

        private void AddExportContent(ref string content, int cp_id, string cp_name, string cp_text, int level)
        {
            content += string.Format("<h{0}>{1}</h{0}>", level, cp_name);
            content += cp_text;
            var Sel = (from n in db.Guide_Pages where n.cp_parentid == cp_id select n).OrderBy(n => n.cp_orderno).ToList();
            foreach (var page in Sel)
                AddExportContent(ref content, page.cp_id, page.cp_name, page.cp_text, level + 1);
        }

        private void ExecuteExport(string content)
        {
            var richServer = new RichEditDocumentServer();
            richServer.Document.HtmlText = content;
            Section firstSection = richServer.Document.Sections[0];

            #region Header            

            SubDocument header = firstSection.BeginUpdateHeader();
            header.AppendText("AtemisCloud Guide");
            CharacterProperties headerCharacters = header.BeginUpdateCharacters(header.Paragraphs[0].Range);
            headerCharacters.ForeColor = Color.FromArgb(0xBB, 0xBB, 0xBB);
            headerCharacters.FontSize = 10;
            header.EndUpdateCharacters(headerCharacters);
            ParagraphProperties headerParagraph = header.BeginUpdateParagraphs(header.Paragraphs[0].Range);
            headerParagraph.Alignment = ParagraphAlignment.Center;
            header.EndUpdateParagraphs(headerParagraph);
            firstSection.EndUpdateHeader(header);

            #endregion

            #region Footer

            SubDocument footer = firstSection.BeginUpdateFooter();
            footer.AppendText("Copyrights © AtemisCloud");
            CharacterProperties footerCharacters = footer.BeginUpdateCharacters(footer.Paragraphs[0].Range);
            footerCharacters.ForeColor = Color.FromArgb(0xBB, 0xBB, 0xBB);
            footerCharacters.FontSize = 10;
            footer.EndUpdateCharacters(footerCharacters);
            ParagraphProperties footerParagraph = footer.BeginUpdateParagraphs(footer.Paragraphs[0].Range);
            footerParagraph.Alignment = ParagraphAlignment.Center;
            footer.EndUpdateParagraphs(footerParagraph);
            // Page Number
            var pageNumberParagraph = footer.Paragraphs.Append();
            Field fld = footer.Fields.Create(pageNumberParagraph.Range.End, "PAGE \\*");
            footer.Fields.Update();
            footerParagraph = footer.BeginUpdateParagraphs(fld.ResultRange);
            footerParagraph.Alignment = ParagraphAlignment.Right;
            footer.EndUpdateParagraphs(footerParagraph);
            firstSection.EndUpdateFooter(footer);

            #endregion

            using (MemoryStream stream = new MemoryStream())
            {
                richServer.ExportToPdf(stream);
                HttpUtils.WriteFileToResponse(this.Page, stream, "AtemisCloudGuide", true, "pdf");
            }
        }
    }
}