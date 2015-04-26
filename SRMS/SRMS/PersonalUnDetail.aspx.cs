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
    public partial class PersonalUnDetail : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string id = Request.QueryString["id"];
            IProject prj = DataAccess.CreatePrjSubmit();
            ProjectSubmitBean psb = prj.getProject(id);
            if (!IsPostBack)
            {
                Project_ID.Text = id;
                Project_Name.Text = psb.PrjName;
                Project_PersonLiable.Text = psb.PrjPerson;
                Project_Institute.Text = psb.PrjInstitute;
                Project_Nature.Text = psb.PrjNature;               
                Project_MgDpart.Text = psb.PrjMgDpart;
                Project_level.Text = psb.PrjLevel;
                Project_Source.Text = psb.PrjSource;
                Project_Status.Text = psb.PrjStatus;
                Project_Team.Text = psb.PrjTeam;
                Project_StartTime.Text = psb.PrjStartTime;
                Project_PlanTime.Text = psb.PrjPlanTime;
                Project_ResultForm.Text = psb.PrjResultForm;
                Project_PlanMoney.Text = psb.PrjPlanMoney.ToString();
                Project_RatifyMoney.Text = psb.PrjRatifyMoney.ToString();
                Project_Content.Text = psb.PrjContent;
                Project_History.Text = psb.PrjHistory;
                Project_Innovate.Text = psb.PrjInnovate;
            }
        }
    }
}