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
        DataTable Pager(string tablename, string orderkey, string conditionStr, int pageIndex, int pageSize,
                     out int count);
    }
}
