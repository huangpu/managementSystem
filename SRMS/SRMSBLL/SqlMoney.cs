using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using SRMSBLL.Interface;
using System.Data;
using System.Data.SqlClient;
using SRMSDAL;

namespace SRMSBLL
{
    class SqlMoney : IMoney
    {
        private SqlDataBase db;
        private DataSet ds;
        private UserMoneyBean money;
        private string sqlString;
        public SqlMoney()
        {
            db = new SqlDataBase();
            money = new UserMoneyBean();
        }
        public DataTable pager(string tablename, string strcondition, string orderkey, string strorder, int pageIndex, int pageSize,
                     out int count)
        {
            DataTable dt = new DataTable();
            dt = db.Pager(tablename, strcondition, orderkey, strorder, pageIndex, pageSize, out count);
            return dt;
        }

        public bool insertMoney(UserMoneyBean money)
        {
            sqlString = "insert into tbl_ UseMoney(Project_ID,Money_Totality,Money_Use,Money_surplus,Money_UseDetails,Money_CrUse,Money_Time) values('" + money.PrjID + "','" + money.MoneyTot + "','"+money.MoneyUse+"','"+money.MoneySurplus+"','"+money.MoneyDetails+"','"+money.MoneyCrUse+"','"+money.MoneyTime+"')";
            if (db.ExecuteSQL(sqlString) != -1)
            {
                return true;
            }
            return false;
        }
    }
}
