using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Data;

namespace SRMSBLL.Interface
{
    public interface IMoney
    {
        DataTable pager(string tablename, string strcondition, string orderkey, string strorder, int pageIndex, int pageSize,
                     out int count);


        
    }
}
