using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Microsoft.Exchange.WebServices.Data;
using System.Net;

public partial class _Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!Page.IsPostBack)
            DataInitialization();
    }

    private void DataInitialization()
    {
        var service = new ExchangeService(ExchangeVersion.Exchange2013);

        service.Credentials = new WebCredentials("ajaubert.sequinv", "Exchange.26!", "hasolution");
        service.TraceEnabled = true;
        service.TraceFlags = TraceFlags.All;
        //service.Url = new Uri("https://demo.atemiscloud.com/autodiscover/autodiscover");
        service.AutodiscoverUrl("agathejaubert@sequoiasinvestment.fr", RedirectionUrlValidationCallback);

        //EmailMessage email = new EmailMessage(service);
        //email.ToRecipients.Add("agathejaubert@sequoiasinvestment.fr");
        //email.Subject = "HelloWorld";
        //email.Body = new MessageBody("This is the first email I've sent by using the EWS Managed API");
        //email.Send();
    }

    private static bool RedirectionUrlValidationCallback(string redirectionUrl)
    {
        bool redirectionValidated = false;
        if (redirectionUrl.Equals("https://mailconfig.ovh.net/autodiscover/autodiscover.xml"))
            redirectionValidated = true;
 
        return redirectionValidated;
    }
}