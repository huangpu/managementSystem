using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace SRMSBLL
{
    class CreateID
    {
        private string newsID;
        private CurrentTime ct = new CurrentTime();
        public string getNewsID()
        {

            return newsID;
        }
        private string mend2(string number)
        {
            int temp = int.Parse(number)/10;
            if (temp == 0)
            {
                number = "0" + number;
            }
            return number;
        }
        private string mend3(string number)
        {
            int temp = int.Parse(number) / 10;
            if (temp == 0)
            {
                number = "00" + number;
            }
            else if (temp > 0 && temp <= 9)
            {
                number = "0" + number;
            }
            return number;
        }
    }
}
