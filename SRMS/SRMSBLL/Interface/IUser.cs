using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;


namespace SRMSBLL.Interface
{
     public interface IUser
    {
        //void insert(UserBean user);
         bool userCheck(string userID, string userPassword);
         bool checkUserName(string userID);
         bool checkNewPsw(string newPassword, string newPassword2);
         bool uodatePassword(string userID, string newPassword);
         string checkAuthority(string userID);
         UserBean getUser(String userID);
    }
}
