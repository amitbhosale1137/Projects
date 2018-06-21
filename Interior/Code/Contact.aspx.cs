using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Data;

public partial class Contact : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ToString());
    protected void Page_Load(object sender, EventArgs e)
    {
        txt_Phone.Attributes.Add("OnKeypress", "return varifyNum();");
    }

    protected void btnSend_Click(object sender, EventArgs e)
    {
        if (txtName.Text == "")
        {
            DisplayClientError("Please enter Full Name", this);
            return;
            //MsgBox("Please enter Full Name");
        }
        if (txt_Phone.Text == "")
        {
            DisplayClientError("Please enter Phone Number", this);
            return;
        }
        if (txtEmail.Text == "")
        {
            DisplayClientError("Please enter Email Id", this);
            return;
        }
        if (txtSubject.Text == "")
        {
            DisplayClientError("Please enter Subject", this);
            return;
        }
        if (txtSubject.Text == "")
        {
            DisplayClientError("Please enter Subject", this);
            return;
        }
        if (txtMessage.Text == "")
        {
            DisplayClientError("Please enter Message", this);
            return;
        }

        Save(txtName.Text, txt_Phone.Text, txtEmail.Text, txtSubject.Text, txtMessage.Text);
        ClearControl();
    }

    private void ClearControl()
    {
        txtName.Text = "";
        txt_Phone.Text = "";
        txtEmail.Text = "";
        txtSubject.Text = "";
        txtMessage.Text = "";
    }

    private void Save(string Name, string Phone, string Email, string Subject, string Message)
    {
        SqlCommand cmd = new SqlCommand("SP_ContactInsert", con);
        cmd.CommandType = CommandType.StoredProcedure;
        cmd.Parameters.AddWithValue("FullName", Name);
        cmd.Parameters.AddWithValue("Phone_No", Phone);
        cmd.Parameters.AddWithValue("Email", Email);
        cmd.Parameters.AddWithValue("Subject", Subject);
        cmd.Parameters.AddWithValue("Message", Message);
        con.Open();
        int k = cmd.ExecuteNonQuery();
        if (k != 0)
        {
            DisplayClientError("Contact Detail Form data send", this);
        }
        con.Close();

    }


    public void DisplayClientError(string errorDesc, Page myPage)
    {
        string script = "alert('" + errorDesc + "');";
        ScriptManager.RegisterStartupScript(myPage, GetType(), "UserSecurity", script, true);
    }
}