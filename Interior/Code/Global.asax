<%@ Application Language="C#" %>
<%@ Import Namespace="System.Web.Routing" %>
<script runat="server">

    void Application_Start(object sender, EventArgs e)
    {
        RegisterRoutes(RouteTable.Routes);
        // Code that runs on application startup

    }

    void Application_End(object sender, EventArgs e)
    {
        //  Code that runs on application shutdown

    }

    void Application_Error(object sender, EventArgs e)
    {
        // Code that runs when an unhandled error occurs

    }

    void Session_Start(object sender, EventArgs e)
    {
        // Code that runs when a new session is started

    }

    void Session_End(object sender, EventArgs e)
    {
        // Code that runs when a session ends. 
        // Note: The Session_End event is raised only when the sessionstate mode
        // is set to InProc in the Web.config file. If session mode is set to StateServer 
        // or SQLServer, the event is not raised.

    }

    void Application_BeginRequest(object sender, EventArgs e)
    {
        String WebsiteURL = Request.Url.ToString();
        String[] SplitedURL = WebsiteURL.Split('/');
        String[] Temp = SplitedURL[SplitedURL.Length - 1].Split('.');

        // This is for aspx page
        if (!WebsiteURL.Contains(".aspx") && Temp.Length == 1)
        {
            if (!string.IsNullOrEmpty(Temp[0].Trim()))
                Context.RewritePath(Temp[0] + ".aspx");
        }

        /* // This is for HTML page
        if (!WebsiteURL.Contains(".html") && Temp.Length == 1)
        {
            if (!string.IsNullOrEmpty(Temp[0].Trim()))
                Context.RewritePath(Temp[0] + ".html");
        }
        // This is for HTM page
        if (!WebsiteURL.Contains(".htm") && Temp.Length == 1)
        {
            if (!string.IsNullOrEmpty(Temp[0].Trim()))
                Context.RewritePath(Temp[0] + ".htm");
        }*/
    }

    static void RegisterRoutes(RouteCollection routes)
    {
        routes.MapPageRoute("Home", "Home", "~/Default.aspx");
        routes.MapPageRoute("Project", "Project", "~/Projects.aspx");
        routes.MapPageRoute("Services", "Services", "~/Services.aspx");
        routes.MapPageRoute("Contact", "Contact", "~/Contact.aspx");
        routes.MapPageRoute("Project_Details", "Project_Details", "~/Project_Detail.aspx");
        routes.MapPageRoute("Service_Details", "Service_Details", "~/Service_Details.aspx");
        
    }

</script>
