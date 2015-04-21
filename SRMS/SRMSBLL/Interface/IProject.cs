using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace SRMSBLL.Interface
{
    public interface IProject
    {
        bool insertProject(ProjectSubmitBean projectSubmit);
    }
}
