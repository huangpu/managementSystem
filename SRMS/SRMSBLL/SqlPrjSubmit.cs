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
        private ProjectSubmitBean ps = new ProjectSubmitBean();

        public SqlPrjSubmit()
        {
            db = new SqlDataBase();
        }
        public bool insertProject(ProjectSubmitBean projectSubmit)
        {
            sqlString = "insert into tbl_ProjectSubmit(Project_ID,Project_Name,Project_PersonLiable,Institute_ID,Project_Nature,Project_Status,Project_Source,Project_StartTime,Project_PlanTime,Project_ResultForm,Project_SecretGrade,Project_PlanMoney,Project_class,Project_Course,Project_level,Project_Team,Project_Content,Project_History,Project_Innovate,Project_MgDpart) values('" + projectSubmit.PrjID + "','" + projectSubmit.PrjName + "','" + projectSubmit.PrjPerson + "','" + projectSubmit.PrjInstitute + "','" + projectSubmit.PrjNature + "','" + projectSubmit.PrjStatus + "','" + projectSubmit.PrjSource + "','" + projectSubmit.PrjStartTime + "','" + projectSubmit.PrjPlanTime + "','" + projectSubmit.PrjResultForm + "','" + projectSubmit.PrjSecretGrade + "','" + projectSubmit.PrjPlanMoney + "','" + projectSubmit.PrjClass + "','" + projectSubmit.PrjCourse + "','" + projectSubmit.PrjLevel + "','" + projectSubmit.PrjTeam + "','" + projectSubmit.PrjContent + "','" + projectSubmit.PrjHistory + "','" + projectSubmit.PrjInnovate + "','"+ projectSubmit.PrjMgDpart+"')";
            if (db.ExecuteSQL(sqlString) != -1)
            {
                return true;
            }
            return false;
        }

        public bool updateProject(ProjectSubmitBean projectSubmit)
        {
            sqlString = "update tbl_ProjectSubmit set Project_Name='" + projectSubmit.PrjName + "',Project_PersonLiable='" + projectSubmit.PrjPerson + "',Institute_ID='" + projectSubmit.PrjInstitute + "',Project_Nature='" + projectSubmit.PrjNature + "',Project_Source='" + projectSubmit.PrjSource + "',Project_StartTime='" + projectSubmit.PrjStartTime + "',Project_PlanTime='" + projectSubmit.PrjPlanTime + "',Project_ResultForm='" + projectSubmit.PrjResultForm + "',Project_SecretGrade='" + projectSubmit.PrjSecretGrade + "',Project_PlanMoney=" + projectSubmit.PrjPlanMoney + ",Project_class='" + projectSubmit.PrjClass + "',Project_Course='" + projectSubmit.PrjCourse + "',Project_level='" + projectSubmit.PrjLevel + "',Project_Team='" + projectSubmit.PrjTeam + "',Project_Content='" + projectSubmit.PrjContent + "',Project_History='" + projectSubmit.PrjHistory + "',Project_Innovate='" + projectSubmit.PrjInnovate + "',Project_MgDpart='" + projectSubmit.PrjMgDpart + "' where Project_ID='" + projectSubmit.PrjID + "'";

            if (db.ExecuteSQL(sqlString) != -1)
            {
                return true;
            }
            return false;
        }

        public DataTable pager(string tablename, string strcondition, string orderkey, string strorder, int pageIndex, int pageSize,
                      out int count)
        {
            DataTable dt = new DataTable();
            dt = db.Pager(tablename, strcondition, orderkey, strorder, pageIndex, pageSize, out count);
            return dt;
        }
        public ProjectSubmitBean getProject(string projectID)
        {
            sqlString = "select * from tbl_ProjectSubmit where Project_ID='" + projectID + "'";
            ds = db.GetDataSet(sqlString);

            ps.PrjID = ds.Tables[0].Rows[0][0].ToString();
            ps.PrjName = ds.Tables[0].Rows[0][1].ToString();
            ps.PrjPerson = ds.Tables[0].Rows[0][2].ToString();
            ps.PrjInstitute = ds.Tables[0].Rows[0][3].ToString();
            ps.PrjNature = ds.Tables[0].Rows[0][4].ToString();
            ps.PrjStatus = ds.Tables[0].Rows[0][5].ToString();
            ps.PrjLicenseNo = ds.Tables[0].Rows[0][6].ToString();
            ps.PrjSource = ds.Tables[0].Rows[0][7].ToString();
            ps.PrjStartTime = ds.Tables[0].Rows[0][8].ToString();
            ps.PrjPlanTime = ds.Tables[0].Rows[0][9].ToString();
            ps.PrjResultForm = ds.Tables[0].Rows[0][10].ToString();
            ps.PrjSecretGrade = ds.Tables[0].Rows[0][11].ToString();
            ps.PrjPlanMoney = isDouble(ds.Tables[0].Rows[0][12].ToString());
            ps.PrjRatifyMoney = isDouble(ds.Tables[0].Rows[0][13].ToString());
            ps.PrjClass = ds.Tables[0].Rows[0][14].ToString();
            ps.PrjCourse = ds.Tables[0].Rows[0][15].ToString();
            ps.PrjLevel = ds.Tables[0].Rows[0][16].ToString();
            ps.PrjTeam = ds.Tables[0].Rows[0][17].ToString();
            ps.PrjContent = ds.Tables[0].Rows[0][18].ToString();
            ps.PrjHistory = ds.Tables[0].Rows[0][19].ToString();
            ps.PrjInnovate = ds.Tables[0].Rows[0][20].ToString();
            ps.PrjMgDpart = ds.Tables[0].Rows[0][21].ToString();

            return ps;
        }

        private double isDouble(string money)
        {
           
            if (money.Length != 0)
            {
                return Double.Parse(money.Trim());
            }
            return 0;
        }
    }
}
