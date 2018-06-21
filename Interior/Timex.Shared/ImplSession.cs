using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace Timex.Shared
{
    public class ImplSession: ISession
    {
        string Userid;
        string UserName;

        public string UserIdSS
        {
            get { return Userid; }
            set { Userid = value; }
        }

        public string UserNameSS
        {
            get { return UserName; }
            set { UserName = value; }
        }

        public void SetSessionParameters(string UserId, string UserName)
        {
            UserIdSS = UserId.ToString().Trim();
            UserNameSS = UserName.ToString().Trim();
        }
    }
}
