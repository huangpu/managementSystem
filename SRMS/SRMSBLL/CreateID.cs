using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using SRMSDAL;
using System.Data;
using System.Data.SqlClient;

namespace SRMSBLL
{
    public class CreateID
    {
        private string newsID;
        private string sqlString;
        private SqlDataBase db;
        private DataSet ds;
        private string currentTime;
      
        public CreateID()
        {
            db = new SqlDataBase();
        }
        public string getNewsID()
        {
            string temp;
            sqlString = "select News_ID from tbl_NewsBulletin order by News_ID desc";
            DataRow dr = db.GetDataRow(sqlString);
            currentTime = CurrentTime.GetInstance().timeFormat("yyyyMMdd");
            if (dr != null)
            {
                temp = dr[0].ToString();
                newsID = parserID(temp);
            }
            else
            {
                newsID = currentTime + "001";
            }
            return newsID;
        }
        private string parserID(string temp)
        {
            string prefix = temp.Substring(0, 8);
            string postfix = parserPostfix(temp.Substring(8));
            if (currentTime.Equals(prefix))
            {
                temp = prefix + postfix;
            }
            else
            {
                temp = currentTime + "001";
            }
            return temp;
        }

        private string parserPostfix(string number)
        {
            int oldNumber = Convert.ToInt32(number) + 1;
            int flag = oldNumber / 10;

            if (flag == 0)
            {
                number = "00" + oldNumber;
            }
            else if (flag > 0 && flag <= 9)
            {
                number = "0" + oldNumber;
            }
            else
            {
                number = oldNumber.ToString();
            }
            return number;
        }
    }
}
