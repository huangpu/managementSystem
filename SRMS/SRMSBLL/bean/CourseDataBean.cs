using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace SRMSBLL
{
    class CourseDataBean
    {
        private string courseID;
        private string courseOne;
        private string courseTwo;

        public string CourseID
        {
            get { return courseID; }
            set { courseID = value; }
        }

        public string CourseOne
        {
            get { return courseOne; }
            set { courseOne = value; }
        }

        public string CourseTwo
        {
            get { return courseTwo; }
            set { courseTwo = value; }
        }
    }
}
