using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace SRMSBLL
{
    class UserMoneyBean
    {
        private string prjID;
        private double moneyTot;
        private double moneyUse;
        private double moneySurplus;
        private string moneyDetails;
        private double moneyCrUse;
        private string moneyTime;

        public string PrjID
        {
            get { return prjID; }
            set { prjID = value; }
        }

        public double MoneyTot
        {
            get { return moneyTot; }
            set { moneyTot = value; }
        }

        public double MoneyUse
        {
            get { return moneyUse; }
            set { moneyUse = value; }
        }

        public double MoneySurplus
        {
            get { return moneySurplus; }
            set { moneySurplus = value; }
        }

        public string MoneyDetails
        {
            get { return moneyDetails; }
            set { moneyDetails = value; }
        }

        public string MoneyTime
        {
            get { return moneyTime; }
            set { moneyTime = value; }
        }

        public double MoneyCrUse
        {
            get { return moneyCrUse; }
            set { moneyCrUse = value; }
        }
    }
}
