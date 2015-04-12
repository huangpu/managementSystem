﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using SRMSDAL;
using SRMSBLL.Interface;
using System.Data;
using System.Data.SqlClient;


namespace SRMSBLL
{
    class SqlUser : IUser
    {
        private SqlDataBase db;
        private string sqlString;
        private DataSet ds;
        private UserBean user;
        public SqlUser()
        {
            db = new SqlDataBase();
            user = new UserBean();
        }


        public bool userCheck(string userID, string userPassword)
        {
            sqlString = "select * from tbl_Users where User_ID='"+ userID +"' and User_Password='" + userPassword + "'";
            if (db.GetDataRow(sqlString) != null)
            {
                return true;
            }
            else
            {
                return false;
            }
        }
        public UserBean getUser(String userID)
        {
            sqlString = "select * from tbl_Users where User_ID='" + userID + "'";
            ds = db.GetDataSet(sqlString);

            user.UserID = ds.Tables[0].Rows[0][0].ToString();
            user.UserName = ds.Tables[0].Rows[0][1].ToString();
            user.UserSex = ds.Tables[0].Rows[0][4].ToString();
            user.UserBirth = ds.Tables[0].Rows[0][5].ToString();
            user.UserIdcard = ds.Tables[0].Rows[0][6].ToString();
            user.UserPolitics = ds.Tables[0].Rows[0][7].ToString();
            user.UserInstitute = ds.Tables[0].Rows[0][8].ToString();
            user.UserLastDegree = ds.Tables[0].Rows[0][9].ToString();
            user.UserTechnicalTitle = ds.Tables[0].Rows[0][10].ToString();
            user.UserCours = ds.Tables[0].Rows[0][11].ToString();
            user.UserSearch = ds.Tables[0].Rows[0][12].ToString();
            user.UserTel = ds.Tables[0].Rows[0][13].ToString();
            user.UserMail = ds.Tables[0].Rows[0][14].ToString();
            user.UserVitae = ds.Tables[0].Rows[0][15].ToString();
            return user;
        }

    }
}
