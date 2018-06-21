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


namespace Timex.DAL
{
    public class Cls_Project
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ToString());

        public void Project_Data(string Action,string ProjectName, string ActiveStatus, string Prjt_Id)
        {
            SqlCommand cmd = new SqlCommand("Proc_Project", con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@Action", Action);
            cmd.Parameters.AddWithValue("@Project_Name", ProjectName);
            cmd.Parameters.AddWithValue("@Is_Active", ActiveStatus);
            cmd.Parameters.AddWithValue("@PID", Prjt_Id);
            cmd.Connection = con;
            con.Open();
            cmd.ExecuteNonQuery();
            con.Close();
        }
    }
}
