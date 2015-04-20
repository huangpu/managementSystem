using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Data;

namespace SRMSBLL
{
    public class CurrentTime
    {
        private DateTime dt = DateTime.Now; 
        private string year;
        private string month;
        private string date;
        private string hour;
        private string minute;
        private string secord;
        private static CurrentTime ct = null;

        private CurrentTime()
        {
        }
        public static CurrentTime GetInstance()
        {
            if (ct == null)
            {
                ct = new CurrentTime();
            }
            return ct;
        }
        
        public string timeFormat(string format)
        {
            string temp = null;
            temp = dt.ToString(format);
            return temp;
        }
        public string Year
        {
            get 
            {
                year = dt.Year.ToString();
                return year; 
            }
        }

        public string Month
        {
            get 
            {
                month = dt.Month.ToString();
                return month; 
            }
        }

        public string Date
        {
            get 
            {
                date = dt.Date.ToString();
                return date; 
            }
        }

        public string Hour
        {
            get 
            {
                hour = dt.Hour.ToString();
                return hour; 
            }
        }

        public string Minute
        {
            get 
            {
                minute = dt.Minute.ToString();
                return minute; 
            }
        }

        public string Secord
        {
            get 
            {
                secord = dt.Second.ToString();
                return secord; 
            }
        }
    }
}
