<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Guide.aspx.cs" Inherits="AtemisNET.UserControls.Marketing.WebSite.CMS.HelpWebSite.WebSite.WebSite" %>

<%@ Register Assembly="DevExpress.Web.ASPxHtmlEditor.v15.1, Version=15.1.8.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" Namespace="DevExpress.Web.ASPxHtmlEditor" TagPrefix="dx" %>
<%@ Register assembly="DevExpress.Web.v15.1, Version=15.1.8.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" namespace="DevExpress.Web" tagprefix="dx" %>

<%@ Register assembly="DevExpress.Web.ASPxTreeList.v15.1, Version=15.1.8.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" namespace="DevExpress.Web.ASPxTreeList" tagprefix="dx" %>

<%@ Register assembly="DevExpress.Web.ASPxSpellChecker.v15.1, Version=15.1.8.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" namespace="DevExpress.Web.ASPxSpellChecker" tagprefix="dx" %>
<%@ Register assembly="DevExpress.Web.ASPxRichEdit.v15.1, Version=15.1.8.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" namespace="DevExpress.Web.ASPxRichEdit" tagprefix="dx" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        /* Commons */
        body { background-color: #e1e8f0; font-size: 14px; text-align: center; margin: 10px; }
        .HeaderTable_Table { border-width: 0px; width: 1000px; height: 77px; background: url('/img/UIM/header.jpg') no-repeat; }
        .ContentTable_Table { border-width: 0px; width: 1000px; }
        .ContentTable_Categories_Td { width: 200px; text-align: left; vertical-align: top; }
        .ContentTable_VerticalSpliter_Td { width: 5px; }
        .ContentTable_Content_Td { font-size: 14px; }
		.FooterTable_CopyRight_Td {font-size: 20px; font-family: Lato,sans-serif;}
		h1 { font-family: Lato,sans-serif; font-size:20px; color: #003366; text-decoration:underline;width:700px;}
		h3 { font-family: Lato,sans-serif; font-size:16px; color: #003366; margin-bottom:10px;}
		td { font-size: 14px; font-family: Lato,sans-serif;}
		#FooterBaseTable { background-color:#003366; width: 1000px; height:100px; color:white; border-radius:5px; border:solid 1px #666666;}
		
    </style>
    <script type="text/javascript" language="javascript" src="http://code.jquery.com/jquery-1.9.1.js"></script>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <table id="headerBaseTable" cellpadding="0" cellspacing="0" width="100%">
            <tr>
                <td align="center">
                    <table class="HeaderTable_Table" cellpadding="0" cellspacing="0">
                        <tr>
                            <td align="right">
                                &nbsp;
                            </td>
                        </tr>
                    </table>
                </td>
            </tr>
        </table>
        <div style="height: 5px; width: 100%;">
        </div>
        <table id="ContentBaseTable" cellpadding="0" cellspacing="0" width="100%" height="100%">
            <tr>
                <td align="center">
                    <table class="ContentTable_Table" cellpadding="0" cellspacing="0" height="100%">
                        <tr>
                            <td class="ContentTable_Categories_Td" valign="top">                                
                                <dx:ASPxRoundPanel ID="dxRpCategories" runat="server" Width="200px" Height="100%" HeaderText="Categories">
                                    <HeaderTemplate>
                                        <span style="font-weight: bold;">Categories</span>
                                        <div style="float: right;">
                                            <dx:ASPxButton ID="btnExportToPDF" runat="server" onclick="btnExportToPDF_Click"
                                                Width="20px" Height="18px" ToolTip="Export to PDF">                    
                                                <Border BorderStyle="None" BorderWidth="0px" />
                                                <BorderLeft BorderWidth="0px"></BorderLeft>
                                                <FocusRectPaddings Padding="0px" />
                                                <Image Url="https://intranet.atemiscloud.com/img/pdf.png" Width="14px" Height="14px" />
                                            </dx:ASPxButton>
                                        </div>
                                    </HeaderTemplate>
									<PanelCollection>
										<dx:PanelContent ID="PanelContent2" runat="server">
											<asp:TreeView ID="tvw" runat="server" ImageSet="Arrows">
												<ParentNodeStyle Font-Bold="False" />
												<HoverNodeStyle Font-Underline="True" ForeColor="#5555DD" />
												<SelectedNodeStyle Font-Underline="True" ForeColor="#5555DD" HorizontalPadding="0px"
													VerticalPadding="0px" />
												<NodeStyle Font-Names="Lato,sans-serif" Font-Size="12pt" ForeColor="Black" HorizontalPadding="5px"
													NodeSpacing="0px" VerticalPadding="0px" />
											</asp:TreeView>
										</dx:PanelContent>
									</PanelCollection>
								</dx:ASPxRoundPanel>
                            </td>
                            <td class="ContentTable_VerticalSpliter_Td">&nbsp;</td>
                            <td class="ContentTable_Content_Td" valign="top">
                            	 <dx:ASPxCallbackPanel runat="server" ID="cpContent" ClientInstanceName="cpContent" HideContentOnCallback="False"
									OnCallback="cpContent_Callback">
									<PanelCollection>
										<dx:PanelContent>
											<dx:ASPxRoundPanel ID="dxRpContent" runat="server" HeaderText="Categories" Width="100%"
												HeaderStyle-HorizontalAlign="Left" HeaderStyle-Font-Bold="true" 
												 >
												<PanelCollection>
													<dx:PanelContent ID="PanelContent1" runat="server">
														<div style="text-align: left;">
															<asp:PlaceHolder ID="plhContentContent" runat="server"></asp:PlaceHolder>
														</div>
													</dx:PanelContent>
												</PanelCollection>
											</dx:ASPxRoundPanel>
										 </dx:PanelContent>
									</PanelCollection>
									<LoadingDivStyle BackColor="Gray" Opacity="20">
									</LoadingDivStyle>
								</dx:ASPxCallbackPanel>
                            </td>
                        </tr>
                    </table>
                </td>
            </tr>
        </table>
        <div style="height: 5px; width: 100%;">
        </div>
        <table id="FooterBaseTable" cellpadding="0" align="center" cellspacing="0" width="100%">
            
                        <tr>
                            <td class="FooterTable_CopyRight_Td">
                                Copyright AtemisCloud © 2015
                            </td>
                        </tr>
                   
        </table>
    </div>

    <script type="text/javascript" language="javascript">
        var treeViewName = "<%= tvw.ClientID %>";
        var treeViewMap = $.parseJSON('<%= GetTreeViewMap() %>');
        var treeViewNodes;

        $(function () {
            InitTreeViewNodes();
        });

        function InitTreeViewNodes()
        {
            treeViewNodes = $('a[id^="' + treeViewName + 't"]');
            treeViewNodes.each(function () {
                var item = $(this);
                var itemIndex = item.attr('id').substr(treeViewName.length + 1);
                var cp_id = item.attr('Title');
                item.attr('itemindex', itemIndex);
                item.attr('cp_id', cp_id);
                item.removeAttr('title');
                item.attr('href', 'javascript:GoToPage(' + cp_id + ',' + itemIndex + ')');
            });
        }

        function GetItemIndexByCpId(cp_id)
        {
            var item = $(treeViewNodes).filter('[cp_id="' + cp_id + '"]');
            if (item.length == 1)
                return $(item[0]).attr("itemindex");
            return -1;
        }

        function GetItemCpIdByIndex(itemIndex)
        {
            var item = $(treeViewNodes).filter('[itemindex="' + itemIndex + '"]');
            if (item.length == 1)
                return $(item[0]).attr("cp_id");
            return -1;
        }

        function GoToPage(cp_id, itemIndex) {
            if (!itemIndex)
            {
                itemIndex = GetItemIndexByCpId(cp_id);
                TreeViewExpandToRoot(itemIndex);
            }
            else
            {
                var itemElement = document.getElementById(treeViewName + 'n' + itemIndex);
                var itemElementNodes = document.getElementById(treeViewName + 'n' + itemIndex + 'Nodes');
                if (itemElement && itemElementNodes)
                    TreeView_ToggleNode(window[treeViewName + "_Data"], itemIndex, itemElement, ' ', itemElementNodes);
            }
            cpContent.PerformCallback(cp_id);
        }

        function TreeViewExpandToRoot(itemIndex)
        {
            var item = $(treeViewNodes).filter('[itemindex="' + itemIndex + '"]');
            var cp_id = GetItemCpIdByIndex(itemIndex);
            var continueExpand = true;
            while (continueExpand)
            {
                var parentNodes = jQuery.grep(treeViewMap, function(map_item, i) {
                    return (map_item.cp_id == cp_id);
                });
                continueExpand = parentNodes.length > 0 && parentNodes[0].cp_parentid != -1;
                if (continueExpand)
                {
                    cp_id = parentNodes[0].cp_parentid;
                    itemIndex = GetItemIndexByCpId(cp_id);
                    var itemElement = document.getElementById(treeViewName + 'n' + itemIndex);
                    var itemElementNodes = document.getElementById(treeViewName + 'n' + itemIndex + 'Nodes');
                    if (itemElement && itemElementNodes && !($(itemElementNodes).is(':visible')))
                        TreeView_ToggleNode(window[treeViewName + "_Data"], itemIndex, itemElement, ' ', itemElementNodes);
                }
            }
        }
	</script>                     
              
    </form>
</body>
</html>



