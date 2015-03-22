using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using SRMSDAL;

namespace SRMSBLL
{
    class SqlUser : IUser
    {
        private SqlDataBase db;
        public SqlUser()
        {
            db = new SqlDataBase();
        }


        public bool userCheck(string userID, string userPassword)
        {
            string sqlString = "select * from tbl_Users where User_ID='"+ userID +"' and User_Password='" + userPassword + "'";
            if (db.GetDataRow(sqlString) != null)
            {
                return true;
            }
            else
            {
                return false;
            }
        }
    }
}
