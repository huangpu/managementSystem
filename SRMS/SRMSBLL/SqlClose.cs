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
    public class SqlClose : IClose
    {
        private string sqlString;
        private SqlDataBase db;
        private DataSet ds;
        private DataRow dr;
        private bool flag = true;
        private ProjectEndBean peb = new ProjectEndBean();

        public SqlClose()
        {
            db = new SqlDataBase();
        }

        public ProjectEndBean getProjectEnd(string prjID)
        {
            sqlString = "select  tbl_ProjectSubmit.Project_Name, tbl_ProjectSubmit.Project_PersonLiable, tbl_ProjectSubmit.Project_StartTime, tbl_ProjectSubmit.Project_PlanTime, tbl_ProjectEnd.Project_Fruit, tbl_ProjectEnd.Project_Content, tbl_ProjectEnd.Project_PlanImplement,tbl_ProjectEnd.Project_PlanImplement,tbl_ProjectEnd.Project_innovation,tbl_ProjectEnd.Project_NextProblem from tbl_ProjectSubmit,tbl_ProjectEnd where tbl_ProjectSubmit.Project_ID='" + prjID + "'";
           // sqlString = "select  tbl_ProjectSubmit.Project_Name from tbl_ProjectSubmit,tbl_InterimReport where tbl_ProjectSubmit.Project_ID='" + prjID + "'";
             dr = db.GetDataRow(sqlString);
             if (dr != null)
             {

                 peb.PrjName = dr[0].ToString();
                 peb.IrPerson = dr[1].ToString();
                 peb.IrStartTime = dr[2].ToString();
                 peb.IrPlanTime = dr[3].ToString();
                 peb.PrjFruit = dr[4].ToString();
                 peb.PrjContent = dr[5].ToString();
                 peb.PrjPlanImplement = dr[6].ToString();
                 peb.PrjInnovation = dr[7].ToString();
                 peb.PrjNextProblem = dr[8].ToString();
             }
             else
             {
                 sqlString = "select  tbl_ProjectSubmit.Project_Name, tbl_ProjectSubmit.Project_PersonLiable, tbl_ProjectSubmit.Project_StartTime, tbl_ProjectSubmit.Project_PlanTime from tbl_ProjectSubmit where tbl_ProjectSubmit.Project_ID='" + prjID + "'";
                 dr = db.GetDataRow(sqlString);
                 peb.PrjName = dr[0].ToString();
                 peb.IrPerson = dr[1].ToString();
                 peb.IrStartTime = dr[2].ToString();
                 peb.IrPlanTime = dr[3].ToString();
             }
            return peb;

        }
        public bool isNull(string prjID)
        {
            sqlString = "select * from tbl_ProjectEnd where Project_ID='" + prjID + "'";
            ds = db.GetDataSet(sqlString);
            if (ds.Tables[0].Rows.Count > 0)
            {
                flag = false;
            }
            return flag;
        }
        public bool insertProjectEnd(ProjectEndBean ProjectEnd)
        {
            sqlString = "insert into tbl_ProjectEnd(Project_ID,Project_Name,Project_Fruit,Project_Content,Project_PlanImplement,Project_innovation,Project_NextProblem) values('" + ProjectEnd.PrjID + "','" + ProjectEnd.PrjName + "','" + ProjectEnd.PrjFruit + "','" + ProjectEnd.PrjContent + "','" + ProjectEnd.PrjPlanImplement +"','" + ProjectEnd.PrjInnovation + "','" + ProjectEnd.PrjNextProblem + "','"+ "')";
            if (db.ExecuteSQL(sqlString) != -1)
            {
                return true;
            }
            return false;
        }
        public bool updateProjectEnd(ProjectEndBean ProjectEnd)
        {
            sqlString = "update tbl_InterimReport set Project_Fruit='" + ProjectEnd.PrjFruit + "',Project_Content='" + ProjectEnd.PrjContent + "',Project_PlanImplement='" + ProjectEnd.PrjPlanImplement + "',Project_innovation='" + ProjectEnd.PrjInnovation + "',Project_innovation='" + ProjectEnd.PrjNextProblem + "' where Project_ID='" + ProjectEnd.PrjID + "'";

            if (db.ExecuteSQL(sqlString) != -1)
            {
                return true;
            }
            return false;
        }
    }
}
