﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Reflection;
using System.Configuration;

namespace SRMSBLL
{
    public  class DataAccess
    {
        private static readonly string assemblyName = "SRMSBLL";
        private static readonly string db = "Sql";

        public static IUser Createuser()
        {
            string className = assemblyName + "." + db + "User";
            return (IUser)Assembly.Load(assemblyName).CreateInstance(className);
        }
    }
}