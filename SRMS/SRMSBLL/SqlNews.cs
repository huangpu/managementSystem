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
    class SqlNews : INews
    {
        private SqlDataBase db;
        private DataSet ds;
        private NewsBean news;
        private string sqlString;
        public SqlNews()
        {
            db = new SqlDataBase();
            news = new NewsBean();
        }
        public DataTable pager(string tablename, string strcondition, string orderkey, string strorder, int pageIndex, int pageSize,
                      out int count)
        {
            DataTable dt = new DataTable();
            dt = db.Pager(tablename, strcondition, orderkey, strorder, pageIndex, pageSize, out count);
            return dt;
        }
        public Boolean insertNews(string newsID, string newsName, string time, string author, string newsContent)
        {
            sqlString = "insert into tbl_NewsBulletin Values('" + newsID + "','" + newsName + "','" + time + "','" + author + "','" + newsContent + "')";
            if (db.ExecuteSQL(sqlString) != -1)
            {
                return true;
            }
            return false;
        }
        public NewsBean getNews(string ID)
        {
            sqlString = "select * from tbl_NewsBulletin where News_ID='"+ID+"'";
            ds = db.GetDataSet(sqlString);
            news.NewsID = ds.Tables[0].Rows[0][0].ToString();
            news.NewsName = ds.Tables[0].Rows[0][1].ToString();
            news.NewsTime = ds.Tables[0].Rows[0][2].ToString();
            news.NewsAuthor = ds.Tables[0].Rows[0][3].ToString();
            news.NewsContent = ds.Tables[0].Rows[0][4].ToString();
            return news;
        }
    }
}
