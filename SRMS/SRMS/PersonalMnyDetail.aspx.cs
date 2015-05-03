using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

using System.Threading;
using SRMSBLL.Interface;
using SRMSBLL;
using Wuqi.Webdiyer;

namespace SRMS
{
    public partial class PersonalMoney : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string id = Request.QueryString["id"];
            IMoney money = DataAccess.CreateImoney();
            UserMoneyBean  userMoney = money.getUserMoney(id);
            projectID.Text = userMoney.PrjID;
            projectName.Text = userMoney.PrjName;
            Money_Totality.Text = userMoney.MoneyTot.ToString();
            Money_Use.Text = userMoney.MoneyUse.ToString();
            Money_surplus.Text = userMoney.MoneySurplus.ToString();
            GetPage();
        }
        private void GetPage()
        {
            string id = Request.QueryString["id"];
            IMoney money = DataAccess.CreateImoney();
            int count;
            Repeater1.DataSource = money.pager("tbl_UseMoney", "Project_ID='" + id + "'", "Money_Time", "desc", AspNetPager1.CurrentPageIndex, AspNetPager1.PageSize, out count);
            Repeater1.DataBind();
            AspNetPager1.RecordCount = count;  //这个也是必须的
        }

        protected void AspNetPager1_PageChanging(object src, Wuqi.Webdiyer.PageChangingEventArgs e)
        {
            AspNetPager1.CurrentPageIndex = e.NewPageIndex;   //设置当前的页码
            GetPage();  //重新分页
        }
    }
}