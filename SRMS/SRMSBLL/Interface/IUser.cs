using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;


namespace SRMSBLL.Interface
{
     public interface IUser
    {
        //void insert(UserBean user);
        bool userCheck(string userName,string userPassword);
        UserBean getUser(String userID);
    }
}
