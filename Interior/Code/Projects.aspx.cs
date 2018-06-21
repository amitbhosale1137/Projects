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

public partial class Projects : System.Web.UI.Page
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

        if (!IsPostBack)
        {
            binddatalist();
            bindDropDown();
        }
    }

    private void bindDropDown()
    {
        SqlConnection con = new SqlConnection(strConnString);
        con.Open();
        


        SqlCommand com = new SqlCommand("select * from tbl_Prjt_Category", con); // table name 
        SqlDataAdapter da = new SqlDataAdapter(com);
        DataSet ds = new DataSet();
        da.Fill(ds);  // fill dataset
        ddl_Filter.DataTextField = ds.Tables[0].Columns["Category_Name"].ToString(); // text field name of table dispalyed in dropdown
        ddl_Filter.DataValueField = ds.Tables[0].Columns["PCID"].ToString();             // to retrive specific  textfield name 
        ddl_Filter.DataSource = ds.Tables[0];      //assigning datasource to the dropdownlist
        ddl_Filter.DataBind();
    }

    private void binddatalist()
    {
        SqlConnection con = new SqlConnection(strConnString);
        con.Open();
        sqlda = new SqlDataAdapter("SELECT * FROM SlideShowTable ", con);
        dt = new DataTable();
        sqlda.Fill(dt);
        sqlda.Dispose();
        dlImages.DataSource = dt;
        dlImages.DataBind();
        con.Close();
    }

    

    protected void ddl_Filter_SelectedIndexChanged(object sender, EventArgs e)
    {

    }

    protected void test_Click(object sender, ImageClickEventArgs e)
    {
        
    }

    protected void Image1_Click(object sender, ImageClickEventArgs e)
    {
        //var button = sender as ImageButton;
        //var dataListItem = button.Parent as DataListItem;
        ////var hfield = dataListItem.FindControl("hfield") as HiddenField;
        //var hfield = Request.Form["hfield"].ToString();
        //Session["ProjectName"] = button.AlternateText;
        //Session["ProjectId"] = hfield;
        
        //Response.Redirect("Project_Details");


        ImageButton lnk = (ImageButton)sender;
        DataListItem row = (DataListItem)lnk.Parent.Parent;
        HiddenField hidfriendadd = (HiddenField)row.FindControl("hfield");
        Session["ProjectName"] = lnk.AlternateText;
        Session["ProjectId"] = hidfriendadd.Value;


        Response.Redirect("Project_Details");
    }
}