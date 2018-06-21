using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace Timex.Shared
{
    interface ISession
    {
        string UserIdSS
        {
            get;
            set;
        }
        string UserNameSS
        {
            get;
            set;
        }
        void SetSessionParameters(string UserId, string UserName);
    }
}
