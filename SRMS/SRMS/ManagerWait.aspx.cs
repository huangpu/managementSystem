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
    public partial class ManagerWait : System.Web.UI.Page
    {
        private IProject project = DataAccess.CreatePrjSubmit();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                GetPage("tbl_ProjectSubmit", "Project_Status='待审'");
            }
        }
        private void GetPage(string tableName, string conditions)
        {
            int count;
            Repeater1.DataSource = project.pager(tableName, conditions, "Project_ID", "desc", AspNetPager1.CurrentPageIndex, AspNetPager1.PageSize, out count);
            Repeater1.DataBind();
            AspNetPager1.RecordCount = count;  //这个也是必须的
        }

        protected void AspNetPager1_PageChanging(object src, Wuqi.Webdiyer.PageChangingEventArgs e)
        {
            AspNetPager1.CurrentPageIndex = e.NewPageIndex;   //设置当前的页码
            GetPage("tbl_ProjectSubmit", "Project_Status='待审'");  //重新分页
        }

        protected void SelectAll_Click(object sender, EventArgs e)
        {
            SelectButton selectAll = new SelectButton();
            selectAll.SelectAll(this.Repeater1, SelectAll, "CheckBox1");
        }

        protected void submit_Click(object sender, EventArgs e)
        {
            bool flag = false;
            foreach (RepeaterItem rep in this.Repeater1.Items)
            {
                CheckBox cb = rep.FindControl("CheckBox1") as CheckBox;
                if (cb.Checked)
                {
                    string id = ((Label)cb.FindControl("Project_ID")).Text;
                    if (project.updataStatus(id,"在研"))
                    {
                        flag = true;
                    }

                }

            }
            if (flag)
            {
                ScriptManager.RegisterStartupScript(this.UpdatePanel1, this.GetType(), "confim", "<script>alert('申报通过!');location.href='ManagerWait.aspx';</script>", false);
            }
            else
            {
                ScriptManager.RegisterStartupScript(this.UpdatePanel1, this.GetType(), "confim", "<script>alert('请勾选要通过的选项!');location.href='ManagerWait.aspx';</script>", false);
            }
        }

        protected void reset_Click(object sender, EventArgs e)
        {
            bool flag = false;
            foreach (RepeaterItem rep in this.Repeater1.Items)
            {               
                CheckBox cb = rep.FindControl("CheckBox1") as CheckBox;
                if (cb.Checked)
                {
                    string id = ((Label)cb.FindControl("Project_ID")).Text;
                    if (project.deleteProject(id))
                    {
                        flag = true;            
                    }
                    
                }
               
            }
            if (flag)
            {
                ScriptManager.RegisterStartupScript(this.UpdatePanel1, this.GetType(), "confim", "<script>alert('删除成功!');location.href='ManagerWait.aspx';</script>", false);
            }
            else
            {
                ScriptManager.RegisterStartupScript(this.UpdatePanel1, this.GetType(), "confim", "<script>alert('请勾选要删除的选项!');location.href='ManagerWait.aspx';</script>", false);
            }
            
        }

        protected void select_Click(object sender, EventArgs e)
        {
            if (prj.Text.ToString() != "")
            {
                string conditions = "Project_Status='待审' and Project_ID='" + prj.Text.ToString() + "'";
                GetPage("tbl_ProjectSubmit", conditions);
            }
            else
            {
                ScriptManager.RegisterStartupScript(this.UpdatePanel1, this.GetType(),
                   "error", "<script>alert('查询条件为空不能进行查询操作!');</script>", false);
            }
        }
        
    }
}