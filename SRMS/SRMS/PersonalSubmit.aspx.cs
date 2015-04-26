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
    public partial class PersonalSubmit : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void submit_Click(object sender, EventArgs e)
        {
            IProject project = DataAccess.CreatePrjSubmit();
            ProjectSubmitBean ps = new ProjectSubmitBean();
            CreateID ci = new CreateID();

            ps.PrjID = ci.getProjectID();
            ps.PrjName = Project_Name.Text.ToString();
            ps.PrjPerson = Project_PersonLiable.Text.ToString();
            ps.PrjInstitute = "11";
            ps.PrjNature = Project_Nature.Text.ToString();
            ps.PrjStatus = "在研";
            ps.PrjSource = Project_Source.Text.ToString();
            ps.PrjStartTime = Project_StartTime.Text.ToString();
            ps.PrjPlanTime = Project_PlanTime.Text.ToString();
            ps.PrjResultForm = Project_ResultForm.Text.ToString();
            ps.PrjSecretGrade = Project_SecretGrade.Text.ToString();
            ps.PrjPlanMoney = 1200.0;
            ps.PrjClass = Project_class.Text.ToString();
            ps.PrjCourse = Project_Course.Text.ToString();
            ps.PrjLevel = Project_level.Text.ToString();
            ps.PrjTeam = Project_Team.Text.ToString();
            ps.PrjContent = HttpContext.Current.Request.Form["Project_Content"];
            ps.PrjHistory = HttpContext.Current.Request.Form["Project_History"];
            ps.PrjInnovate = HttpContext.Current.Request.Form["Project_Innovate"];
            ps.PrjMgDpart = Project_MgDpart.Text.ToString();

            if (project.insertProject(ps))
            {
                ScriptManager.RegisterStartupScript(this.UpdatePanel1, this.GetType(), "confim", "<script>alert('项目申报成功，请等待审核!');location.href='PersonalSubmit.aspx';</script>", false);
            }
            else
            {
                ScriptManager.RegisterStartupScript(this.UpdatePanel1, this.GetType(), "confim", "<script>alert('项目申报失败!');location.href='PersonalSubmit.aspx';</script>", false);
            }
        }
    }
}