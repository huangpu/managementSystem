using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Reflection;
using System.Configuration;
using SRMSBLL.Interface;

namespace SRMSBLL
{
    public static class DataAccess
    {
        private static readonly string assemblyName = "SRMSBLL";
        private static readonly string db = "Sql";

        public static IUser Createuser()
        {
            string className = assemblyName + "." + db + "User";
            return (IUser)Assembly.Load(assemblyName).CreateInstance(className);
        }


        public static INews Createnews()
        {
            string className = assemblyName + "." + db + "News";
            return (INews)Assembly.Load(assemblyName).CreateInstance(className);
        }

        public static IProject CreatePrjSubmit()
        {
            string className = assemblyName + "." + db + "PrjSubmit";
            return (IProject)Assembly.Load(assemblyName).CreateInstance(className);
        }
    }
}
