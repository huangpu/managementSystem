using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace SRMSBLL
{
    class ProjectEndBean
    {
        private string prjID;
        private string prjName;
        private string prjFruit;
        private string prjContent;
        private string prjPlanImplement;
        private string prjInnovation;
        private string prjNextProblem;
        private string prjEndOpinion;

        public string PrjID
        {
            get { return prjID; }
            set { prjID = value; }
        }

        public string PrjName
        {
            get { return prjName; }
            set { prjName = value; }
        }

        public string PrjFruit
        {
            get { return prjFruit; }
            set { prjFruit = value; }
        }

        public string PrjContent
        {
            get { return prjContent; }
            set { prjContent = value; }
        }

        public string PrjPlanImplement
        {
            get { return prjPlanImplement; }
            set { prjPlanImplement = value; }
        }

        public string PrjInnovation
        {
            get { return prjInnovation; }
            set { prjInnovation = value; }
        }

        public string PrjNextProblem
        {
            get { return prjNextProblem; }
            set { prjNextProblem = value; }
        }

        public string PrjEndOpinion
        {
            get { return prjEndOpinion; }
            set { prjEndOpinion = value; }
        }
    }
}
