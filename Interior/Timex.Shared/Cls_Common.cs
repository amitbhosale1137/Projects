using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;


namespace Timex.Shared
{
    public class Cls_Common : ImplSession
    {
        public void DisplayClientError(string errorDesc, Page myPage)
        {
            string script = "alert('" + errorDesc + "');";
            ScriptManager.RegisterStartupScript(myPage, GetType(), "UserSecurity", script, true);
        }

        public void When_Emptydata(GridView grid1)
        {
            DataTable dt = new DataTable();
            grid1.DataSource = dt;
            grid1.DataBind();
        }
    }
}
