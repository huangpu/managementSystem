﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Data;

namespace SRMSBLL.Interface
{
    public interface IResult
    {
        DataTable pager(string tablename, string strcondition, string orderkey, string strorder, int pageIndex, int pageSize,
                     out int count);
        ResultBean getIR(string prjID);
        bool updateResult(ResultBean prjID);
        bool insertResult(ResultBean result);
        bool isNull(string prjID);
    }
}
