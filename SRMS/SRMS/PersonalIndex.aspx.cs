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
    public partial class PersonalIndex : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            GetPage();
        }

       
        private void GetPage()
        {
            INews news = DataAccess.Createnews();
            int count ;
            Repeater1.DataSource = news.Pager("tbl_NewsBulletin", "News_ID Like '%'", "News_Time","desc", AspNetPager1.CurrentPageIndex, AspNetPager1.PageSize, out count);
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