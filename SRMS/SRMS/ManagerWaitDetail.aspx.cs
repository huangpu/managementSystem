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
    public partial class ManagerWaitDetail : System.Web.UI.Page
    {
        
        private IProject prj = DataAccess.CreatePrjSubmit();
        
        protected void Page_Load(object sender, EventArgs e)
        {
            string id = Request.QueryString["id"];
            ProjectSubmitBean psb = prj.getProject(id);
            if (!IsPostBack)
            {
                Project_ID.Text = id;
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
                Project_Content.Text = psb.PrjContent;
                Project_History.Text = psb.PrjHistory;
                Project_Innovate.Text = psb.PrjInnovate;
            }

        }

        protected void submit_Click(object sender, EventArgs e)
        {
            string id = Request.QueryString["id"];
            if (prj.updataStatus(id, "在研"))
            {
                ScriptManager.RegisterStartupScript(this.UpdatePanel1, this.GetType(), "confim", "<script>alert('申报通过!');location.href='ManagerWait.aspx';</script>", false);
            }
            else
            {
                ScriptManager.RegisterStartupScript(this.UpdatePanel1, this.GetType(), "confim", "<script>alert('申报不通过!');location.href='ManagerWaitDetail.aspx';</script>", false);
            }
        }
    }
}