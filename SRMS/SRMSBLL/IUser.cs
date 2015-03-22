using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace SRMSBLL
{
    public interface IUser
    {
        //void insert(UserBean user);
        bool userCheck(string userName,string userPassword);
    }
}
