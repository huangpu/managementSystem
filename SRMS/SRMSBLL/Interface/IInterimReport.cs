using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace SRMSBLL.Interface
{
    public interface IInterimReport
    {
        InterimReportBean getIR(string prjID);
        bool updateIR(InterimReportBean prjID);
        bool insertInterimReport(InterimReportBean InterimReport);
        bool isNull(string prjID);

    }
}
