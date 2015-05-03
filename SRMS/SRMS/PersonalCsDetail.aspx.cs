using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using SRMSBLL.Interface;
using SRMSBLL;

namespace SRMS
{
    public partial class PersonalCsDetail : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string id = Request.QueryString["id"];
            IClose close = DataAccess.CreateIClose();
            ProjectEndBean pe = close.getProjectEnd(id);
            if (!IsPostBack)
            {
                Project_ID.Text = id;
                Project_Name.Text = pe.PrjName;
                Project_PersonLiable.Text = pe.IrPerson;
                Project_StartTime.Text = pe.IrStartTime;
                Project_PlanTime.Text = pe.IrPlanTime;
            }
        }
        protected void submit_Click(object sender, EventArgs e)
        {
            string id = Request.QueryString["id"];
            IInterimReport prj = DataAccess.CreateInterimRt();
            InterimReportBean irt = new InterimReportBean();

//            irt.IrID = id;
//            irt.IrPlan = Interim_Plan.Value;
//            irt.IrFruit = Interim_Fruit.Value;
//            irt.IrQuestion = Interim_Question.Value;
//
//            if (prj.isNull(id))
//            {
//                if (prj.insertInterimReport(irt))
//                {
//                    ScriptManager.RegisterStartupScript(this.UpdatePanel1, this.GetType(), "confim", "<script>alert('项目中期报告提交成功，请等待审核!');location.href='PersonalInter.aspx?id=" + id + "';</script>", false);
//                }
//                else
//                {
//                    ScriptManager.RegisterStartupScript(this.UpdatePanel1, this.GetType(), "confim", "<script>alert('项目中期报告提交失败!');location.href='PersonalUnInter.aspx?id=" + id + "';</script>", false);
//                }
//            }
//            else
//            {
//                if (prj.updateIR(irt))
//                {
//                    ScriptManager.RegisterStartupScript(this.UpdatePanel1, this.GetType(), "confim", "<script>alert('项目中期报告修改成功，请等待审核!');location.href='PersonalUnInter.aspx?id=" + id + "';</script>", false);
//                }
//                else
//                {
//                    ScriptManager.RegisterStartupScript(this.UpdatePanel1, this.GetType(), "confim", "<script>alert('项目中期报告修改失败!');location.href='PersonalUnInter.aspx?id=" + id + "';</script>", false);
//                }
//            }
        }
    }
}