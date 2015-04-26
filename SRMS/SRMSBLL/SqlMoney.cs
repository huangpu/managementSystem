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
    }
}
