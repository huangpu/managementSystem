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

namespace SRMS
{
    public partial class PersonalUnderway : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            GetPage();
        }
        private void GetPage()
        {
            IProject project = DataAccess.CreatePrjSubmit();
            int count;
            Repeater1.DataSource = project.pager("tbl_ProjectSubmit", "Project_Status='在研'", "Project_ID", "desc", AspNetPager1.CurrentPageIndex, AspNetPager1.PageSize, out count);
            Repeater1.DataBind();
            AspNetPager1.RecordCount = count; 
        }

        protected void AspNetPager1_PageChanging(object src, Wuqi.Webdiyer.PageChangingEventArgs e)
        {
            //设置当前的页码
            AspNetPager1.CurrentPageIndex = e.NewPageIndex;
            //重新分页
            GetPage();  
        }
    }
}