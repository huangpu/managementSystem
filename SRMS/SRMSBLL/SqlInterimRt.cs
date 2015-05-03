using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using SRMSBLL.Interface;
using System.Data;
using System.Data.SqlClient;
using SRMSDAL;

namespace SRMSBLL
{
    public class SqlInterimRt : IInterimReport
    {
        private string sqlString;
        private SqlDataBase db;
        private DataSet ds;
        private DataRow dr;
        private bool flag = true;
        private InterimReportBean psr = new InterimReportBean();

        public SqlInterimRt()
        {
            db = new SqlDataBase();
        }

        public InterimReportBean getIR(string prjID)
        {
            sqlString = "select  tbl_ProjectSubmit.Project_Name, tbl_ProjectSubmit.Project_PersonLiable, tbl_ProjectSubmit.Project_StartTime, tbl_ProjectSubmit.Project_PlanTime, tbl_InterimReport.Interim_Plan, tbl_InterimReport.Interim_Fruit, tbl_InterimReport.Interim_Question from tbl_ProjectSubmit,tbl_InterimReport where tbl_ProjectSubmit.Project_ID='" + prjID + "'";
           // sqlString = "select  tbl_ProjectSubmit.Project_Name from tbl_ProjectSubmit,tbl_InterimReport where tbl_ProjectSubmit.Project_ID='" + prjID + "'";
            //ds = db.GetDataSet(sqlString);
            dr = db.GetDataRow(sqlString);
            if (dr != null)
            {
                psr.IrName = dr[0].ToString();
                psr.IrPerson = dr[1].ToString();
                psr.IrStartTime = dr[2].ToString();
                psr.IrPlanTime = dr[3].ToString();
                psr.IrPlan = dr[4].ToString();
                psr.IrFruit = dr[5].ToString();
                psr.IrQuestion = dr[6].ToString();
            }
            else
            {
                sqlString = "select  tbl_ProjectSubmit.Project_Name, tbl_ProjectSubmit.Project_PersonLiable, tbl_ProjectSubmit.Project_StartTime, tbl_ProjectSubmit.Project_PlanTime from tbl_ProjectSubmit where tbl_ProjectSubmit.Project_ID='" + prjID + "'";
                dr = db.GetDataRow(sqlString);
                psr.IrName = dr[0].ToString();
                psr.IrPerson = dr[1].ToString();
                psr.IrStartTime = dr[2].ToString();
                psr.IrPlanTime = dr[3].ToString();
            }
            return psr;

        }
        public bool isNull(string prjID)
        {
            sqlString = "select * from tbl_InterimReport where Project_ID='" + prjID + "'";
            ds = db.GetDataSet(sqlString);
            if (ds.Tables[0].Rows.Count > 0)
            {
                flag = false;
            }
            return flag;
        }
        public bool insertInterimReport(InterimReportBean InterimReport)
        {
            sqlString = "insert into tbl_InterimReport(Project_ID,Project_Name,Interim_Plan,Interim_Fruit,Interim_Question) values('" + InterimReport.IrID + "','" + InterimReport.IrName + "','" + InterimReport.IrPlan + "','" + InterimReport.IrFruit + "','" + InterimReport.IrQuestion + "')";
            if (db.ExecuteSQL(sqlString) != -1)
            {
                return true;
            }
            return false;
        }
        public bool updateIR(InterimReportBean irb)
        {
            sqlString = "update tbl_InterimReport set Interim_Plan='" + irb.IrPlan + "',Interim_Fruit='" + irb.IrFruit + "',Interim_Question='" + irb.IrQuestion + "' where Project_ID='" + irb.IrID + "'";

            if (db.ExecuteSQL(sqlString) != -1)
            {
                return true;
            }
            return false;
        }
    }
}
