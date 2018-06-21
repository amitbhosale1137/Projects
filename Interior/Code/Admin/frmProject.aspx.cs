using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Script.Serialization;
using System.Data.SqlClient;
using System.Data;
using System.Configuration;
using Timex.Shared;
using Timex.DAL;

public partial class Admin_frmProject : System.Web.UI.Page
{ 
    Cls_Common common=new Cls_Common();
    Cls_Project Prjt = new Cls_Project();
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ToString());
    protected void Page_Load(object sender, EventArgs e)
    {
        try
        {
            txtProjectName.Focus();
            if (!IsPostBack)
            {
                FillGrid();
            }
        }

        catch
        {

        }

    }

    void FillGrid()
    {
        try
        {
            SqlCommand cmd = new SqlCommand("Proc_Project", con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("Action", "S");
            cmd.Parameters.AddWithValue("Project_Name", "");
            cmd.Parameters.AddWithValue("Is_Active", "");
            cmd.Parameters.AddWithValue("PID", "");
            cmd.Connection = con;
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataSet ds = new DataSet();
            da.Fill(ds);
            gvDepartments.DataSource = ds;
            gvDepartments.DataBind();
        }

        catch
        {
        }
    }

    void ClearControls()
    {
        try
        {
            txtProjectName.Text = "";
            chk_Active.Checked = false;
            hidProjectID.Value = "";
            btnSave.Visible = true;
            btnUpdate.Visible = false;
        }

        catch
        {
            throw;
        }
    }



    protected void btnSave_Click(object sender, EventArgs e)
    {
        try
        {
            if(txtProjectName.Text=="")
            {
                common.DisplayClientError("Please Enter Project Name", this);
                return;
            }

            //check_Project();
            string ActiveStatus;
            if (chk_Active.Checked == true)
                ActiveStatus = "0";
            else
                ActiveStatus = "1";
            Prjt.Project_Data("I",txtProjectName.Text, ActiveStatus,"");
            
            FillGrid();
            ClearControls();
            lblMessage.Text = "Saved Successfully.";
        }

        catch
        {
            throw;
        }

        finally
        {
            if (con.State == ConnectionState.Open)
                con.Close();
        }
    }

    protected void btnClear_Click(object sender, EventArgs e)
    {
        try
        {
            ClearControls();
        }
        catch
        {
        }

    }

    protected void btnEdit_Click(object sender, EventArgs e)
    {
        try
        {
            ClearControls();
            Button btn = sender as Button;
            GridViewRow grow = btn.NamingContainer as GridViewRow;
            hidProjectID.Value = (grow.FindControl("lblProjectID") as Label).Text;
            txtProjectName.Text = (grow.FindControl("lblProjectName") as Label).Text;
            CheckBox chkSelItem = (CheckBox)grow.FindControl("chkSelItem");

            if (chkSelItem != null && chkSelItem.Checked && !string.IsNullOrEmpty(chkSelItem.Text))
            {

                int PID = int.Parse(chkSelItem.Text);
            }

            btnSave.Visible = false;
            btnUpdate.Visible = true;
        }

        catch
        {

        }

     }

    protected void btnUpdate_Click(object sender, EventArgs e)
    {
        try
        {
            string PID = "";
            string ActiveStatus;
            if (chk_Active.Checked == true)
                ActiveStatus = "0";
            else
                ActiveStatus = "1";

            //ClearControls();
            Button btn = sender as Button;
            GridViewRow grow = btn.NamingContainer as GridViewRow;
            CheckBox chkSelItem = (CheckBox)grow.FindControl("chkSelItem");
            if (chkSelItem != null && chkSelItem.Checked && !string.IsNullOrEmpty(chkSelItem.Text))
            {

                PID = chkSelItem.Text;
            }
            Prjt.Project_Data("U",txtProjectName.Text, ActiveStatus, PID);
            
            FillGrid();
            ClearControls();
            lblMessage.Text = "Updated Successfully.";

        }

        catch
        {
            throw;
        }

        finally
        {
            if (con.State == ConnectionState.Open)
                con.Close();
        }

    }

    protected void btnDelete_Click(object sender, EventArgs e)
    {
        try
        {
            ClearControls();
            Button btn = sender as Button;
            GridViewRow grow = btn.NamingContainer as GridViewRow;

            Prjt.Project_Data("D", "", "", (grow.FindControl("lblProjectID") as Label).Text);
            
            FillGrid();
            lblMessage.Text = "Deleted Successfully.";
        }

        catch
        {
            throw;
        }

        finally
        {
            if (con.State == ConnectionState.Open)
                con.Close();
        }
    }
}