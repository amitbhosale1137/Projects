using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Configuration;
using System.Data.SqlClient;
using Timex.DAL;

public partial class Admin_Default : System.Web.UI.Page
{
    Cls_User objUser = new Cls_User();
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnLogin_Click(object sender, EventArgs e)
    {
        if (txtusername.Text != "" && txtPassword.Text != "")
        {
            DataSet ds = objUser.Login_User(txtusername.Text, txtPassword.Text);

            if (ds.Tables[0].Rows.Count > 0)
            {
                Session["User_Session"] = ds.Tables[0].Rows[0]["Username"].ToString();
                Response.Redirect("frmCustomerEnquiry.aspx");

            }
            else
            {
                DisplayClientError("Invalid User Name or Password !", this);
            }

        }
        else
        {
            DisplayClientError("Please enter User Name & Password !", this);
        }
    }

    public void DisplayClientError(string errorDesc, Page myPage)
    {
        string script = "alert('" + errorDesc + "');";
        ScriptManager.RegisterStartupScript(myPage, GetType(), "UserSecurity", script, true);
    }
}