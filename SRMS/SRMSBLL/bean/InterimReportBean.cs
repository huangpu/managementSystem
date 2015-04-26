using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace SRMSBLL
{
    public class InterimReportBean
    {
        private string irID;
        private string irName;

        private string irPerson;
        private string irStartTime;
        private string irPlanTime;
        private string irPlan;
        private string irFruit;
        private string irQuestion;
        private string irAuditOpinion;

        public string IrID
        {
            get { return irID; }
            set { irID = value; }
        }

        public string IrName
        {
            get { return irName; }
            set { irName = value; }
        }

        public string IrPlan
        {
            get { return irPlan; }
            set { irPlan = value; }
        }

        public string IrFruit
        {
            get { return irFruit; }
            set { irFruit = value; }
        }

        public string IrQuestion
        {
            get { return irQuestion; }
            set { irQuestion = value; }
        }

        public string IrAuditOpinion
        {
            get { return irAuditOpinion; }
            set { irAuditOpinion = value; }
        }



        public string IrPerson
        {
            get { return irPerson; }
            set { irPerson = value; }
        }

        public string IrStartTime
        {
            get { return irStartTime; }
            set { irStartTime = value; }
        }

        public string IrPlanTime
        {
            get { return irPlanTime; }
            set { irPlanTime = value; }
        }
    }
}
