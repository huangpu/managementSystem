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
    class SqlPrjSubmit : IProject
    {
        private string sqlString;
        private SqlDataBase db;
        private DataSet ds;

        public SqlPrjSubmit()
        {
            db = new SqlDataBase();
        }
        public bool insertProject(ProjectSubmitBean projectSubmit)
        {
            sqlString = "insert into tbl_ProjectSubmit(Project_ID,Project_Name,Project_PersonLiable,Institute_ID,Project_Nature,Project_Status,Project_Source,Project_StartTime,Project_PlanTime,Project_ResultForm,Project_SecretGrade,Project_PlanMoney,Project_class,Project_Course,Project_level,Project_Team,Project_Content,Project_History,Project_Innovate,Project_MgDpart) Values('" + projectSubmit.PrjID + "','" + projectSubmit.PrjName + "','" + projectSubmit.PrjPerson + "','" + projectSubmit.PrjInstitute + "','" + projectSubmit.PrjNature + "','" + projectSubmit.PrjStatus + "','" + projectSubmit.PrjSource + "','" + projectSubmit.PrjStartTime + "','" + projectSubmit.PrjPlanTime + "','" + projectSubmit.PrjResultForm + "','" + projectSubmit.PrjSecretGrade + "','" + projectSubmit.PrjPlanMoney + "','" + projectSubmit.PrjClass + "','" + projectSubmit.PrjCourse + "','" + projectSubmit.PrjLevel + "','" + projectSubmit.PrjTeam + "','" + projectSubmit.PrjContent + "','" + projectSubmit.PrjHistory + "','" + projectSubmit.PrjInnovate +  projectSubmit.PrjMgDpart+"')";
            if (db.ExecuteSQL(sqlString) != -1)
            {
                return true;
            }
            return false;
        }
    }
}
