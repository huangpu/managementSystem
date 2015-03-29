using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace SRMSBLL
{
    class InstituteDataBean
    {
        private string instituteID;
        private string instituteName;
        private string instituteDean;

        public string InstituteID
        {
            get { return instituteID; }
            set { instituteID = value; }
        }

        public string InstituteName
        {
            get { return instituteName; }
            set { instituteName = value; }
        }

        public string InstituteDean
        {
            get { return instituteDean; }
            set { instituteDean = value; }
        }
    }
}
