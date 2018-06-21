using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Admin_AdminMasterPage : System.Web.UI.MasterPage
{
    protected void Page_Load(object sender, EventArgs e)
    {
        //if (!IsPostBack)
        //{
        //    if (Session["User_Session"] != null)
        //    {
        //        if (Session["User_Session"] != null)
        //        {
        //            lblName.InnerText = "Welcome,\n" + Session["User_Session"].ToString();
        //        }
        //    }
        //}
    }
    protected void btnlogout_Click(object sender, EventArgs e)
    {
        Session.Abandon();
        Response.Redirect("Default.aspx");


    }
    protected void Page_Init()
    {
        //if (Session["User_Session"] != null)
        //{

        //}
        //else
        //{
        //    Response.Redirect("Default.aspx");
        //}
    }
}
