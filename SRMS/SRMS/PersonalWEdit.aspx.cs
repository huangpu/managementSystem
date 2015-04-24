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
    public partial class PersonalWEdit : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string id = Request.QueryString["id"];
            IProject prj = DataAccess.CreatePrjSubmit();
            ProjectSubmitBean psb = prj.getProject(id);

            Project_Name.Text = psb.PrjName;
            Project_PersonLiable.Text = psb.PrjPerson;
            Project_Institute.Text = psb.PrjInstitute;
            Project_Nature.Text = psb.PrjNature;
            Project_class.Text = psb.PrjClass;
            Project_MgDpart.Text = psb.PrjMgDpart;
            Project_Course.Text = psb.PrjCourse;
            Project_level.Text = psb.PrjLevel;
            Project_Source.Text = psb.PrjSource;
            Project_SecretGrade.Text = psb.PrjSecretGrade;
            Project_Team.Text = psb.PrjTeam;
            Project_StartTime.Text = psb.PrjStartTime;
            Project_PlanTime.Text = psb.PrjPlanTime;
            Project_ResultForm.Text = psb.PrjResultForm;
            Project_PlanMoney.Text = psb.PrjPlanMoney.ToString();
            Project_Content.Value = psb.PrjContent;
            Project_History.Value = psb.PrjHistory;
            Project_Innovate.Value = psb.PrjInnovate;
        }

        protected void submit_Click(object sender, EventArgs e)
        {
            string id = Request.QueryString["id"];
            IProject prj = DataAccess.CreatePrjSubmit();
            ProjectSubmitBean psb = prj.getProject(id);

            psb.PrjID = id;
            psb.PrjName = Project_Name.Text.ToString();
            psb.PrjPerson = Project_PersonLiable.Text.ToString();
            psb.PrjInstitute = Project_Institute.Text.ToString();
            psb.PrjNature = Project_Nature.Text.ToString();
            psb.PrjClass = Project_class.Text.ToString();
            psb.PrjMgDpart = Project_MgDpart.Text.ToString();
            psb.PrjCourse = Project_Course.Text.ToString();
            psb.PrjLevel = Project_level.Text.ToString();
            psb.PrjSource = Project_Source.Text.ToString();
            psb.PrjSecretGrade = Project_SecretGrade.Text.ToString();
            psb.PrjTeam = Project_Team.Text.ToString();
            psb.PrjStartTime = Project_StartTime.Text.ToString();
            psb.PrjPlanTime = Project_PlanTime.Text.ToString();
            psb.PrjResultForm = Project_ResultForm.Text.ToString();
            psb.PrjPlanMoney = Double.Parse(Project_PlanMoney.Text.ToString());
            psb.PrjContent = HttpContext.Current.Request.Form["Project_Content"];
            psb.PrjHistory = HttpContext.Current.Request.Form["Project_History"];
            psb.PrjInnovate = HttpContext.Current.Request.Form["Project_Innovate"];

            if (prj.updateProject(psb))
            {
                ScriptManager.RegisterStartupScript(this.UpdatePanel1, this.GetType(), "confim", "<script>alert('项目申报修改成功，请等待审核!');location.href='PersonalWEdit.aspx?id="+id+"';</script>", false);
            }
            else
            {
                ScriptManager.RegisterStartupScript(this.UpdatePanel1, this.GetType(), "confim", "<script>alert('项目申报修改失败!');location.href='PersonalWEdit.aspx?id=" + id + "';</script>", false);
            }

        }
    }
}