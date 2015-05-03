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
    public class SqlResult : IResult
    {
        private string sqlString;
        private SqlDataBase db;
        private DataSet ds;
        private DataRow dr;
        private bool flag = true;
        private ResultBean result = new ResultBean();

        public SqlResult()
        {
            db = new SqlDataBase();
        }

        public DataTable pager(string tablename, string strcondition, string orderkey, string strorder, int pageIndex, int pageSize,
                      out int count)
        {
            DataTable dt = new DataTable();
            dt = db.Pager(tablename, strcondition, orderkey, strorder, pageIndex, pageSize, out count);
            return dt;
        }
        public ResultBean getIR(string prjID)
        {
            sqlString = "select  tbl_ProjectSubmit.Project_Name, tbl_ProjectSubmit.Project_PersonLiable,tbl_ResultData.Result_BookNumber,tbl_ResultData.Result_BookNameC,tbl_ResultData.Result_BookNameEn,tbl_ResultData.Result_class,tbl_ResultData.Result_PublishName,tbl_ResultData.Result_PublishLevel,tbl_ResultData.Result_PublishTime,tbl_ResultData.Result_publishNumber, tbl_ResultData.Result_WordCount from tbl_ProjectSubmit,tbl_ResultData where tbl_ProjectSubmit.Project_ID='" + prjID + "'";
           
            dr = db.GetDataRow(sqlString);
            if (dr != null)
            {
                result.RtPrjName = dr[0].ToString();
                result.RtPeople = dr[1].ToString();
                result.RtBookNumber = dr[2].ToString();
                result.RtBookNameC = dr[3].ToString();
                result.RtBookNameEn = dr[4].ToString();
                result.RtClass = dr[5].ToString();
                result.RtPublishName = dr[6].ToString();
                result.RtPublishLevel = dr[7].ToString();
                result.RtPublishTime = dr[8].ToString();
                result.RtPublishNumber = dr[9].ToString();
                result.RtWordCount = dr[10].ToString();
            }
            else
            {
                sqlString = "select  tbl_ProjectSubmit.Project_Name, tbl_ProjectSubmit.Project_PersonLiable, tbl_ProjectSubmit.Project_StartTime, tbl_ProjectSubmit.Project_PlanTime from tbl_ProjectSubmit where tbl_ProjectSubmit.Project_ID='" + prjID + "'";
                dr = db.GetDataRow(sqlString);
                result.RtPrjName = dr[0].ToString();
                result.RtPeople = dr[1].ToString();
               
            }
            return result;

        }
        public bool isNull(string prjID)
        {
            sqlString = "select * from tbl_ResultData where Project_ID='" + prjID + "'";
            ds = db.GetDataSet(sqlString);
            if (ds.Tables[0].Rows.Count > 0)
            {
                flag = false;
            }
            return flag;
        }
        public bool insertResult(ResultBean result)
        {
            sqlString = "insert into tbl_ResultData(User_ID,Project_ID,Result_BookNumber,Result_BookNameC,Result_BookNameEn,Result_class,Result_PublishName,Result_PublishLevel,Result_PublishTime,Result_publishNumber,Result_WordCount) values('" + result.UserId + "','" + result.RtProjectID + "','" + result.RtBookNumber + "','" + result.RtBookNameC + "','" + result.RtBookNameEn +"','" + result.RtClass+ "','" + result.RtPublishName+"','" + result.RtPublishLevel+"','" + result.RtPublishTime+"','" + result.RtPublishNumber+"','" + result.RtWordCount+ "')";
            if (db.ExecuteSQL(sqlString) != -1)
            {
                return true;
            }
            return false;
        }
        public bool updateResult(ResultBean result)
        {
            sqlString = "update tbl_ResultData set Result_BookNumber='" + result.RtBookNumber + "',Result_BookNameC='" + result.RtBookNameC + "',Result_BookNameEn='" + result.RtBookNameEn + "',Result_class='" + result.RtClass + "',Result_PublishName='" + result.RtPublishName + "',Result_PublishLevel='" + result.RtPublishLevel + "',Result_PublishTime='" + result.RtPublishTime + "',Result_publishNumber='" + result.RtPublishNumber + "',Result_WordCount='" + result.RtWordCount + "' where Project_ID='" + result.RtProjectID + "'";

            if (db.ExecuteSQL(sqlString) != -1)
            {
                return true;
            }
            return false;
        }
    }
}
