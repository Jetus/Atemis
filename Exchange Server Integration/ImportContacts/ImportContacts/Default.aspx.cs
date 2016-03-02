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
    private List<MailItem> InboxData
    {
        get { return Session["_InboxDataList"] as List<MailItem>; }
        set { Session["_InboxDataList"] = value; }
    }

    private ExchangeService EWService
    {
        get { return Session["_EWService"] as ExchangeService; }
        set { Session["_EWService"] = value; }
    }

    protected void Page_Load(object sender, EventArgs e)
    {
        if (!Page.IsPostBack)
        {
            ConnectService();
            //LoadInboxData();
            LoadContactsData();
            gridData.DataBind();
        }
    }

    private void ConnectService()
    {
        EWService = new ExchangeService(ExchangeVersion.Exchange2013);
        EWService.Credentials = new WebCredentials("lchapelle", "Lud0v1351C*", "Achat-solution");
        EWService.TraceEnabled = true;
        EWService.TraceFlags = TraceFlags.All;
        EWService.Url = new Uri("https://mail.achat-solution.fr/EWS/Exchange.asmx");
    }

    private void LoadInboxData()
    {


        FindItemsResults<Item> findResults = EWService.FindItems(WellKnownFolderName.Inbox, new ItemView(128));

        ServiceResponseCollection<GetItemResponse> items =
            EWService.BindToItems(findResults.Select(item => item.Id), new PropertySet(BasePropertySet.FirstClassProperties, EmailMessageSchema.From, EmailMessageSchema.ToRecipients));
        InboxData = items.Select(item =>
            {
                return new MailItem()
                {
                    From = ((Microsoft.Exchange.WebServices.Data.EmailAddress)item.Item[EmailMessageSchema.From]).Address,
                    Recipients = string.Join(", ", ((Microsoft.Exchange.WebServices.Data.EmailAddressCollection)item.Item[EmailMessageSchema.ToRecipients]).Select(recipient => recipient.Address).ToArray()),
                    Subject = item.Item.Subject,
                    Body = item.Item.Body.ToString(),
                };
            }).ToList();        
    }

    private void LoadContactsData()
    {
        // Get the number of items in the Contacts folder.
        ContactsFolder contactsfolder = ContactsFolder.Bind(EWService, WellKnownFolderName.Contacts);

        // Set the number of items to the number of items in the Contacts folder or 50, whichever is smaller.
        int numItems = contactsfolder.TotalCount < 500 ? contactsfolder.TotalCount : 500;

        // Instantiate the item view with the number of items to retrieve from the Contacts folder.
        ItemView view = new ItemView(numItems);

        // To keep the request smaller, request only the display name property.
        view.PropertySet = new PropertySet(BasePropertySet.IdOnly, ContactSchema.DisplayName);

        // Retrieve the items in the Contacts folder that have the properties that you selected.
        FindItemsResults<Item> contactItems = EWService.FindItems(WellKnownFolderName.Contacts, view);

        InboxData = contactItems.Where(x => x is Contact).Select(item =>
            new MailItem()
            {
                From = (item as Contact).DisplayName
            }).ToList();

        // Display the list of contacts. 
        //foreach (Item item in contactItems)
        //{
        //    if (item is Contact)
        //    {
        //        Contact contact = item as Contact;
        //        Console.WriteLine(contact.DisplayName);
        //    }
        //}
    }

    // Simplified mail item
    public class MailItem
    {
        public string From { get; set; }
        public string Recipients { get; set; }
        public string Subject { get; set; }
        public string Body { get; set; }
    }

    protected void gridData_BeforePerformDataSelect(object sender, EventArgs e)
    {
        gridData.DataSource = InboxData;
    }
}