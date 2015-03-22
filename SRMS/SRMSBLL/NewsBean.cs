using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace SRMSBLL
{
    class NewsBean
    {
        private string newsID;
        private string newsName;
        private string newsTime;
        private string newsAuthor;
        private string newsContent;

        public string NewsID
        {
            get { return newsID; }
            set { newsID = value; }
        }

        public string NewsName
        {
            get { return newsName; }
            set { newsName = value; }
        }

        public string NewsTime
        {
            get { return newsTime; }
            set { newsTime = value; }
        }

        public string NewsAuthor
        {
            get { return newsAuthor; }
            set { newsAuthor = value; }
        }

        public string NewsContent
        {
            get { return newsContent; }
            set { newsContent = value; }
        }
    }
}
