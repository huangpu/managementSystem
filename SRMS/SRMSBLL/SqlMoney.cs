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
            string sum = "select Project_ID,sum(Money_Use) from tbl_UseMoney group by Project_ID having Project_ID='" + money .PrjID + "'";
            ds = db.GetDataSet(sum);
            double usemoney = 0;
            double moneyt = 0;
            if (ds.Tables[0].Rows.Count > 0)
            {
                usemoney = Double.Parse(ds.Tables[0].Rows[0][1].ToString());
            }

            string money_totality = "select Project_RatifyMoney from tbl_ProjectSubmit where Project_ID='" + money.PrjID + "'";
            ds = db.GetDataSet(money_totality);
            if (ds.Tables[0].Rows[0][0].ToString() != "")
            {
                //string s = ds.Tables[0].Rows[0][0].ToString();
                moneyt = Double.Parse(ds.Tables[0].Rows[0][0].ToString());
            }

            double usem = moneyt-usemoney;

            sqlString = "insert into tbl_UseMoney(Project_ID,Money_Totality,Money_Use,Money_surplus,Money_UseDetails,Money_CrUse,Money_Time) values('" + money.PrjID + "'," + moneyt + "," + usemoney + "," + usem + ",'" + money.MoneyDetails + "'," + money.MoneyCrUse + ",'" + money.MoneyTime + "')";
            if (db.ExecuteSQL(sqlString) != -1)
            {
                return true;
            }
            return false;
        }
        public UserMoneyBean getUserMoney(string prjID)
        {
            sqlString = "select tbl_ProjectSubmit.Project_ID,tbl_ProjectSubmit.Project_Name,tbl_UseMoney.Money_Totality,tbl_UseMoney.Money_Use,tbl_UseMoney.Money_surplus from tbl_ProjectSubmit,tbl_UseMoney where tbl_ProjectSubmit.Project_ID=tbl_UseMoney.Project_ID and tbl_UseMoney.Project_ID='" + prjID + "' order by Money_Use desc";
            ds = db.GetDataSet(sqlString);
            money.PrjID = ds.Tables[0].Rows[0][0].ToString();
            money.PrjName = ds.Tables[0].Rows[0][1].ToString();
            money.MoneyTot = isDouble( ds.Tables[0].Rows[0][2].ToString());
            money.MoneyUse = isDouble(ds.Tables[0].Rows[0][2].ToString());
            money.MoneySurplus = isDouble(ds.Tables[0].Rows[0][2].ToString());
            return money;
        }

        private double isDouble(string database)
        {
            double money = 0;
            if (database != "")
            {
                money = Double.Parse(database);
            }
            return money;
        }
    }
}
