using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.IO;

public partial class Admin_frmProjectCategory : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection("Data Source=PC-2;Initial Catalog=Interior;Integrated Security=True");
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            DisplayRecord1();
        }
    }

    protected void btnSave_Click(object sender, EventArgs e)
    {
        if (txtProjectCategory.Text.Trim() != null && txtProjectCategory.Text.Trim() != "")
        {

            SqlCommand cmd1 = new SqlCommand("test123", con);
            cmd1.CommandType = CommandType.StoredProcedure;

            cmd1.Parameters.AddWithValue("@Name", txtProjectCategory.Text.Trim());
            cmd1.Parameters.Add("@ID", SqlDbType.VarChar, 30);
            cmd1.Parameters["@ID"].Direction = ParameterDirection.Output;
            con.Open();
            cmd1.ExecuteNonQuery();
            con.Close();

            if (cmd1.Parameters["@ID"].Value.ToString() == "0")
            {
                //Query to insert images name and Description into database
                SqlCommand cmd = new SqlCommand("Insert into tbl_Prjt_Category(Category_Name,Created_Date) values(@Category_Name,@Created_Date)", con);
                //Passing parameters to query
                cmd.Parameters.AddWithValue("@Category_Name", txtProjectCategory.Text.Trim());
                cmd.Parameters.AddWithValue("@Created_Date", DateTime.Now.ToShortDateString());
                con.Open();
                cmd.ExecuteNonQuery();
                //Close dbconnection
                con.Close();

                DisplayRecord1();
                ClearControl();
            }
            else
            {
                lblMessges.Text = "Already data present";
            }



        }
        else
        {
            lblMessges.Text = "Enter Project Category";
        }
    }

    private void ClearControl()
    {
        txtProjectCategory.Text = "";
    }

    public void DisplayRecord1()
    {
        try
        {
            con.Open();
            SqlCommand cmd = new SqlCommand("select * from tbl_Prjt_Category order by PCID desc", con);
            cmd.CommandType = CommandType.Text;
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataSet ds = new DataSet();
            da.Fill(ds);
            grid1.DataSource = ds;
            grid1.DataBind();
        }
        catch
        {
            When_Emptydata(grid1);
        }

    }

    public void When_Emptydata(GridView grid1)
    {
        DataTable dt = new DataTable();
        grid1.DataSource = dt;
        grid1.DataBind();
    }

    protected void Button1_Click(object sender, EventArgs e)
    {

    }

    protected void btnAddNew_Click(object sender, EventArgs e)
    {

    }

    protected void drpPageCount_SelectedIndexChanged(object sender, EventArgs e)
    {
        //grid1.CurrentPageIndex = Convert.ToInt32(drpPageCount.SelectedItem.Value);
    }
    protected void LinkCommand(object sender, CommandEventArgs e)
    {
    }
}