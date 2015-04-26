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
            if (!IsPostBack)
            {
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
        }

        protected void submit_Click(object sender, EventArgs e)
        {
            string id = Request.QueryString["id"];
            IProject prj = DataAccess.CreatePrjSubmit();
            ProjectSubmitBean ps = new ProjectSubmitBean();
            
            ps.PrjID = id;
            ps.PrjName = Project_Name.Text;
            ps.PrjPerson = Project_PersonLiable.Text.ToString();
            ps.PrjInstitute = Project_Institute.Text.ToString();
            ps.PrjNature = Project_Nature.Text.ToString();
            ps.PrjClass = Project_class.Text.ToString();
            ps.PrjMgDpart = Project_MgDpart.Text.ToString();
            ps.PrjCourse = Project_Course.Text.ToString();
            ps.PrjLevel = Project_level.Text.ToString();
            ps.PrjSource = Project_Source.Text.ToString();
            ps.PrjSecretGrade = Project_SecretGrade.Text.ToString();
            ps.PrjTeam = Project_Team.Text.ToString();
            ps.PrjStartTime = Project_StartTime.Text.ToString();
            ps.PrjPlanTime = Project_PlanTime.Text.ToString();
            ps.PrjResultForm = Project_ResultForm.Text.ToString();
            ps.PrjPlanMoney = Double.Parse(Project_PlanMoney.Text.ToString());
            ps.PrjContent = HttpContext.Current.Request.Form["Project_Content"];
            ps.PrjHistory = HttpContext.Current.Request.Form["Project_History"];
            ps.PrjInnovate = HttpContext.Current.Request.Form["Project_Innovate"];

            if (prj.updateProject(ps))
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