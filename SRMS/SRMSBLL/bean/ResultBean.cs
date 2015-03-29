using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace SRMSBLL
{
    class ResultBean
    {
        private string userId;
        private string rtBookNumber;
        private string rtBookNameC;
        private string rtBookNameEn;
        private string rtCoureID;
        private string rtSource;
        private string rtClass;
        private string rtPublishName;
        private string rtPublishLevel;
        private string rtPublishTime;
        private string rtPublishNumber;
        private string rtWordCount;
        private string rtProjectID;
        private string rtExamine;

        public string UserId
        {
            get { return userId; }
            set { userId = value; }
        }

        public string RtBookNumber
        {
            get { return rtBookNumber; }
            set { rtBookNumber = value; }
        }

        public string RtBookNameC
        {
            get { return rtBookNameC; }
            set { rtBookNameC = value; }
        }

        public string RtBookNameEn
        {
            get { return rtBookNameEn; }
            set { rtBookNameEn = value; }
        }

        public string RtCoureID
        {
            get { return rtCoureID; }
            set { rtCoureID = value; }
        }

        public string RtSource
        {
            get { return rtSource; }
            set { rtSource = value; }
        }

        public string RtClass
        {
            get { return rtClass; }
            set { rtClass = value; }
        }

        public string RtPublishName
        {
            get { return rtPublishName; }
            set { rtPublishName = value; }
        }

        public string RtPublishLevel
        {
            get { return rtPublishLevel; }
            set { rtPublishLevel = value; }
        }

        public string RtPublishTime
        {
            get { return rtPublishTime; }
            set { rtPublishTime = value; }
        }

        public string RtPublishNumber
        {
            get { return rtPublishNumber; }
            set { rtPublishNumber = value; }
        }

        public string RtWordCount
        {
            get { return rtWordCount; }
            set { rtWordCount = value; }
        }

        public string RtProjectID
        {
            get { return rtProjectID; }
            set { rtProjectID = value; }
        }

        public string RtExamine
        {
            get { return rtExamine; }
            set { rtExamine = value; }
        }
    }
}
