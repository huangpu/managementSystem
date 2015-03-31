﻿using System;
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
        public SqlNews()
        {
            db = new SqlDataBase();
        }
        public DataTable Pager(string tablename, string strcondition, string orderkey, string strorder, int pageIndex, int pageSize,
                      out int count)
        {
            DataTable dt = new DataTable();
            dt = db.Pager(tablename, strcondition, orderkey, strorder, pageIndex, pageSize, out count);
            return dt;
        }
    }
}
