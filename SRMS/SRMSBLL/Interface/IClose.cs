using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace SRMSBLL.Interface
{
    public interface IClose
    {
        ProjectEndBean getProjectEnd(string prjID);
        bool updateProjectEnd(ProjectEndBean prjID);
        bool insertProjectEnd(ProjectEndBean InterimReport);
        bool isNull(string prjID);
    }
}
