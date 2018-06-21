using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
using Timex.DAL;
using Timex.Shared;

public partial class Admin_frmCustomerEnquiry : System.Web.UI.Page
{
    Cls_Common common = new Cls_Common();
    SqlConnection con; 
    public Admin_frmCustomerEnquiry()
    {
        con = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ToString());
    }
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            DisplayRecord1();
        }

        //common.SetSessionParameters(Session["sUser_code"].ToString(), Session["G_EMPNAME"].ToString());
        common.SetSessionParameters("1", "admin");
    }
    public DataTable DisplayRecord()
    {
        SqlDataAdapter Adp = new SqlDataAdapter("select * from tbl_ContactDetail", con);
        DataTable Dt = new DataTable();
        Adp.Fill(Dt);
        grid1.DataSource = Dt;
        grid1.DataBind();
        return Dt;
    }

    public void DisplayRecord1()
    {
        con.Open();
        SqlCommand cmd = new SqlCommand("select * from tbl_ContactDetail order by cid desc", con);
        cmd.CommandType = CommandType.Text;
        SqlDataAdapter da = new SqlDataAdapter(cmd);
        DataSet ds = new DataSet();
        da.Fill(ds);
        grid1.DataSource = ds;
        grid1.DataBind();
    }

    protected void btnClearSearch_Click(object sender, EventArgs e)
    {
        txtSearchText.Text = "";
        drpSearchList.ClearSelection();
        DisplayRecord1();
    }

    protected void btnSearch_Click(object sender, EventArgs e)
    {
        if(drpSearchList.SelectedItem.Text=="--Select--" )
        {
            common.DisplayClientError("Plaese Select the Search Criteria", this);
            drpSearchList.Focus();
        }
        else 
        {
            if (txtSearchText.Text.Trim() == "")
            {
                common.DisplayClientError("Enter your requirement and click search", this);
                txtSearchText.Focus();
                return;
            }

            if (drpSearchList.SelectedItem.Text == "Customer Id")
            {
                try
                {
                    con.Open();
                    SqlCommand cmd = new SqlCommand("select * from tbl_ContactDetail where cid=" + txtSearchText.Text.Trim() + "", con);
                    cmd.CommandType = CommandType.Text;
                    SqlDataAdapter da = new SqlDataAdapter(cmd);
                    DataSet ds = new DataSet();
                    da.Fill(ds);
                    grid1.DataSource = ds;
                    grid1.DataBind();
                }
                catch
                {
                    common.When_Emptydata(grid1);
                }
                finally
                {
                    con.Close();
                }
                
            }
            else if (drpSearchList.SelectedItem.Text == "Name")
            {
                common.When_Emptydata(grid1);
            }


        }
    }

    
}