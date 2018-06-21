using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;
using System.Collections;
using System.Data.SqlClient;
using System.Data;
using System.Configuration;

public partial class Project_Details : System.Web.UI.Page
{
    string strConnString = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
    string s1;
    string path;
    SqlConnection cnn = new SqlConnection();
    SqlCommand com = new SqlCommand();
    SqlDataAdapter sqlda;
    DataTable dt;
    protected void Page_Load(object sender, EventArgs e)
    {
        
        if (Session["ProjectName"] != null)
        {
            if (!IsPostBack)
            {
                lblName.Text = Session["ProjectName"].ToString();
                Session["ProjectName"] = null;
                binddatalist();
            }
            
            
        }
        else
        {
            Response.Redirect("Projects");
        }
    }

    private void binddatalist()
    {
        SqlConnection con = new SqlConnection(strConnString);
        con.Open();
        sqlda = new SqlDataAdapter("SELECT * FROM SlideShowTable where id="+ Session["ProjectId"].ToString()+"", con);
        dt = new DataTable();
        sqlda.Fill(dt);
        sqlda.Dispose();
        dlImages.DataSource = dt;
        dlImages.DataBind();
        con.Close();
    }


}