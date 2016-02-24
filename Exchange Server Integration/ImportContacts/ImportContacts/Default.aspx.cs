using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Microsoft.Exchange.WebServices.Data;

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
        service.Credentials = new WebCredentials("user1@contoso.com", "password");
        service.TraceEnabled = true;
        service.TraceFlags = TraceFlags.All;
        service.Url = new Uri("https://demo.atemiscloud.com/autodiscover/autodiscover");
        service.AutodiscoverUrl("user1@contoso.com", RedirectionUrlValidationCallback);

        EmailMessage email = new EmailMessage(service);
        email.ToRecipients.Add("user1@contoso.com");
        email.Subject = "HelloWorld";
        email.Body = new MessageBody("This is the first email I've sent by using the EWS Managed API");
        email.Send();
    }

    private static bool RedirectionUrlValidationCallback(string redirectionUrl)
    {
        // The default for the validation callback is to reject the URL.
        bool result = false;

        Uri redirectionUri = new Uri(redirectionUrl);

        // Validate the contents of the redirection URL. In this simple validation
        // callback, the redirection URL is considered valid if it is using HTTPS
        // to encrypt the authentication credentials. 
        if (redirectionUri.Scheme == "https")
        {
            result = true;
        }
        return result;
    }
}