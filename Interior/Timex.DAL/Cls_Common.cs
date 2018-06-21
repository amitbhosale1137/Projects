using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Timex.DAL
{
    public class Cls_Common
    {
        public void DisplayClientError(string errorDesc, Page myPage)
        {
            string script = "alert('" + errorDesc + "');";
            ScriptManager.RegisterStartupScript(myPage, GetType(), "UserSecurity", script, true);
        }
    }
}
