﻿using System;
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

        public static IInterimReport CreateInterimRt()
        {
            string className = assemblyName + "." + db + "InterimRt";
            return (IInterimReport)Assembly.Load(assemblyName).CreateInstance(className);
        }

        public static IMoney CreateImoney()
        {
            string className = assemblyName + "." + db + "Money";
            return (IMoney)Assembly.Load(assemblyName).CreateInstance(className);
        }

        public static IClose CreateIClose()
        {
            string className = assemblyName + "." + db + "Close";
            return (IClose)Assembly.Load(assemblyName).CreateInstance(className);
        }

        public static IResult CreateIResult()
        {
            string className = assemblyName + "." + db + "Result";
            return (IResult)Assembly.Load(assemblyName).CreateInstance(className);
        }
    }
}
