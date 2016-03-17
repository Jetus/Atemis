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
        ServicePointManager.ServerCertificateValidationCallback = delegate { return true; };
        var service = new ExchangeService(ExchangeVersion.Exchange2010);

        service.UseDefaultCredentials = false;
        service.Credentials = new WebCredentials("ajaubert.sequinv", "Exchange.26!" /*, "hasolution"*/);
        service.TraceEnabled = true;
        service.TraceFlags = TraceFlags.EwsRequest | TraceFlags.EwsResponse;
        service.TraceListener = new TraceListener();
        //service.Url = new Uri("https://mailconfig.ovh.net/EWS/Exchange.asmx");
        service.AutodiscoverUrl("agathejaubert@sequoiasinvestment.fr", RedirectionUrlValidationCallback);

        // Bind the Inbox folder to the service object.
        Folder inbox = Folder.Bind(service, WellKnownFolderName.Inbox);

        //// The search filter to get unread email.
        //SearchFilter sf = new SearchFilter.SearchFilterCollection(LogicalOperator.And, new SearchFilter.IsEqualTo(EmailMessageSchema.IsRead, false));
        //ItemView view = new ItemView(1);

        //// Fire the query for the unread items.
        //// This method call results in a FindItem call to EWS.
        //FindItemsResults<Item> findResults = service.FindItems(WellKnownFolderName.Inbox, sf, view);

        //EmailMessage email = new EmailMessage(service);
        //email.ToRecipients.Add("agathejaubert@sequoiasinvestment.fr");
        //email.Subject = "HelloWorld";
        //email.Body = new MessageBody("This is the first email I've sent by using the EWS Managed API");
        //email.Send();
    }

    private static bool RedirectionUrlValidationCallback(string redirectionUrl)
    {
        //bool redirectionValidated = false;
        //if (redirectionUrl.Equals("https://mailconfig.ovh.net/autodiscover/autodiscover.xml"))
        //redirectionValidated = true;

        return true;// redirectionValidated;
    }
}