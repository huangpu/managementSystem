using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

namespace SRMSDAL
{
    public  class SqlDataBase
    {
        //连接字符串字段
        private string connstring;
        //连接对象
        private SqlConnection conn;

        public string ConnString
        {
            get
            {
                return this.connstring;
            }
            set
            {
                this.connstring = value;
            }
        }
        public SqlConnection Conn
        {
            get
            {
                return this.conn;
            }
            set
            {
                this.conn = value;
            }

        }
        //获取配置文件中的连接数据库字符串
        public SqlDataBase()
        {
            this.ConnString = ConfigurationManager.ConnectionStrings["connectionString"].ConnectionString;
        }
        //打开数据库连接
        public void Open()
        {
            if (Conn == null)
            {
                Conn = new SqlConnection(ConnString);
            }
            if (Conn.State.Equals(ConnectionState.Closed))
            {
                Conn.ConnectionString = ConnString;
                Conn.Open();
            }
        }
        //关闭数据库连接
        public void Close()
        {
            if (Conn != null)
            {
                Conn.Close();
                Conn.Dispose();
            }
        }
        //用于执行SQL语句的方法，针对Update,Insert,Delete操作返回影响的行数，其他就返回-1
        public int ExecuteSQL(string sqlString)
        {
            int count = -1;
            this.Open();
            try
            {
                SqlCommand cmd = new SqlCommand(sqlString, Conn);
                count = cmd.ExecuteNonQuery();
            }
            catch
            {
                count = -1;
            }
            finally
            {
                this.Close();
            }
            return count;
        }
        //执行选择查询并得到数据集
        public  DataSet GetDataSet(string sqlString)
        {
            this.Open();
            SqlDataAdapter sda = new SqlDataAdapter(sqlString,Conn);
            DataSet ds = new DataSet();
            sda.Fill(ds);
            this.Close();
            return ds;
        }
        //根据指定SQL语句select获取记录集合中的第一行数据
        public DataRow GetDataRow(string sqlString)
        {
            DataSet ds = GetDataSet(sqlString);
            ds.CaseSensitive = false;
            if (ds.Tables[0].Rows.Count > 0)
            {
                return ds.Tables[0].Rows[0];
            }
            else
            {
                return null;
            }
        }

        public  DataTable Pager(string tablename, string strcondition, string orderkey, string strorder, int pageIndex, int pageSize,
                      out int count)
        {
            DataTable dt = new DataTable();
            //构造存储过程page的参数
            count = 0;
            SqlParameter[] paras = new SqlParameter[]{
           new SqlParameter("@table",tablename),
           new SqlParameter("@strcondition",strcondition),
           new SqlParameter("@orderkey",orderkey),
           new SqlParameter("@strorder",strorder),
           new SqlParameter("@pageIndex",pageIndex),
           new SqlParameter("@pageSize",pageSize),
      
           
           new SqlParameter("@totalcount",count),
        };
            paras[6].Direction = ParameterDirection.Output;   //指定count为输出类型

            this.Open();
            SqlCommand cmd = new SqlCommand("Seacher_News", Conn);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddRange(paras);

            SqlDataReader sdr;
            using (sdr = cmd.ExecuteReader(CommandBehavior.CloseConnection))
            {
                dt.Load(sdr);
            }
            count = Convert.ToInt32(paras[6].Value);

            return dt;
        }

        public DataTable Pager2(string tablename, string strGetFields, string orderkey, int strorder, int pageIndex, int pageSize,
                     out int count)
        {
            DataTable dt = new DataTable();
            //构造存储过程page的参数
            count = 0;
            SqlParameter[] paras = new SqlParameter[]{
           new SqlParameter("@tblName",tablename),
           new SqlParameter("@strGetFields",strGetFields),
           new SqlParameter("@fldName",orderkey),
           new SqlParameter("@OrderType",strorder),
           new SqlParameter("@pageIndex",pageIndex),
           new SqlParameter("@pageSize",pageSize),
      
           
           new SqlParameter("@doCount",count),
        };
            paras[5].Direction = ParameterDirection.Output;   //指定count为输出类型

            this.Open();
            SqlCommand cmd = new SqlCommand("Seacher_Money", Conn);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddRange(paras);

            SqlDataReader sdr;
            using (sdr = cmd.ExecuteReader(CommandBehavior.CloseConnection))
            {
                dt.Load(sdr);
            }
            count = Convert.ToInt32(paras[5].Value);

            return dt;
        }

        
    }
    
}
