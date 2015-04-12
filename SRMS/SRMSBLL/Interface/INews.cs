using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Data;
using System.Data.SqlClient;

namespace SRMSBLL.Interface
{
    public interface INews
    {
        DataTable pager(string tablename, string strcondition, string orderkey, string strorder, int pageIndex, int pageSize,
                      out int count);
        Boolean insertNews(string newsID, string newsName, string time, string author, string newsContent);
    }
}
