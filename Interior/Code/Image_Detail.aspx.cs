using System;
using System.Data;
using System.Configuration;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;
using System.Data.SqlClient;

public partial class Image_Detail : System.Web.UI.Page
{
    private int CurrentPage = 1;
    private int ItemsPerPage = 4;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (ViewState["CurrentPage"] != null)
        {
            this.CurrentPage = Convert.ToInt32(ViewState["CurrentPage"]);
        }
        if (!IsPostBack)
        {
            int TotalRows = this.BindList(1);
            this.Prepare_Pager(TotalRows);
        }
    }
    protected void Pager_Click(object sender, EventArgs e)
    {
        LinkButton lnkPager = (LinkButton)sender;
        int PageNo = 1;
        switch (lnkPager.CommandName)
        {
            case "Previous":
                PageNo = this.CurrentPage - 1;
                break;
            case "Next":
                PageNo = this.CurrentPage + 1;
                break;
        }
        int TotalRows = this.BindList(PageNo);
        int PageCount = this.CalculateTotalPages(TotalRows);
        ViewState["CurrentPage"] = PageNo;
        if (PageNo == 1)
        {
            lnkPrev.Enabled = false;
        }
        else
        {
            lnkPrev.Enabled = true;
        }
        if (PageNo == PageCount)
        {
            lnkNext.Enabled = false;
        }
        else
        {
            lnkNext.Enabled = true;
        }
    }

    private int BindList(int PageNo)
    {
        int TotalRows = 0;
        DataTable dt = new DataTable();
        String strConnString = System.Configuration.ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
        SqlConnection con = new SqlConnection(strConnString);
        SqlDataAdapter sda = new SqlDataAdapter();
        SqlCommand cmd = new SqlCommand("spx_Pager");
        cmd.CommandType = CommandType.StoredProcedure;
        cmd.Parameters.Add("@PageNo", SqlDbType.Int).Value = PageNo;
        cmd.Parameters.Add("@ItemsPerPage", SqlDbType.Int).Value = ItemsPerPage;
        cmd.Parameters.Add("@TotalRows", SqlDbType.Int).Direction = ParameterDirection.Output;
        cmd.Connection = con;
        try
        {
            con.Open();
            sda.SelectCommand = cmd;
            sda.Fill(dt);
            DataList1.DataSource = dt;
            DataList1.DataBind();
            TotalRows = Convert.ToInt32(cmd.Parameters["@TotalRows"].Value);
        }
        catch (Exception ex)
        {
            Response.Write(ex.Message);
        }
        finally
        {
            con.Close();
            sda.Dispose();
            con.Dispose();
        }
        return TotalRows;
    }

    private void Prepare_Pager(int TotalRows)
    {
        int intPageCount = this.CalculateTotalPages(TotalRows);
        if (intPageCount > 1 && this.CurrentPage < intPageCount)
        {
            this.lnkNext.Enabled = true;
        }
        if (this.CurrentPage != 1)
        {
            this.lnkPrev.Enabled = true;
        }
        else
        {
            this.lnkPrev.Enabled = false;
        }
    }

    private int CalculateTotalPages(int intTotalRows)
    {
        int intPageCount = 1;
        double dblPageCount = (double)(Convert.ToDecimal(intTotalRows) / Convert.ToDecimal(this.ItemsPerPage));
        intPageCount = Convert.ToInt32(Math.Ceiling(dblPageCount));
        return intPageCount;
    }
}