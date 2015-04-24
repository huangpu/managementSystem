using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Data;

namespace SRMSBLL.Interface
{
    public interface IProject
    {
        bool insertProject(ProjectSubmitBean projectSubmit);
        DataTable pager(string tablename, string strcondition, string orderkey, string strorder, int pageIndex, int pageSize,
                      out int count);
        ProjectSubmitBean getProject(string projectID);
        bool updateProject(ProjectSubmitBean projectSubmit);

    }
}
